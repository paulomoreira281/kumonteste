"""
GeraFicha — API de Questões
GET    /api/questions           → lista com filtros
POST   /api/questions           → cria questão
GET    /api/questions/{id}      → busca por ID
PUT    /api/questions/{id}      → atualiza questão
DELETE /api/questions/{id}      → remove questão
POST   /api/questions/import    → importação em lote (CSV/JSON)
GET    /api/questions/export    → exporta banco completo
"""
import csv
import io
import json
import logging
from typing import Any, Literal, Optional
from uuid import UUID

from fastapi import APIRouter, HTTPException, Query, UploadFile, File
from fastapi.responses import StreamingResponse
from pydantic import BaseModel, Field

from config import get_settings

logger = logging.getLogger("geraficha.questions")
router = APIRouter()
settings = get_settings()

# ── Tipos ────────────────────────────────────────────────────────────────────

QuestionType = Literal["MC", "CL", "RF", "VF", "DS", "IT", "PG", "CT", "AS", "IE"]
SerieType = Literal["A", "B", "R"]
ModuloType = Literal[
    "acentuacao",
    "ortografia",
    "classes",
    "sintaxe",
    "interpretacao",
]


# ── Schemas ──────────────────────────────────────────────────────────────────

class QuestaoBase(BaseModel):
    modulo: ModuloType
    nivel: int = Field(..., ge=1, le=120)
    serie: SerieType
    block: int = Field(..., ge=1, le=4, description="Bloco da ficha (1=Prepare-se, 2=Lição, 3=Guiado, 4=Prática)")
    type: QuestionType
    content: dict[str, Any] = Field(
        ...,
        description="Conteúdo JSONB da questão — estrutura varia por tipo",
        examples=[
            {"enunciado": "Separe as sílabas: café", "resposta": "ca-FÉ"},
            {"afirmacao": "A sílaba tônica de médico é mé.", "verdadeiro": True},
        ],
    )
    correct_answer: str = Field(..., description="Resposta correta em texto plano")
    bncc_skill: str = Field(..., description="Ex.: EF04LP01", max_length=20)
    difficulty: int = Field(1, ge=1, le=3, description="1=fácil, 2=médio, 3=difícil")
    guided: bool = Field(False, description="True = exercício guiado (Bloco 3)")
    image_id: Optional[UUID] = Field(None, description="FK para tabela images (tipo IE)")


class QuestaoCreate(QuestaoBase):
    pass


class QuestaoUpdate(BaseModel):
    """Todos os campos opcionais para PATCH parcial."""
    modulo: Optional[ModuloType] = None
    nivel: Optional[int] = Field(None, ge=1, le=120)
    serie: Optional[SerieType] = None
    block: Optional[int] = Field(None, ge=1, le=4)
    type: Optional[QuestionType] = None
    content: Optional[dict[str, Any]] = None
    correct_answer: Optional[str] = None
    bncc_skill: Optional[str] = Field(None, max_length=20)
    difficulty: Optional[int] = Field(None, ge=1, le=3)
    guided: Optional[bool] = None
    image_id: Optional[UUID] = None


class QuestaoResponse(QuestaoBase):
    id: str
    created_at: str
    updated_at: Optional[str] = None

    class Config:
        from_attributes = True


class ImportResult(BaseModel):
    total: int
    criadas: int
    erros: list[dict[str, Any]]


# ── Helper Supabase ──────────────────────────────────────────────────────────

def _get_supabase():
    try:
        from supabase import create_client
        return create_client(settings.supabase_url, settings.supabase_service_role_key)
    except Exception as exc:
        logger.error("Erro ao conectar ao Supabase: %s", exc)
        raise HTTPException(status_code=503, detail="Serviço de banco de dados indisponível")


def _row_to_response(row: dict) -> QuestaoResponse:
    return QuestaoResponse(
        id=str(row["id"]),
        modulo=row["module"],
        nivel=row["level"],
        serie=row["series"],
        block=row["block"],
        type=row["type"],
        content=row["content"] if isinstance(row["content"], dict) else json.loads(row["content"]),
        correct_answer=row["correct_answer"],
        bncc_skill=row["bncc_skill"],
        difficulty=row.get("difficulty", 1),
        guided=row.get("guided", False),
        image_id=row.get("image_id"),
        created_at=str(row["created_at"]),
        updated_at=str(row["updated_at"]) if row.get("updated_at") else None,
    )


