"""
GeraFicha — API de Pontuação
POST /api/scores          → registra nota do pai + gera recomendação
GET  /api/scores/{id}     → consulta pontuação
GET  /api/scores/student/{student_id} → histórico do aluno
POST /api/scores/{id}/decision → pai confirma decisão final
"""
import logging
from datetime import datetime
from typing import Literal, Optional
from uuid import UUID

from fastapi import APIRouter, HTTPException
from pydantic import BaseModel, Field, field_validator

from config import get_settings

logger = logging.getLogger("geraficha.scores")
router = APIRouter()
settings = get_settings()


# ── Tipos ───────────────────────────────────────────────────────────────────

RecommendationType = Literal["advance", "repeat", "reinforce"]
DecisionType = Literal["advance", "repeat", "reinforce"]


# ── Schemas ──────────────────────────────────────────────────────────────────

class RegistrarPontuacaoRequest(BaseModel):
    student_id: UUID
    worksheet_id: UUID
    nivel: int = Field(..., ge=1, le=120)
    serie: Literal["A", "B", "R"]
    score: int = Field(..., ge=0, le=10, description="Nota de 0 a 10 dada pelo pai")

    @field_validator("score")
    @classmethod
    def score_range(cls, v: int) -> int:
        if not 0 <= v <= 10:
            raise ValueError("Nota deve ser entre 0 e 10")
        return v


class DecisaoRequest(BaseModel):
    decision: DecisionType


class ProximaFichaInfo(BaseModel):
    nivel: int
    serie: Literal["A", "B", "R"]
    mensagem: str


class PontuacaoResponse(BaseModel):
    id: str
    student_id: str
    worksheet_id: str
    nivel: int
    serie: str
    score: int
    recommendation: RecommendationType
    decision: Optional[str]
    proxima_ficha: ProximaFichaInfo
    created_at: str


class HistoricoItem(BaseModel):
    id: str
    nivel: int
    serie: str
    score: int
    recommendation: str
    decision: Optional[str]
    created_at: str


# ── Lógica de Recomendação ───────────────────────────────────────────────────

def calcular_recomendacao(score: int) -> RecommendationType:
    """
    Regras conforme PRD Seção 6.4:
      score >= 7  → 'advance'   (próximo nível, Série A)
      score 5–6   → 'repeat'    (mesmo nível, Série B)
      score <= 4  → 'reinforce' (mesmo nível, Série R)
    """
    if score >= 7:
        return "advance"
    elif score >= 5:
        return "repeat"
    else:
        return "reinforce"


def calcular_proxima_ficha(
    nivel: int,
    serie: Literal["A", "B", "R"],
    decision: DecisionType,
) -> ProximaFichaInfo:
    """
    Monta os parâmetros da próxima ficha conforme a decisão do pai.

    Fluxo completo:
      Série A → ≥7 → Nível+1, Série A
      Série A → 5-6 → Mesmo nível, Série B
      Série A → ≤4 → Mesmo nível, Série R
      Série B → ≥7 → Nível+1, Série A
      Série B → 5-6 → Mesmo nível, Série B (repetir B)
      Série B → ≤4 → Mesmo nível, Série R
      Série R → qualquer → Mesmo nível, Série A (retorna ao início do nível)
    """
    MAX_NIVEL = 120

    # Após reforço (Série R), sempre volta para Série A do mesmo nível
    if serie == "R":
        return ProximaFichaInfo(
            nivel=nivel,
            serie="A",
            mensagem=f"Após o reforço, retome o Nível {nivel} — Série A para consolidar o aprendizado.",
        )

    if decision == "advance":
        proximo = min(nivel + 1, MAX_NIVEL)
        if proximo == MAX_NIVEL and nivel == MAX_NIVEL:
            return ProximaFichaInfo(
                nivel=MAX_NIVEL,
                serie="A",
                mensagem="Parabéns! Nível máximo concluído. Revise os módulos anteriores.",
            )
        return ProximaFichaInfo(
            nivel=proximo,
            serie="A",
            mensagem=f"Ótimo desempenho! Avançando para o Nível {proximo} — Série A.",
        )

    elif decision == "repeat":
        return ProximaFichaInfo(
            nivel=nivel,
            serie="B",
            mensagem=f"Continue praticando! Refaça o Nível {nivel} — Série B com novas questões.",
        )

    else:  # reinforce
        return ProximaFichaInfo(
            nivel=nivel,
            serie="R",
            mensagem=f"Sem problema! Faça o reforço do Nível {nivel} — Série R antes de avançar.",
        )


