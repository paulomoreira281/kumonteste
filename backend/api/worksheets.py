"""
GeraFicha — API de Fichas
POST /api/worksheets/generate  → gera PDF e retorna bytes ou URL
GET  /api/worksheets/preview   → retorna estrutura JSON da ficha (sem PDF)
"""
import random
import logging
from datetime import datetime
from typing import Optional

from fastapi import APIRouter, HTTPException, Depends
from fastapi.responses import Response
from pydantic import BaseModel, Field

from api.pdf import (
    gerar_pdf, FichaParams, QuestionData, ExemploData
)

logger = logging.getLogger("geraficha.worksheets")
router = APIRouter()


# ── Schemas de entrada ────────────────────────────────────
class GerarFichaRequest(BaseModel):
    nivel: int = Field(..., ge=1, le=120, description="Nível da ficha (1–120)")
    serie: str = Field("A", pattern="^[ABR]$", description="Série: A | B | R")
    modulo: str = Field(..., description="acentuacao | ortografia | classes | sintaxe | interpretacao")
    nome_aluno: str = Field("", max_length=60)
    nome_escola: str = Field("", max_length=80)
    turma: str = Field("", max_length=20)
    data: str = Field("", description="DD/MM/AAAA; vazio = hoje")
    incluir_gabarito: bool = Field(False)

    class Config:
        json_schema_extra = {
            "example": {
                "nivel": 1,
                "serie": "A",
                "modulo": "acentuacao",
                "nome_aluno": "Maria Silva",
                "nome_escola": "E.M. João Paulo II",
                "turma": "3.º Ano B",
                "data": "02/03/2026",
                "incluir_gabarito": False,
            }
        }


class GerarFichaResponse(BaseModel):
    pdf_url: Optional[str] = None
    filename: str
    nivel: int
    serie: str
    modulo: str
    paginas: int


# ── Banco de conteúdo por nível (versão inicial — Módulo Acentuação) ──
# Em produção: buscar do Supabase (tabela questions + worksheets)
# Aqui: conteúdo hardcoded para os primeiros níveis como referência