# ── Endpoints ────────────────────────────────────────────────────────────────

@router.get("/", response_model=list[QuestaoResponse])
async def listar_questoes(
    modulo: Optional[ModuloType] = Query(None),
    nivel: Optional[int] = Query(None, ge=1, le=120),
    serie: Optional[SerieType] = Query(None),
    block: Optional[int] = Query(None, ge=1, le=4),
    type: Optional[QuestionType] = Query(None),
    guided: Optional[bool] = Query(None),
    difficulty: Optional[int] = Query(None, ge=1, le=3),
    bncc_skill: Optional[str] = Query(None),
    limit: int = Query(50, ge=1, le=200),
    offset: int = Query(0, ge=0),
):
    """Lista questões com filtros combinados. Útil para o editor de banco de questões."""
    try:
        sb = _get_supabase()
        query = sb.table("questions").select("*")

        if modulo:
            query = query.eq("module", modulo)
        if nivel is not None:
            query = query.eq("level", nivel)
        if serie:
            query = query.eq("series", serie)
        if block is not None:
            query = query.eq("block", block)
        if type:
            query = query.eq("type", type)
        if guided is not None:
            query = query.eq("guided", guided)
        if difficulty is not None:
            query = query.eq("difficulty", difficulty)
        if bncc_skill:
            query = query.eq("bncc_skill", bncc_skill)

        result = query.order("level").order("series").limit(limit).offset(offset).execute()
        return [_row_to_response(r) for r in result.data]

    except HTTPException:
        raise
    except Exception as exc:
        logger.exception("Erro ao listar questões")
        raise HTTPException(status_code=500, detail=str(exc))


@router.post("/", response_model=QuestaoResponse, status_code=201)
async def criar_questao(req: QuestaoCreate):
    """Cria uma nova questão no banco."""
    payload = {
        "module": req.modulo,
        "level": req.nivel,
        "series": req.serie,
        "block": req.block,
        "type": req.type,
        "content": req.content,
        "correct_answer": req.correct_answer,
        "bncc_skill": req.bncc_skill,
        "difficulty": req.difficulty,
        "guided": req.guided,
        "image_id": str(req.image_id) if req.image_id else None,
    }

    try:
        sb = _get_supabase()
        result = sb.table("questions").insert(payload).execute()

        if not result.data:
            raise HTTPException(status_code=500, detail="Erro ao criar questão")

        return _row_to_response(result.data[0])

    except HTTPException:
        raise
    except Exception as exc:
        logger.exception("Erro ao criar questão")
        raise HTTPException(status_code=500, detail=str(exc))


@router.get("/{question_id}", response_model=QuestaoResponse)
async def buscar_questao(question_id: UUID):
    """Retorna uma questão pelo ID."""
    try:
        sb = _get_supabase()
        result = sb.table("questions").select("*").eq("id", str(question_id)).single().execute()

        if not result.data:
            raise HTTPException(status_code=404, detail="Questão não encontrada")

        return _row_to_response(result.data)

    except HTTPException:
        raise
    except Exception as exc:
        logger.exception("Erro ao buscar questão %s", question_id)
        raise HTTPException(status_code=500, detail=str(exc))