# ── Helpers Supabase ─────────────────────────────────────────────────────────

def _get_supabase():
    """Retorna cliente Supabase (lazy import para evitar erros sem .env)."""
    try:
        from supabase import create_client
        return create_client(settings.supabase_url, settings.supabase_service_role_key)
    except Exception as exc:
        logger.error("Erro ao conectar ao Supabase: %s", exc)
        raise HTTPException(status_code=503, detail="Serviço de banco de dados indisponível")


# ── Endpoints ────────────────────────────────────────────────────────────────

@router.post("/", response_model=PontuacaoResponse, status_code=201)
async def registrar_pontuacao(req: RegistrarPontuacaoRequest):
    """
    Registra a nota dada pelo pai e retorna:
    - A recomendação do sistema
    - Os parâmetros da próxima ficha (usando a recomendação como decisão padrão)

    O pai pode alterar a decisão depois via PATCH /api/scores/{id}/decision.
    """
    recommendation = calcular_recomendacao(req.score)
    proxima = calcular_proxima_ficha(req.nivel, req.serie, recommendation)

    payload = {
        "student_id": str(req.student_id),
        "worksheet_id": str(req.worksheet_id),
        "level": req.nivel,
        "series": req.serie,
        "score": req.score,
        "recommendation": recommendation,
        "decision": recommendation,  # padrão = recomendação; pai pode alterar
    }

    try:
        sb = _get_supabase()
        result = sb.table("scores").insert(payload).execute()

        if not result.data:
            raise HTTPException(status_code=500, detail="Erro ao salvar pontuação")

        row = result.data[0]
        return PontuacaoResponse(
            id=str(row["id"]),
            student_id=str(row["student_id"]),
            worksheet_id=str(row["worksheet_id"]),
            nivel=row["level"],
            serie=row["series"],
            score=row["score"],
            recommendation=row["recommendation"],
            decision=row.get("decision"),
            proxima_ficha=proxima,
            created_at=str(row["created_at"]),
        )
    except HTTPException:
        raise
    except Exception as exc:
        logger.exception("Erro inesperado ao registrar pontuação")
        raise HTTPException(status_code=500, detail=str(exc))


@router.get("/{score_id}", response_model=PontuacaoResponse)
async def consultar_pontuacao(score_id: UUID):
    """Retorna uma pontuação específica pelo ID."""
    try:
        sb = _get_supabase()
        result = sb.table("scores").select("*").eq("id", str(score_id)).single().execute()

        if not result.data:
            raise HTTPException(status_code=404, detail="Pontuação não encontrada")

        row = result.data
        proxima = calcular_proxima_ficha(
            row["level"],
            row["series"],
            row.get("decision") or row["recommendation"],
        )

        return PontuacaoResponse(
            id=str(row["id"]),
            student_id=str(row["student_id"]),
            worksheet_id=str(row["worksheet_id"]),
            nivel=row["level"],
            serie=row["series"],
            score=row["score"],
            recommendation=row["recommendation"],
            decision=row.get("decision"),
            proxima_ficha=proxima,
            created_at=str(row["created_at"]),
        )
    except HTTPException:
        raise
    except Exception as exc:
        logger.exception("Erro ao consultar pontuação %s", score_id)
        raise HTTPException(status_code=500, detail=str(exc))