CONTEUDO_NIVEIS = {
    # ── NÍVEL 1 ───────────────────────────────────────────
    1: {
        "modulo": "acentuacao",
        "titulo_licao": "A palavra que fala mais alto",
        "narrativa_licao": (
            "Imagine que cada palavra é uma turma cheia de sílabas. "
            "Assim como em toda turma existe um aluno que fala mais alto que os outros, "
            "em toda palavra existe uma sílaba pronunciada com mais força.\n"
            "Essa sílaba especial chama-se sílaba tônica. "
            "As demais, que 'falam baixinho', são as sílabas átonas.\n"
            "Fale as palavras em voz alta e sinta qual sílaba a sua voz 'sobe' um pouco — essa é a tônica!"
        ),
        "exemplos_licao": [
            ExemploData("café",   "ca·FÉ",       "FÉ",  "(tônica na última)"),
            ExemploData("médico", "MÉ·di·co",    "MÉ",  "(tônica na 1.ª)"),
            ExemploData("janela", "ja·NE·la",     "NE",  "(tônica no meio)"),
        ],
        "bloco1": [
            QuestionData(1, "DS", "PATO",   opcoes=["Quantas letras?"],      resposta="4 letras"),
            QuestionData(2, "DS", "ESCOLA", opcoes=["Quantas letras?"],      resposta="6 letras"),
            QuestionData(3, "DS", "SOL",    opcoes=["Quantas letras?"],      resposta="3 letras"),
            QuestionData(4, "VF", "JANELA", opcoes=["1.º som: vogal ou consoante?"], resposta="Consoante (J)"),
            QuestionData(5, "VF", "A E I O U", opcoes=["Como chamamos?"],   resposta="Vogais"),
            QuestionData(6, "DS", "MESA",   opcoes=["Quantas sílabas?"],     resposta="2 sílabas"),
        ],
        "bloco3": [
            QuestionData(1, "DS", "a) Sílabas e tônica:", opcoes=["PATO"],   resposta="PA·to → PA", guiado=True),
            QuestionData(2, "DS", "b) Sílabas e tônica:", opcoes=["MESA"],   resposta="ME·sa → ME", guiado=True),
            QuestionData(3, "DS", "c) Sílabas e tônica:", opcoes=["ESCOLA"], resposta="es·CO·la → CO", guiado=True),
            QuestionData(4, "DS", "d) Sílabas e tônica:", opcoes=["LÁPIS"],  resposta="LÁ·pis → LÁ", guiado=True),
        ],
        "bloco4": [
            # DS
            QuestionData(1,  "DS", "Separe as sílabas e marque a tônica", opcoes=["AMOR"],    resposta="a·MOR"),
            QuestionData(2,  "DS", "Separe as sílabas e marque a tônica", opcoes=["BONITO"],  resposta="bo·NI·to"),
            QuestionData(3,  "DS", "Separe as sílabas e marque a tônica", opcoes=["CADERNO"], resposta="ca·DER·no"),
            QuestionData(4,  "DS", "Separe as sílabas e marque a tônica", opcoes=["FLOR"],    resposta="FLOR (monossílaba)"),
            QuestionData(5,  "DS", "Separe as sílabas e marque a tônica", opcoes=["GIRAFA"],  resposta="gi·RA·fa"),
            QuestionData(6,  "DS", "Separe as sílabas e marque a tônica", opcoes=["LIVRO"],   resposta="LI·vro"),
            QuestionData(7,  "DS", "Separe as sílabas e marque a tônica", opcoes=["PAPAI"],   resposta="pa·PAI"),
            QuestionData(8,  "DS", "Separe as sílabas e marque a tônica", opcoes=["CHUVA"],   resposta="CHU·va"),
            # VF
            QuestionData(9,  "VF", "Na palavra CAFÉ, a sílaba tônica é CA.",               resposta="F — tônica é FÉ"),
            QuestionData(10, "VF", "Na palavra MÉDICO, a sílaba tônica é MÉ.",             resposta="V"),
            QuestionData(11, "VF", "Toda palavra tem mais de uma sílaba tônica.",           resposta="F — só 1 tônica"),
            QuestionData(12, "VF", "Em JANELA, a sílaba NE é pronunciada com mais força.", resposta="V"),
            QuestionData(13, "VF", "A sílaba átona é pronunciada com mais força que a tônica.", resposta="F"),
            # IE
            QuestionData(14, "IE", "Observe a imagem e escreva o nome",  resposta="GA·to → GA"),
            QuestionData(15, "IE", "Observe a imagem e escreva o nome",  resposta="BO·lo → BO"),
            QuestionData(16, "IE", "Observe a imagem e escreva o nome",  resposta="ÁR·vo·re → ÁR"),
        ],
    },

    # ── NÍVEL 2 (Série B — mesmo conteúdo, questões diferentes) ──────
    2: {
        "modulo": "acentuacao",
        "titulo_licao": "A palavra que fala mais alto",
        "narrativa_licao": (
            "Lembra da sílaba que 'fala mais alto'? Ela se chama sílaba tônica. "
            "Hoje vamos praticar mais para ter certeza de que você já sabe encontrá-la em qualquer palavra!\n"
            "Dica: fale a palavra devagar, batendo palma em cada sílaba. "
            "A palma que 'soa diferente', mais forte, marca a sílaba tônica."
        ),
        "exemplos_licao": [
            ExemploData("sapato",  "sa·PA·to",    "PA",  "(tônica no meio)"),
            ExemploData("árvore",  "ÁR·vo·re",    "ÁR",  "(tônica na 1.ª)"),
            ExemploData("coração", "co·ra·ÇÃO",   "ÇÃO", "(tônica na última)"),
        ],
        "bloco1": [
            QuestionData(1, "DS", "GATO",    opcoes=["Quantas letras?"],   resposta="4 letras"),
            QuestionData(2, "DS", "CADERNO", opcoes=["Quantas sílabas?"],  resposta="3 sílabas"),
            QuestionData(3, "DS", "CÉU",     opcoes=["Quantas letras?"],   resposta="3 letras"),
            QuestionData(4, "VF", "FLOR",    opcoes=["1.º som: vogal?"],   resposta="Não — consoante (F)"),
            QuestionData(5, "VF", "AMOR",    opcoes=["Quantas sílabas?"],  resposta="2 sílabas"),
            QuestionData(6, "DS", "BORBOLETA", opcoes=["Quantas sílabas?"], resposta="4 sílabas"),
        ],
        "bloco3": [
            QuestionData(1, "DS", "a) Sílabas e tônica:", opcoes=["GATO"],     resposta="GA·to → GA", guiado=True),
            QuestionData(2, "DS", "b) Sílabas e tônica:", opcoes=["SAPATO"],   resposta="sa·PA·to → PA", guiado=True),
            QuestionData(3, "DS", "c) Sílabas e tônica:", opcoes=["ÁRVORE"],   resposta="ÁR·vo·re → ÁR", guiado=True),
            QuestionData(4, "DS", "d) Sílabas e tônica:", opcoes=["CORAÇÃO"],  resposta="co·ra·ÇÃO → ÇÃO", guiado=True),
        ],
        "bloco4": [
            QuestionData(1,  "DS", "", opcoes=["BORBOLETA"], resposta="bor·bo·LE·ta"),
            QuestionData(2,  "DS", "", opcoes=["NARIZ"],     resposta="na·RIZ"),
            QuestionData(3,  "DS", "", opcoes=["TIGRE"],     resposta="TI·gre"),
            QuestionData(4,  "DS", "", opcoes=["BAMBOLÊ"],   resposta="bam·bo·LÊ"),
            QuestionData(5,  "DS", "", opcoes=["RELÓGIO"],   resposta="re·LÓ·gio"),
            QuestionData(6,  "DS", "", opcoes=["ABACAXI"],   resposta="a·ba·ca·XI"),
            QuestionData(7,  "DS", "", opcoes=["MAÇÃ"],      resposta="ma·ÇÃ"),
            QuestionData(8,  "DS", "", opcoes=["CRIANÇA"],   resposta="cri·AN·ça"),
            QuestionData(9,  "VF", "Em SAPATO, a tônica é SA.",              resposta="F — tônica é PA"),
            QuestionData(10, "VF", "Em ÁRVORE, a tônica é ÁR.",              resposta="V"),
            QuestionData(11, "VF", "Toda palavra tem pelo menos uma sílaba.", resposta="V"),
            QuestionData(12, "VF", "Em CORAÇÃO, a tônica é CO.",             resposta="F — tônica é ÇÃO"),
            QuestionData(13, "VF", "Sílaba átona = sílaba pronunciada com força.", resposta="F — é a tônica"),
            QuestionData(14, "IE", "Observe a imagem e escreva o nome", resposta="SOL (monossílaba)"),
            QuestionData(15, "IE", "Observe a imagem e escreva o nome", resposta="CA·sa → CA"),
            QuestionData(16, "IE", "Observe a imagem e escreva o nome", resposta="PI·pa → PI"),
        ],
    },
}