@router.put("/{question_id}", response_model=QuestaoResponse)
async def atualizar_questao(question_id: UUID, req: QuestaoUpdate):
    """Atualiza campos de uma questão (apenas os campos enviados)."""
    update_data: dict[str, Any] = {}

    if req.modulo is not None:
        update_data["module"] = req.modulo
    if req.nivel is not None:
        update_data["level"] = req.nivel
    if req.serie is not None:
        update_data["series"] = req.serie
    if req.block is not None:
        update_data["block"] = req.block
    if req.type is not None:
        update_data["type"] = req.type
    if req.content is not None:
        update_data["content"] = req.content
    if req.correct_answer is not None:
        update_data["correct_answer"] = req.correct_answer
    if req.bncc_skill is not None:
        update_data["bncc_skill"] = req.bncc_skill
    if req.difficulty is not None:
        update_data["difficulty"] = req.difficulty
    if req.guided is not None:
        update_data["guided"] = req.guided
    if req.image_id is not None:
        update_data["image_id"] = str(req.image_id)

    if not update_data:
        raise HTTPException(status_code=422, detail="Nenhum campo para atualizar")

    try:
        sb = _get_supabase()
        result = (
            sb.table("questions")
            .update(update_data)
            .eq("id", str(question_id))
            .execute()
        )

        if not result.data:
            raise HTTPException(status_code=404, detail="Questão não encontrada")

        return _row_to_response(result.data[0])

    except HTTPException:
        raise
    except Exception as exc:
        logger.exception("Erro ao atualizar questão %s", question_id)
        raise HTTPException(status_code=500, detail=str(exc))


@router.delete("/{question_id}", status_code=204)
async def deletar_questao(question_id: UUID):
    """Remove uma questão do banco."""
    try:
        sb = _get_supabase()
        result = sb.table("questions").delete().eq("id", str(question_id)).execute()

        if not result.data:
            raise HTTPException(status_code=404, detail="Questão não encontrada")

    except HTTPException:
        raise
    except Exception as exc:
        logger.exception("Erro ao deletar questão %s", question_id)
        raise HTTPException(status_code=500, detail=str(exc))


@router.post("/import", response_model=ImportResult)
async def importar_questoes(file: UploadFile = File(...)):
    """
    Importação em lote via CSV ou JSON.

    Formato CSV esperado (com cabeçalho):
      module,level,series,block,type,content_enunciado,correct_answer,bncc_skill,difficulty,guided

    Formato JSON: lista de objetos com os mesmos campos de QuestaoCreate.
    """
    conteudo = await file.read()
    criadas = 0
    erros: list[dict[str, Any]] = []
    registros: list[dict] = []

    # Parse do arquivo
    if file.filename and file.filename.endswith(".json"):
        try:
            registros = json.loads(conteudo.decode("utf-8"))
        except Exception as exc:
            raise HTTPException(status_code=422, detail=f"JSON inválido: {exc}")
    else:
        # Assume CSV
        try:
            reader = csv.DictReader(io.StringIO(conteudo.decode("utf-8")))
            for row in reader:
                # Monta content JSONB a partir do campo content_enunciado
                enunciado = row.pop("content_enunciado", row.pop("enunciado", ""))
                row["content"] = {"enunciado": enunciado}
                row["difficulty"] = int(row.get("difficulty", 1))
                row["guided"] = row.get("guided", "false").lower() in ("true", "1", "sim")
                row["block"] = int(row.get("block", 4))
                row["nivel"] = int(row.get("level", row.get("nivel", 1)))
                row["modulo"] = row.pop("module", row.get("modulo", ""))
                row["serie"] = row.pop("series", row.get("serie", "A"))
                registros.append(row)
        except Exception as exc:
            raise HTTPException(status_code=422, detail=f"CSV inválido: {exc}")

    total = len(registros)

    # Inserção linha a linha para capturar erros individualmente
    for i, reg in enumerate(registros):
        try:
            questao = QuestaoCreate(**reg)
            payload = {
                "module": questao.modulo,
                "level": questao.nivel,
                "series": questao.serie,
                "block": questao.block,
                "type": questao.type,
                "content": questao.content,
                "correct_answer": questao.correct_answer,
                "bncc_skill": questao.bncc_skill,
                "difficulty": questao.difficulty,
                "guided": questao.guided,
                "image_id": str(questao.image_id) if questao.image_id else None,
            }
            sb = _get_supabase()
            sb.table("questions").insert(payload).execute()
            criadas += 1
        except Exception as exc:
            erros.append({"linha": i + 2, "erro": str(exc), "dado": reg})

    return ImportResult(total=total, criadas=criadas, erros=erros)