@router.get("/student/{student_id}", response_model=list[HistoricoItem])
async def historico_aluno(student_id: UUID, limit: int = 20):
    """
    Retorna o histórico de pontuações de um aluno,
    ordenado da mais recente para a mais antiga.
    """
    try:
        sb = _get_supabase()
        result = (
            sb.table("scores")
            .select("id, level, series, score, recommendation, decision, created_at")
            .eq("student_id", str(student_id))
            .order("created_at", desc=True)
            .limit(limit)
            .execute()
        )

        return [
            HistoricoItem(
                id=str(r["id"]),
                nivel=r["level"],
                serie=r["series"],
                score=r["score"],
                recommendation=r["recommendation"],
                decision=r.get("decision"),
                created_at=str(r["created_at"]),
            )
            for r in result.data
        ]
    except HTTPException:
        raise
    except Exception as exc:
        logger.exception("Erro ao buscar histórico do aluno %s", student_id)
        raise HTTPException(status_code=500, detail=str(exc))


@router.patch("/{score_id}/decision", response_model=PontuacaoResponse)
async def registrar_decisao(score_id: UUID, req: DecisaoRequest):
    """
    Permite que o pai altere a decisão após ver a recomendação.
    Ex.: sistema recomendou 'advance' mas pai quer 'repeat'.
    """
    try:
        sb = _get_supabase()

        # Busca o registro atual
        atual = sb.table("scores").select("*").eq("id", str(score_id)).single().execute()
        if not atual.data:
            raise HTTPException(status_code=404, detail="Pontuação não encontrada")

        row = atual.data

        # Atualiza decisão
        updated = (
            sb.table("scores")
            .update({"decision": req.decision})
            .eq("id", str(score_id))
            .execute()
        )

        if not updated.data:
            raise HTTPException(status_code=500, detail="Erro ao atualizar decisão")

        updated_row = updated.data[0]
        proxima = calcular_proxima_ficha(
            updated_row["level"],
            updated_row["series"],
            req.decision,
        )

        return PontuacaoResponse(
            id=str(updated_row["id"]),
            student_id=str(updated_row["student_id"]),
            worksheet_id=str(updated_row["worksheet_id"]),
            nivel=updated_row["level"],
            serie=updated_row["series"],
            score=updated_row["score"],
            recommendation=updated_row["recommendation"],
            decision=updated_row.get("decision"),
            proxima_ficha=proxima,
            created_at=str(updated_row["created_at"]),
        )
    except HTTPException:
        raise
    except Exception as exc:
        logger.exception("Erro ao registrar decisão para %s", score_id)
        raise HTTPException(status_code=500, detail=str(exc))


@router.get("/recommend/preview")
async def preview_recomendacao(score: int = 7):
    """
    Endpoint utilitário para testar a lógica de recomendação sem banco de dados.
    GET /api/scores/recommend/preview?score=6
    """
    if not 0 <= score <= 10:
        raise HTTPException(status_code=422, detail="Score deve ser entre 0 e 10")

    recommendation = calcular_recomendacao(score)
    exemplos = {
        "advance":   {"nivel_exemplo": 5, "serie_exemplo": "A"},
        "repeat":    {"nivel_exemplo": 5, "serie_exemplo": "A"},
        "reinforce": {"nivel_exemplo": 5, "serie_exemplo": "A"},
    }
    ex = exemplos[recommendation]

    proxima = calcular_proxima_ficha(ex["nivel_exemplo"], ex["serie_exemplo"], recommendation)

    return {
        "score": score,
        "recommendation": recommendation,
        "descricao": {
            "advance":   "Nota ≥ 7 → Avançar para o próximo nível",
            "repeat":    "Nota 5–6 → Repetir o mesmo nível na Série B",
            "reinforce": "Nota ≤ 4 → Fazer reforço na Série R",
        }[recommendation],
        "proxima_ficha_exemplo": proxima,
    }