def _data_hoje() -> str:
    return datetime.now().strftime("%d/%m/%Y")


def _buscar_conteudo(nivel: int, serie: str, modulo: str) -> dict:
    """
    Busca o conteúdo do nível no banco local (protótipo).
    Em produção: consulta o Supabase (tabela questions + worksheets).
    """
    chave = nivel
    if chave not in CONTEUDO_NIVEIS:
        raise HTTPException(
            status_code=404,
            detail=f"Nível {nivel} ainda não possui conteúdo cadastrado. Níveis disponíveis: {sorted(CONTEUDO_NIVEIS.keys())}"
        )

    dados = CONTEUDO_NIVEIS[chave]

    # Verificar módulo
    if dados["modulo"] != modulo:
        raise HTTPException(
            status_code=400,
            detail=f"Nível {nivel} pertence ao módulo '{dados['modulo']}', não '{modulo}'"
        )

    return dados


def _montar_params(req: GerarFichaRequest) -> FichaParams:
    """Monta o FichaParams a partir do request e do conteúdo do nível."""
    dados = _buscar_conteudo(req.nivel, req.serie, req.modulo)

    # Rotação leve de questões para fichas consecutivas do mesmo nível
    bloco4 = dados["bloco4"].copy()
    if req.serie == "B":
        random.shuffle(bloco4)

    return FichaParams(
        nivel=req.nivel,
        serie=req.serie,
        modulo=req.modulo,
        titulo_licao=dados["titulo_licao"],
        narrativa_licao=dados["narrativa_licao"],
        exemplos_licao=dados["exemplos_licao"],
        bloco1_questoes=dados["bloco1"],
        bloco3_questoes=dados["bloco3"],
        bloco4_questoes=bloco4,
        imagem_licao_path=None,  # TODO: buscar do Storage
        nome_aluno=req.nome_aluno,
        nome_escola=req.nome_escola,
        turma=req.turma,
        data=req.data or _data_hoje(),
        incluir_gabarito=req.incluir_gabarito,
    )