@router.get("/export/json")
async def exportar_questoes_json(
    modulo: Optional[ModuloType] = Query(None),
    nivel: Optional[int] = Query(None, ge=1, le=120),
):
    """
    Exporta o banco de questões em JSON para backup.
    Filtros opcionais: modulo, nivel.
    """
    try:
        sb = _get_supabase()
        query = sb.table("questions").select("*")

        if modulo:
            query = query.eq("module", modulo)
        if nivel is not None:
            query = query.eq("level", nivel)

        result = query.order("level").order("series").execute()
        data = result.data

        conteudo = json.dumps(data, ensure_ascii=False, indent=2, default=str)
        filename = f"geraficha_questoes_{modulo or 'todos'}_{nivel or 'todos'}.json"

        return StreamingResponse(
            io.BytesIO(conteudo.encode("utf-8")),
            media_type="application/json",
            headers={"Content-Disposition": f'attachment; filename="{filename}"'},
        )

    except HTTPException:
        raise
    except Exception as exc:
        logger.exception("Erro ao exportar questões")
        raise HTTPException(status_code=500, detail=str(exc))


@router.get("/export/csv")
async def exportar_questoes_csv(
    modulo: Optional[ModuloType] = Query(None),
    nivel: Optional[int] = Query(None, ge=1, le=120),
):
    """
    Exporta questões em CSV (template para edição e reimportação).
    Campos: module,level,series,block,type,content_enunciado,correct_answer,bncc_skill,difficulty,guided
    """
    try:
        sb = _get_supabase()
        query = sb.table("questions").select(
            "module,level,series,block,type,content,correct_answer,bncc_skill,difficulty,guided"
        )

        if modulo:
            query = query.eq("module", modulo)
        if nivel is not None:
            query = query.eq("level", nivel)

        result = query.order("level").order("series").execute()

        output = io.StringIO()
        fieldnames = [
            "module", "level", "series", "block", "type",
            "content_enunciado", "correct_answer", "bncc_skill", "difficulty", "guided",
        ]
        writer = csv.DictWriter(output, fieldnames=fieldnames)
        writer.writeheader()

        for row in result.data:
            content = row.get("content", {})
            if isinstance(content, str):
                content = json.loads(content)
            writer.writerow({
                "module": row["module"],
                "level": row["level"],
                "series": row["series"],
                "block": row["block"],
                "type": row["type"],
                "content_enunciado": content.get("enunciado", ""),
                "correct_answer": row["correct_answer"],
                "bncc_skill": row["bncc_skill"],
                "difficulty": row.get("difficulty", 1),
                "guided": row.get("guided", False),
            })

        filename = f"geraficha_questoes_{modulo or 'todos'}_{nivel or 'todos'}.csv"
        output.seek(0)

        return StreamingResponse(
            io.BytesIO(output.getvalue().encode("utf-8-sig")),  # utf-8-sig para Excel
            media_type="text/csv",
            headers={"Content-Disposition": f'attachment; filename="{filename}"'},
        )

    except HTTPException:
        raise
    except Exception as exc:
        logger.exception("Erro ao exportar CSV")
        raise HTTPException(status_code=500, detail=str(exc))


@router.get("/stats/resumo")
async def resumo_banco():
    """
    Retorna estatísticas do banco de questões:
    total por módulo, total por tipo, cobertura de níveis.
    """
    try:
        sb = _get_supabase()
        result = sb.table("questions").select(
            "module,level,series,type,guided"
        ).execute()

        data = result.data
        total = len(data)

        por_modulo: dict[str, int] = {}
        por_tipo: dict[str, int] = {}
        niveis_cobertos: set[int] = set()

        for r in data:
            m = r.get("module", "?")
            t = r.get("type", "?")
            por_modulo[m] = por_modulo.get(m, 0) + 1
            por_tipo[t] = por_tipo.get(t, 0) + 1
            niveis_cobertos.add(r.get("level", 0))

        return {
            "total": total,
            "meta_minima": 5760,
            "percentual_meta": round(total / 5760 * 100, 1),
            "por_modulo": por_modulo,
            "por_tipo": por_tipo,
            "niveis_cobertos": len(niveis_cobertos),
            "niveis_faltando": sorted(set(range(1, 121)) - niveis_cobertos),
        }

    except HTTPException:
        raise
    except Exception as exc:
        logger.exception("Erro ao calcular resumo do banco")
        raise HTTPException(status_code=500, detail=str(exc))