# ── Endpoints ─────────────────────────────────────────────

@router.post("/generate", summary="Gera PDF da ficha")
async def gerar_ficha(req: GerarFichaRequest):
    """
    Gera a ficha pedagógica em PDF e retorna o arquivo para download.

    - **nivel**: 1–120
    - **serie**: A (normal) | B (repetição) | R (reforço)
    - **modulo**: acentuacao | ortografia | classes | sintaxe | interpretacao
    - **incluir_gabarito**: se True, adiciona página de gabarito ao PDF
    """
    try:
        params = _montar_params(req)
        pdf_bytes = gerar_pdf(params)

        filename = (
            f"geraficha_nivel{req.nivel:03d}_serie{req.serie}_"
            f"{req.modulo}.pdf"
        )

        logger.info(
            f"PDF gerado: nível={req.nivel} série={req.serie} "
            f"módulo={req.modulo} tamanho={len(pdf_bytes)} bytes"
        )

        return Response(
            content=pdf_bytes,
            media_type="application/pdf",
            headers={
                "Content-Disposition": f'attachment; filename="{filename}"',
                "X-Geraficha-Nivel": str(req.nivel),
                "X-Geraficha-Serie": req.serie,
            },
        )

    except HTTPException:
        raise
    except Exception as e:
        logger.error(f"Erro ao gerar PDF: {e}", exc_info=True)
        raise HTTPException(status_code=500, detail=f"Erro ao gerar PDF: {str(e)}")


@router.get("/preview/{nivel}", summary="Pré-visualização da estrutura da ficha (JSON)")
async def preview_ficha(nivel: int, serie: str = "A", modulo: str = "acentuacao"):
    """
    Retorna a estrutura da ficha em JSON, sem gerar o PDF.
    Útil para o preview ao vivo da interface web.
    """
    try:
        dados = _buscar_conteudo(nivel, serie, modulo)
        return {
            "nivel": nivel,
            "serie": serie,
            "modulo": modulo,
            "titulo_licao": dados["titulo_licao"],
            "total_questoes": {
                "bloco1": len(dados["bloco1"]),
                "bloco3": len(dados["bloco3"]),
                "bloco4": len(dados["bloco4"]),
            },
            "tipos_bloco4": list({q.tipo for q in dados["bloco4"]}),
        }
    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))


@router.get("/niveis", summary="Lista níveis disponíveis por módulo")
async def listar_niveis(modulo: Optional[str] = None):
    """Lista os níveis disponíveis no banco local (protótipo)."""
    niveis = []
    for n, dados in CONTEUDO_NIVEIS.items():
        if modulo and dados["modulo"] != modulo:
            continue
        niveis.append({
            "nivel": n,
            "modulo": dados["modulo"],
            "titulo": dados["titulo_licao"],
            "series_disponiveis": ["A", "B"],  # R gerado sob demanda futuramente
        })
    return {"niveis": niveis, "total": len(niveis)}
