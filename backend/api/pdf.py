"""
GeraFicha — Motor de PDF
Gera fichas A4 com os 4 blocos usando ReportLab
Estrutura: Prepare-se / Lição / Vamos Praticar! / Prática
"""
import io
import os
from dataclasses import dataclass, field
from typing import Optional

from reportlab.lib.pagesizes import A4
from reportlab.lib.units import mm
from reportlab.lib.colors import (
    HexColor, white, black
)
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.lib.enums import TA_LEFT, TA_CENTER, TA_RIGHT
from reportlab.platypus import (
    SimpleDocTemplate, Paragraph, Spacer, Table, TableStyle,
    HRFlowable, KeepTogether
)
from reportlab.platypus.flowables import Flowable
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont

# ── Paleta de cores ────────────────────────────────────────
VERDE        = HexColor("#2e7d32")
VERDE_CLARO  = HexColor("#4caf50")
VERDE_MENTA  = HexColor("#e8f5e9")
AMARELO      = HexColor("#f9a825")
AMARELO_BG   = HexColor("#fff9e6")
LARANJA      = HexColor("#ef6c00")
AZUL         = HexColor("#1565c0")
AZUL_BG      = HexColor("#e3f2fd")
ROSA         = HexColor("#e91e63")
ROSA_BG      = HexColor("#fce4ec")
CINZA        = HexColor("#546e7a")
CINZA_BG     = HexColor("#f5f5f5")
CINZA_BORDA  = HexColor("#e0e0e0")
AMARELO_HINT = HexColor("#fffde7")

# ── Margens A4 ────────────────────────────────────────────
MARGEM_ESQUERDA = 16 * mm
MARGEM_DIREITA  = 16 * mm
MARGEM_TOPO     = 10 * mm
MARGEM_BASE     = 10 * mm

PAGE_W, PAGE_H = A4          # 595.27, 841.89 pts
CONTENT_W = PAGE_W - MARGEM_ESQUERDA - MARGEM_DIREITA


# ── Modelos de dados ──────────────────────────────────────
@dataclass
class QuestionData:
    numero: int
    tipo: str          # MC, CL, RF, VF, DS, IT, PG, CT, AS, IE
    enunciado: str
    opcoes: list[str] = field(default_factory=list)  # MC
    resposta: str = ""
    imagem_path: Optional[str] = None                # IE
    guiado: bool = False                             # Bloco 3


@dataclass
class ExemploData:
    palavra: str
    silabas: str       # ex.: "ca·FÉ"
    tonica: str        # ex.: "FÉ"
    observacao: str = ""


@dataclass
class FichaParams:
    nivel: int
    serie: str                          # A | B | R
    modulo: str                         # acentuacao | ortografia | ...
    titulo_licao: str
    narrativa_licao: str
    exemplos_licao: list[ExemploData]
    bloco1_questoes: list[QuestionData] # Prepare-se
    bloco3_questoes: list[QuestionData] # Vamos Praticar (guiado)
    bloco4_questoes: list[QuestionData] # Prática livre
    imagem_licao_path: Optional[str] = None
    # Cabeçalho
    nome_aluno: str = ""
    nome_escola: str = ""
    turma: str = ""
    data: str = ""
    # Opções
    incluir_gabarito: bool = False


# ── Helper: estilos de parágrafo ──────────────────────────
def _estilos():
    base = getSampleStyleSheet()

    corpo = ParagraphStyle(
        "corpo", parent=base["Normal"],
        fontSize=9.5, leading=14, fontName="Helvetica",
        textColor=black,
    )
    negrito = ParagraphStyle(
        "negrito", parent=corpo,
        fontName="Helvetica-Bold",
    )
    pequeno = ParagraphStyle(
        "pequeno", parent=corpo,
        fontSize=8, leading=11, textColor=CINZA,
    )
    cabecalho_titulo = ParagraphStyle(
        "cab_titulo", parent=base["Normal"],
        fontSize=13, fontName="Helvetica-Bold",
        textColor=VERDE, leading=15,
    )
    cabecalho_sub = ParagraphStyle(
        "cab_sub", parent=base["Normal"],
        fontSize=7.5, fontName="Helvetica",
        textColor=CINZA, leading=10,
    )
    bloco_titulo = ParagraphStyle(
        "bloco_titulo", parent=base["Normal"],
        fontSize=11, fontName="Helvetica-Bold",
        leading=14,
    )
    enunciado = ParagraphStyle(
        "enunciado", parent=corpo,
        fontSize=9, fontName="Helvetica-Bold",
        textColor=AZUL,
    )
    palavra_grande = ParagraphStyle(
        "palavra_grande", parent=base["Normal"],
        fontSize=13, fontName="Helvetica-Bold",
        alignment=TA_CENTER, textColor=black,
    )
    narrativa = ParagraphStyle(
        "narrativa", parent=corpo,
        fontSize=9.5, leading=15,
        spaceAfter=4,
    )
    exemplo_txt = ParagraphStyle(
        "exemplo_txt", parent=corpo,
        fontSize=9.5, fontName="Helvetica",
    )
    rodape_txt = ParagraphStyle(
        "rodape_txt", parent=base["Normal"],
        fontSize=7.5, textColor=CINZA, fontName="Helvetica",
    )
    rodape_centro = ParagraphStyle(
        "rodape_centro", parent=base["Normal"],
        fontSize=8.5, textColor=VERDE,
        fontName="Helvetica-Bold", alignment=TA_CENTER,
    )
    rodape_dir = ParagraphStyle(
        "rodape_dir", parent=base["Normal"],
        fontSize=7.5, textColor=CINZA,
        fontName="Helvetica", alignment=TA_RIGHT,
    )
    gabarito_h = ParagraphStyle(
        "gabarito_h", parent=base["Normal"],
        fontSize=14, fontName="Helvetica-Bold",
        textColor=CINZA, alignment=TA_CENTER,
    )
    return {
        "corpo": corpo, "negrito": negrito, "pequeno": pequeno,
        "cab_titulo": cabecalho_titulo, "cab_sub": cabecalho_sub,
        "bloco_titulo": bloco_titulo, "enunciado": enunciado,
        "palavra_grande": palavra_grande, "narrativa": narrativa,
        "exemplo_txt": exemplo_txt,
        "rodape": rodape_txt, "rodape_centro": rodape_centro, "rodape_dir": rodape_dir,
        "gabarito_h": gabarito_h,
    }


# ── Flowable: retângulo placeholder para imagem ───────────
class RetanguloImagem(Flowable):
    """Desenha um retângulo pontilhado como placeholder de imagem."""
    def __init__(self, largura=50, altura=45, cor=None):
        self._larg = largura
        self._alt = altura
        self._cor = cor or HexColor("#bdbdbd")
        super().__init__()

    def wrap(self, availW, availH):
        return self._larg, self._alt

    def draw(self):
        self.canv.setStrokeColor(self._cor)
        self.canv.setFillColor(HexColor("#f5f5f5"))
        self.canv.setLineWidth(1.2)
        self.canv.setDash(3, 3)
        self.canv.roundRect(0, 0, self._larg, self._alt, 4, fill=True, stroke=True)
        self.canv.setDash()
        self.canv.setFillColor(HexColor("#9e9e9e"))
        self.canv.setFont("Helvetica", 7)
        cx = self._larg / 2
        cy = self._alt / 2
        self.canv.drawCentredString(cx, cy + 4, "imagem")
        self.canv.drawCentredString(cx, cy - 5, "aqui")


# ── Flowable: linha horizontal colorida ───────────────────
class LinhaColorida(Flowable):
    def __init__(self, cor, largura=None, espessura=1.2, tracejado=False):
        self.cor = cor
        self._largura = largura
        self.espessura = espessura
        self.tracejado = tracejado
        super().__init__()

    def wrap(self, availW, availH):
        self.largura = self._largura or availW
        return self.largura, self.espessura + 2

    def draw(self):
        self.canv.setStrokeColor(self.cor)
        self.canv.setLineWidth(self.espessura)
        if self.tracejado:
            self.canv.setDash(4, 3)
        self.canv.line(0, 0, self.largura, 0)
        self.canv.setDash()


# ── Helper: tabela com fundo colorido (bloco título) ──────
def _titulo_bloco(numero: int, icone: str, texto: str, cor_fundo, cor_texto, cor_borda):
    estilo = _estilos()
    cell_icone = Paragraph(icone, ParagraphStyle("ic", fontSize=14, leading=16))
    cell_num   = Paragraph(
        f'<b>{numero}</b>',
        ParagraphStyle("num", fontSize=10, fontName="Helvetica-Bold",
                       textColor=cor_texto, alignment=TA_CENTER)
    )
    cell_texto = Paragraph(
        f'<b>{texto}</b>',
        ParagraphStyle("bt", fontSize=11, fontName="Helvetica-Bold",
                       textColor=cor_texto, leading=14)
    )
    t = Table(
        [[cell_icone, cell_num, cell_texto]],
        colWidths=[18, 22, CONTENT_W - 18 - 22],
        rowHeights=[20],
    )
    t.setStyle(TableStyle([
        ("BACKGROUND",  (0,0), (-1,-1), cor_fundo),
        ("LEFTPADDING",  (0,0), (-1,-1), 8),
        ("RIGHTPADDING", (0,0), (-1,-1), 8),
        ("TOPPADDING",   (0,0), (-1,-1), 4),
        ("BOTTOMPADDING",(0,0), (-1,-1), 4),
        ("VALIGN",       (0,0), (-1,-1), "MIDDLE"),
        ("ROUNDEDCORNERS", [6]),
        ("LINEAFTER", (0,0), (0,-1), 3, cor_borda),
    ]))
    return t


# ── Helper: caixa com fundo colorido ──────────────────────
def _caixa(conteudo, cor_fundo, cor_borda, padding=(6, 8)):
    """Envolve `conteudo` (lista de flowables) em uma Table de 1 célula com fundo."""
    t = Table([[conteudo]], colWidths=[CONTENT_W])
    t.setStyle(TableStyle([
        ("BACKGROUND",  (0,0), (-1,-1), cor_fundo),
        ("BOX",         (0,0), (-1,-1), 1, cor_borda),
        ("TOPPADDING",  (0,0), (-1,-1), padding[0]),
        ("BOTTOMPADDING",(0,0),(-1,-1), padding[0]),
        ("LEFTPADDING", (0,0), (-1,-1), padding[1]),
        ("RIGHTPADDING",(0,0), (-1,-1), padding[1]),
        ("ROUNDEDCORNERS", [5]),
    ]))
    return t


# ── Helper: linha de identificação ───────────────────────
def _linha_identificacao(nome="", turma="", data="", estilos=None):
    s = estilos or _estilos()
    linha_nome  = nome  or "_" * 40
    linha_turma = turma or "_" * 15
    linha_data  = data  or "___/___/______"

    nome_cell  = [Paragraph(f"<b>Nome:</b> {linha_nome}",  s["corpo"])]
    turma_cell = [Paragraph(f"<b>Turma:</b> {linha_turma}", s["corpo"])]
    data_cell  = [Paragraph(f"<b>Data:</b> {linha_data}",  s["corpo"])]

    t = Table(
        [[nome_cell, turma_cell, data_cell]],
        colWidths=[CONTENT_W * 0.5, CONTENT_W * 0.25, CONTENT_W * 0.25],
    )
    t.setStyle(TableStyle([
        ("BACKGROUND",  (0,0), (-1,-1), CINZA_BG),
        ("BOX",         (0,0), (-1,-1), 1, CINZA_BORDA),
        ("TOPPADDING",  (0,0), (-1,-1), 4),
        ("BOTTOMPADDING",(0,0),(-1,-1), 4),
        ("LEFTPADDING", (0,0), (-1,-1), 8),
        ("RIGHTPADDING",(0,0), (-1,-1), 8),
        ("VALIGN",      (0,0), (-1,-1), "MIDDLE"),
        ("ROUNDEDCORNERS", [4]),
    ]))
    return t


# ── Helper: rodapé ────────────────────────────────────────
def _rodape(modulo_label: str, nivel: int, serie: str, pagina: str, total: str, estilos):
    esq   = Paragraph(f"Língua Portuguesa — {modulo_label}", estilos["rodape"])
    centro= Paragraph(f"GeraFicha · Nível {nivel} · Série {serie}", estilos["rodape_centro"])
    dir_  = Paragraph(f"Página {pagina} de {total}", estilos["rodape_dir"])
    t = Table([[esq, centro, dir_]], colWidths=[CONTENT_W/3, CONTENT_W/3, CONTENT_W/3])
    t.setStyle(TableStyle([
        ("VALIGN", (0,0), (-1,-1), "MIDDLE"),
        ("TOPPADDING",   (0,0), (-1,-1), 3),
        ("BOTTOMPADDING",(0,0), (-1,-1), 3),
        ("LINEABOVE", (0,0), (-1,-1), 1, HexColor("#c8e6c9"), 0, (4,3)),
    ]))
    return t


# ═══════════════════════════════════════════════════════════
# CONSTRUTORES DOS BLOCOS
# ═══════════════════════════════════════════════════════════

def _bloco1_prepare_se(questoes: list[QuestionData], estilos) -> list:
    """Bloco 1 — Prepare-se: exercícios de aquecimento em grid."""
    elementos = []
    elementos.append(_titulo_bloco(1, "*", "Prepare-se",
                                   AMARELO_BG, HexColor("#5d4037"), AMARELO))
    elementos.append(Spacer(1, 3))

    # Grid 3 colunas
    col_w = (CONTENT_W - 8) / 3
    linhas = []
    linha_atual = []

    for i, q in enumerate(questoes):
        # Palavra/enunciado principal — DS usa opcoes[0], outros usam enunciado
        palavra = q.opcoes[0] if q.tipo == "DS" and q.opcoes else q.enunciado
        # Instrução secundária
        inst = ""
        if q.tipo == "DS":
            inst = q.enunciado or "Sílabas / Tônica:"
        elif q.tipo == "VF":
            inst = "( V )  ( F )"
        elif q.tipo == "MC":
            inst = q.opcoes[0] if q.opcoes else "Alternativa:"
        elif q.tipo == "CL":
            inst = "Complete:"
        else:
            inst = "Resposta:"

        cell_content = [
            Paragraph(f"<b>{palavra}</b>", ParagraphStyle(
                "prep_word", fontSize=10, fontName="Helvetica-Bold",
                textColor=LARANJA, alignment=TA_CENTER, leading=13,
                spaceAfter=2,
            )),
            Paragraph(inst, ParagraphStyle(
                "prep_inst", fontSize=7.5, textColor=CINZA,
                alignment=TA_CENTER, leading=10
            )),
            HRFlowable(width=col_w - 16, color=AMARELO, thickness=1, spaceAfter=14, spaceBefore=4, lineCap="round"),
        ]
        cell = Table([[cell_content]], colWidths=[col_w - 4])
        cell.setStyle(TableStyle([
            ("BACKGROUND",   (0,0), (-1,-1), AMARELO_BG),
            ("BOX",          (0,0), (-1,-1), 1, HexColor("#ffe082")),
            ("TOPPADDING",   (0,0), (-1,-1), 5),
            ("BOTTOMPADDING",(0,0), (-1,-1), 5),
            ("LEFTPADDING",  (0,0), (-1,-1), 6),
            ("RIGHTPADDING", (0,0), (-1,-1), 6),
            ("ROUNDEDCORNERS", [4]),
        ]))
        linha_atual.append(cell)

        if len(linha_atual) == 3 or i == len(questoes) - 1:
            # Padding de células vazias se necessário
            while len(linha_atual) < 3:
                linha_atual.append("")
            linhas.append(linha_atual)
            linha_atual = []

    if linhas:
        grid = Table(linhas, colWidths=[col_w, col_w, col_w], rowHeights=None)
        grid.setStyle(TableStyle([
            ("VALIGN",   (0,0), (-1,-1), "TOP"),
            ("LEFTPADDING",  (0,0), (-1,-1), 2),
            ("RIGHTPADDING", (0,0), (-1,-1), 2),
            ("TOPPADDING",   (0,0), (-1,-1), 2),
            ("BOTTOMPADDING",(0,0), (-1,-1), 2),
        ]))
        elementos.append(grid)

    elementos.append(Spacer(1, 4))
    return elementos


def _bloco2_licao(titulo: str, narrativa: str, exemplos: list[ExemploData],
                  imagem_path: Optional[str], estilos) -> list:
    """Bloco 2 — Lição: narrativa + ilustração + exemplos resolvidos."""
    elementos = []
    elementos.append(_titulo_bloco(2, "L", f"Lição — \"{titulo}\"",
                                   VERDE_MENTA, VERDE, VERDE_CLARO))
    elementos.append(Spacer(1, 3))

    # Texto da narrativa
    parags_narrativa = []
    for linha in narrativa.strip().split("\n"):
        if linha.strip():
            parags_narrativa.append(Paragraph(linha.strip(), estilos["narrativa"]))

    # Exemplos resolvidos
    exemplos_elementos = []
    exemplos_elementos.append(Paragraph(
        "<b>Exemplos resolvidos:</b>",
        ParagraphStyle("ex_titulo", fontSize=8.5, fontName="Helvetica-Bold",
                       textColor=VERDE, spaceAfter=4)
    ))
    for ex in exemplos:
        # Destaca a sílaba tônica em vermelho/rosa
        silabas_fmt = ex.silabas.replace(
            ex.tonica,
            f'<font color="#e91e63"><b><u>{ex.tonica}</u></b></font>'
        )
        obs = f' <font color="#aaaaaa" size="8">{ex.observacao}</font>' if ex.observacao else ""
        linha_ex = (
            f'<b>{ex.palavra}</b>  →  {silabas_fmt}{obs}'
        )
        exemplos_elementos.append(Paragraph(linha_ex, estilos["exemplo_txt"]))
        exemplos_elementos.append(Spacer(1, 3))

    caixa_exemplos = _caixa(
        exemplos_elementos,
        cor_fundo=white,
        cor_borda=VERDE_CLARO,
        padding=(7, 10),
    )

    # Coluna esquerda: narrativa + exemplos
    col_esq = parags_narrativa + [Spacer(1, 5), caixa_exemplos]

    # Coluna direita: ilustração (placeholder se não tiver imagem)
    if imagem_path and os.path.exists(imagem_path):
        from reportlab.platypus import Image as RLImage
        img = RLImage(imagem_path, width=28*mm, height=28*mm, kind="proportional")
        col_dir = [img]
    else:
        # Placeholder quando imagem não disponível
        col_dir = [
            Table(
                [[Paragraph("<i>ilustracao<br/>do nivel</i>",
                            ParagraphStyle("ph2", fontSize=7.5, textColor=CINZA,
                                          alignment=TA_CENTER))]],
                colWidths=[28*mm],
            )
        ]

    legenda = [Paragraph(
        "<i>A sílaba tônica é a que\npronunciamos com mais força!</i>",
        ParagraphStyle("leg", fontSize=7.5, textColor=CINZA,
                       alignment=TA_CENTER, leading=10)
    )]

    col_dir_completa = col_dir + [Spacer(1, 4)] + legenda

    cw_esq = CONTENT_W - 30*mm - 4
    cw_dir = 30*mm
    layout = Table(
        [[col_esq, col_dir_completa]],
        colWidths=[cw_esq, cw_dir],
    )
    layout.setStyle(TableStyle([
        ("VALIGN", (0,0), (-1,-1), "TOP"),
        ("LEFTPADDING",  (0,0), (-1,-1), 0),
        ("RIGHTPADDING", (0,0), (-1,-1), 0),
        ("TOPPADDING",   (0,0), (-1,-1), 0),
        ("BOTTOMPADDING",(0,0), (-1,-1), 0),
    ]))

    caixa_licao = _caixa(layout, cor_fundo=VERDE_MENTA, cor_borda=HexColor("#c8e6c9"), padding=(8, 10))
    elementos.append(caixa_licao)
    elementos.append(Spacer(1, 4))
    return elementos


def _bloco3_vamos_praticar(questoes: list[QuestionData], estilos) -> list:
    """Bloco 3 — Vamos Praticar!: exercícios guiados com gabarito de suporte."""
    elementos = []
    elementos.append(_titulo_bloco(3, ">>", "Vamos Praticar!",
                                   AZUL_BG, AZUL, AZUL))
    elementos.append(Paragraph(
        "<b>Instrução:</b> Siga as orientações e confira as respostas na caixa abaixo.",
        ParagraphStyle("instrucao", fontSize=8.5, textColor=CINZA, spaceAfter=5)
    ))

    col_w = (CONTENT_W - 6) / min(len(questoes), 4)
    cells = []
    for q in questoes:
        cell_items = [
            Paragraph(q.enunciado, ParagraphStyle(
                "vp_enum", fontSize=8.5, fontName="Helvetica-Bold",
                textColor=AZUL, spaceAfter=3
            )),
            Paragraph(
                f'<b>{q.opcoes[0] if q.opcoes else "?"}</b>',
                ParagraphStyle("vp_palavra", fontSize=12, fontName="Helvetica-Bold",
                               alignment=TA_CENTER, spaceAfter=3)
            ),
        ]
        # Campos de resposta
        for label in ["Sílabas:", "Tônica:"]:
            cell_items.append(Paragraph(
                f'<font color="#90a4ae" size="7.5"><b>{label}</b></font>',
                ParagraphStyle("vp_label", fontSize=7.5)
            ))
            cell_items.append(HRFlowable(
                width=col_w - 16, color=HexColor("#64b5f6"),
                thickness=1, spaceAfter=14, spaceBefore=1, lineCap="round"
            ))

        c = Table([[cell_items]], colWidths=[col_w - 4])
        c.setStyle(TableStyle([
            ("BACKGROUND",   (0,0), (-1,-1), AZUL_BG),
            ("BOX",          (0,0), (-1,-1), 1, HexColor("#90caf9")),
            ("TOPPADDING",   (0,0), (-1,-1), 6),
            ("BOTTOMPADDING",(0,0), (-1,-1), 6),
            ("LEFTPADDING",  (0,0), (-1,-1), 7),
            ("RIGHTPADDING", (0,0), (-1,-1), 7),
            ("ROUNDEDCORNERS", [5]),
        ]))
        cells.append(c)

    if cells:
        grid = Table([cells], colWidths=[col_w] * len(cells))
        grid.setStyle(TableStyle([
            ("VALIGN",   (0,0), (-1,-1), "TOP"),
            ("LEFTPADDING",  (0,0), (-1,-1), 2),
            ("RIGHTPADDING", (0,0), (-1,-1), 2),
            ("TOPPADDING",   (0,0), (-1,-1), 2),
            ("BOTTOMPADDING",(0,0), (-1,-1), 2),
        ]))
        elementos.append(grid)

    # Gabarito de suporte
    respostas_txt = "  |  ".join([q.resposta for q in questoes if q.resposta])
    elementos.append(Spacer(1, 4))
    hint = Table([[
        Paragraph("*", ParagraphStyle("star", fontSize=11, fontName="Helvetica-Bold", textColor=AMARELO)),
        Paragraph(f"<b>Respostas:</b>  "
                  f'<font color="#2e7d32">{respostas_txt}</font>',
                  ParagraphStyle("hint_txt", fontSize=8, fontName="Helvetica")),
    ]], colWidths=[18, CONTENT_W - 18])
    hint.setStyle(TableStyle([
        ("BACKGROUND",   (0,0), (-1,-1), AMARELO_HINT),
        ("BOX",          (0,0), (-1,-1), 1, HexColor("#fff176")),
        ("TOPPADDING",   (0,0), (-1,-1), 4),
        ("BOTTOMPADDING",(0,0), (-1,-1), 4),
        ("LEFTPADDING",  (0,0), (-1,-1), 8),
        ("RIGHTPADDING", (0,0), (-1,-1), 8),
        ("VALIGN",       (0,0), (-1,-1), "MIDDLE"),
        ("ROUNDEDCORNERS", [4]),
    ]))
    elementos.append(hint)
    elementos.append(Spacer(1, 4))
    return elementos


def _questao_ds(q: QuestionData, col_w: float, estilos) -> Table:
    """Questão tipo DS — dividir sílabas."""
    num = q.numero
    palavra = q.opcoes[0] if q.opcoes else q.enunciado
    items = [
        Paragraph(f'<font color="#aaaaaa" size="7.5"><b>{num}</b></font>',
                  ParagraphStyle("ds_num", fontSize=7.5, alignment=TA_CENTER)),
        Paragraph(f'<b>{palavra}</b>', ParagraphStyle(
            "ds_palavra", fontSize=11, fontName="Helvetica-Bold",
            alignment=TA_CENTER, spaceAfter=3
        )),
    ]
    for label in ["Silabas:", "Tonica:"]:
        items.append(Paragraph(
            f'<font color="#90a4ae" size="7"><b>{label}</b></font>',
            ParagraphStyle("ds_lbl", fontSize=7)
        ))
        items.append(HRFlowable(
            width=col_w - 14, color=HexColor("#bdbdbd"),
            thickness=1, spaceAfter=16, spaceBefore=1
        ))

    c = Table([[items]], colWidths=[col_w - 4])
    c.setStyle(TableStyle([
        ("BACKGROUND",   (0,0), (-1,-1), white),
        ("BOX",          (0,0), (-1,-1), 1, CINZA_BORDA),
        ("TOPPADDING",   (0,0), (-1,-1), 5),
        ("BOTTOMPADDING",(0,0), (-1,-1), 5),
        ("LEFTPADDING",  (0,0), (-1,-1), 6),
        ("RIGHTPADDING", (0,0), (-1,-1), 6),
        ("ROUNDEDCORNERS", [5]),
    ]))
    return c


def _questao_vf(q: QuestionData, estilos) -> Table:
    """Questão tipo VF — verdadeiro ou falso."""
    num_cell = Paragraph(f'<b>{q.numero}</b>', ParagraphStyle(
        "vf_num", fontSize=11, fontName="Helvetica-Bold",
        textColor=ROSA, alignment=TA_CENTER
    ))
    afirmacao = Paragraph(q.enunciado, ParagraphStyle(
        "vf_afirm", fontSize=9, fontName="Helvetica"
    ))
    opcoes = Paragraph(
        '  <b>( V )</b>    <b>( F )</b>',
        ParagraphStyle("vf_op", fontSize=9, fontName="Helvetica")
    )
    t = Table(
        [[num_cell, afirmacao, opcoes]],
        colWidths=[28, CONTENT_W - 28 - 60, 60],
    )
    t.setStyle(TableStyle([
        ("BACKGROUND",   (0,0), (-1,-1), white),
        ("BOX",          (0,0), (-1,-1), 1, CINZA_BORDA),
        ("TOPPADDING",   (0,0), (-1,-1), 5),
        ("BOTTOMPADDING",(0,0), (-1,-1), 5),
        ("LEFTPADDING",  (0,0), (-1,-1), 7),
        ("RIGHTPADDING", (0,0), (-1,-1), 7),
        ("VALIGN",       (0,0), (-1,-1), "MIDDLE"),
        ("ROUNDEDCORNERS", [5]),
    ]))
    return t


def _carregar_imagem_url(url: str, larg: float, alt: float):
    """Baixa imagem de URL e retorna RLImage ou None em caso de falha."""
    try:
        import httpx, io as _io
        from reportlab.platypus import Image as RLImage
        r = httpx.get(url, timeout=8, follow_redirects=True)
        r.raise_for_status()
        buf = _io.BytesIO(r.content)
        return RLImage(buf, width=larg, height=alt, kind="proportional")
    except Exception:
        return None


def _questao_ie(q: QuestionData, col_w: float, estilos) -> Table:
    """Questão tipo IE — imagem + escrita."""
    img_larg = col_w - 28
    img_alt = 50

    # Tenta usar imagem real; cai no placeholder se não houver
    img_elem = None
    if q.imagem_path:
        img_elem = _carregar_imagem_url(q.imagem_path, img_larg, img_alt)

    campos = [img_elem if img_elem else RetanguloImagem(largura=img_larg, altura=img_alt), Spacer(1, 4)]
    for label in ["Nome:", "Silabas:", "Tonica:"]:
        campos.append(Paragraph(
            f'<font color="#90a4ae" size="7"><b>{label}</b></font>',
            ParagraphStyle("ie_lbl", fontSize=7)
        ))
        campos.append(HRFlowable(
            width=col_w - 16, color=HexColor("#bdbdbd"),
            thickness=1, spaceAfter=14, spaceBefore=1
        ))

    c = Table([[campos]], colWidths=[col_w - 4])
    c.setStyle(TableStyle([
        ("BACKGROUND",   (0,0), (-1,-1), white),
        ("BOX",          (0,0), (-1,-1), 1, CINZA_BORDA),
        ("TOPPADDING",   (0,0), (-1,-1), 6),
        ("BOTTOMPADDING",(0,0), (-1,-1), 6),
        ("LEFTPADDING",  (0,0), (-1,-1), 7),
        ("RIGHTPADDING", (0,0), (-1,-1), 7),
        ("ALIGN",        (0,0), (-1,-1), "CENTER"),
        ("ROUNDEDCORNERS", [6]),
    ]))
    return c


def _subtitulo_atividade(codigo: str, descricao: str) -> Table:
    t = Table([[
        Paragraph(f'<b>{codigo}</b>', ParagraphStyle(
            "sub_cod", fontSize=8.5, textColor=HexColor("#880e4f"),
            fontName="Helvetica-Bold"
        )),
        Paragraph(descricao, ParagraphStyle(
            "sub_desc", fontSize=8.5, textColor=CINZA, fontName="Helvetica"
        )),
    ]], colWidths=[30, CONTENT_W - 30])
    t.setStyle(TableStyle([
        ("VALIGN",      (0,0), (-1,-1), "MIDDLE"),
        ("TOPPADDING",  (0,0), (-1,-1), 3),
        ("BOTTOMPADDING",(0,0),(-1,-1), 2),
        ("LINEBELOW",   (0,0), (-1,-1), 0.8, CINZA_BORDA),
    ]))
    return t


def _bloco4_pratica(questoes: list[QuestionData], estilos) -> list:
    """Bloco 4 — Prática: exercícios livres agrupados por tipo."""
    elementos = []
    elementos.append(_titulo_bloco(4, "P", "Pratica",
                                   ROSA_BG, HexColor("#880e4f"), ROSA))
    elementos.append(Spacer(1, 3))

    # Agrupar por tipo
    grupos: dict[str, list[QuestionData]] = {}
    for q in questoes:
        grupos.setdefault(q.tipo, []).append(q)

    descricoes = {
        "DS": "Separe as sílabas e escreva a sílaba tônica",
        "VF": "Marque V (Verdadeiro) ou F (Falso)",
        "IE": "Observe a imagem, escreva o nome e separe as sílabas",
        "MC": "Marque a alternativa correta",
        "CL": "Complete as lacunas",
        "RF": "Reescreva as frases corrigindo os erros",
    }

    for tipo, qs in grupos.items():
        desc = descricoes.get(tipo, "Resolva as questões")
        elementos.append(_subtitulo_atividade(tipo, desc))
        elementos.append(Spacer(1, 3))

        if tipo == "DS":
            col_w = (CONTENT_W - 6) / 4
            linhas_ds, linha_atual = [], []
            for i, q in enumerate(qs):
                linha_atual.append(_questao_ds(q, col_w, estilos))
                if len(linha_atual) == 4 or i == len(qs) - 1:
                    while len(linha_atual) < 4:
                        linha_atual.append("")
                    linhas_ds.append(linha_atual)
                    linha_atual = []
            if linhas_ds:
                grid = Table(linhas_ds, colWidths=[col_w] * 4)
                grid.setStyle(TableStyle([
                    ("VALIGN",      (0,0), (-1,-1), "TOP"),
                    ("LEFTPADDING", (0,0), (-1,-1), 2),
                    ("RIGHTPADDING",(0,0), (-1,-1), 2),
                    ("TOPPADDING",  (0,0), (-1,-1), 2),
                    ("BOTTOMPADDING",(0,0),(-1,-1), 2),
                ]))
                elementos.append(grid)

        elif tipo == "VF":
            for q in qs:
                elementos.append(_questao_vf(q, estilos))
                elementos.append(Spacer(1, 3))

        elif tipo == "IE":
            col_w = (CONTENT_W - 6) / 3
            cells_ie = [_questao_ie(q, col_w, estilos) for q in qs]
            while len(cells_ie) < 3:
                cells_ie.append("")
            grid_ie = Table([cells_ie], colWidths=[col_w] * 3)
            grid_ie.setStyle(TableStyle([
                ("VALIGN",      (0,0), (-1,-1), "TOP"),
                ("LEFTPADDING", (0,0), (-1,-1), 3),
                ("RIGHTPADDING",(0,0), (-1,-1), 3),
                ("TOPPADDING",  (0,0), (-1,-1), 3),
                ("BOTTOMPADDING",(0,0),(-1,-1), 3),
            ]))
            elementos.append(grid_ie)

        else:
            # Questões genéricas (MC, CL, RF, PG...)
            for q in qs:
                num = q.numero
                enunciado = Paragraph(
                    f'<b>{num}.</b> {q.enunciado}',
                    ParagraphStyle("gen_enum", fontSize=9, fontName="Helvetica",
                                   spaceAfter=3)
                )
                elementos.append(enunciado)
                if q.tipo == "MC" and q.opcoes:
                    for op in q.opcoes:
                        elementos.append(Paragraph(
                            f"   {op}",
                            ParagraphStyle("mc_op", fontSize=9, leftIndent=16)
                        ))
                    # Linha de resposta após opções MC
                    elementos.append(Spacer(1, 2))
                    elementos.append(HRFlowable(
                        width=CONTENT_W * 0.5, color=CINZA_BORDA,
                        thickness=0.8, spaceAfter=8, spaceBefore=2
                    ))
                elif q.tipo in ("CL", "RF", "PG"):
                    # Linhas de escrita generosas para completar/reescrever
                    for _ in range(2):
                        elementos.append(HRFlowable(
                            width=CONTENT_W, color=CINZA_BORDA,
                            thickness=0.8, spaceAfter=12, spaceBefore=2
                        ))
                else:
                    # Linha simples para outros tipos
                    elementos.append(HRFlowable(
                        width=CONTENT_W, color=CINZA_BORDA,
                        thickness=0.8, spaceAfter=8, spaceBefore=2
                    ))

        elementos.append(Spacer(1, 4))
    return elementos


def _pagina_gabarito(params: FichaParams, estilos) -> list:
    """Página de gabarito para o professor."""
    modulo_labels = {
        "acentuacao": "Acentuação", "ortografia": "Ortografia",
        "classes": "Classes de Palavras", "sintaxe": "Sintaxe e Análise",
        "interpretacao": "Interpretação e Produção",
    }
    mod_label = modulo_labels.get(params.modulo, params.modulo.title())

    elementos = []

    # Cabeçalho gabarito
    elementos.append(Paragraph(
        f"Gabarito - Modo Professor",
        ParagraphStyle("gab_h", fontSize=14, fontName="Helvetica-Bold",
                       textColor=CINZA, alignment=TA_CENTER)
    ))
    elementos.append(Paragraph(
        f"Ficha: Nível {params.nivel} — {params.titulo_licao} — Série {params.serie}  ·  GeraFicha",
        ParagraphStyle("gab_sub", fontSize=8, textColor=CINZA, alignment=TA_CENTER)
    ))
    elementos.append(Spacer(1, 4))
    elementos.append(LinhaColorida(CINZA_BORDA, tracejado=True))
    elementos.append(Spacer(1, 5))

    # Aviso
    aviso = Table([[
        Paragraph("!", ParagraphStyle("av_icon", fontSize=11, fontName="Helvetica-Bold", textColor=AMARELO)),
        Paragraph(
            "<b>Esta pagina e exclusiva para o professor ou responsavel.</b> "
            "Nao inclua na copia do aluno ao imprimir.",
            ParagraphStyle("av_txt", fontSize=8.5, fontName="Helvetica")
        ),
    ]], colWidths=[18, CONTENT_W - 18])
    aviso.setStyle(TableStyle([
        ("BACKGROUND",  (0,0), (-1,-1), AMARELO_BG),
        ("BOX",         (0,0), (-1,-1), 1, HexColor("#ffe082")),
        ("TOPPADDING",  (0,0), (-1,-1), 5),
        ("BOTTOMPADDING",(0,0),(-1,-1), 5),
        ("LEFTPADDING", (0,0), (-1,-1), 8),
        ("RIGHTPADDING",(0,0), (-1,-1), 8),
        ("VALIGN",      (0,0), (-1,-1), "MIDDLE"),
        ("ROUNDEDCORNERS", [4]),
    ]))
    elementos.append(aviso)
    elementos.append(Spacer(1, 8))

    def _secao_gabarito(titulo: str, questoes: list[QuestionData]):
        sec = []
        sec.append(Paragraph(f"<b>{titulo}</b>",
                              ParagraphStyle("gab_sec", fontSize=9,
                                             fontName="Helvetica-Bold",
                                             textColor=CINZA,
                                             spaceAfter=3, spaceBefore=6)))
        sec.append(LinhaColorida(CINZA_BORDA))
        sec.append(Spacer(1, 3))

        col_w = (CONTENT_W - 6) / 4
        linhas, atual = [], []
        for i, q in enumerate(questoes):
            resp_fmt = q.resposta
            cell = Table([[
                Paragraph(f'<font color="#546e7a" size="8"><b>{q.numero}.</b></font><br/>'
                          f'<font color="#2e7d32">{resp_fmt}</font>',
                          ParagraphStyle("gab_item", fontSize=9, fontName="Helvetica",
                                         leading=13))
            ]], colWidths=[col_w - 4])
            cell.setStyle(TableStyle([
                ("BACKGROUND",  (0,0), (-1,-1), white),
                ("BOX",         (0,0), (-1,-1), 1, CINZA_BORDA),
                ("TOPPADDING",  (0,0), (-1,-1), 4),
                ("BOTTOMPADDING",(0,0),(-1,-1), 4),
                ("LEFTPADDING", (0,0), (-1,-1), 6),
                ("RIGHTPADDING",(0,0), (-1,-1), 6),
                ("ROUNDEDCORNERS", [4]),
            ]))
            atual.append(cell)
            if len(atual) == 4 or i == len(questoes) - 1:
                while len(atual) < 4:
                    atual.append("")
                linhas.append(atual)
                atual = []

        if linhas:
            grid = Table(linhas, colWidths=[col_w] * 4)
            grid.setStyle(TableStyle([
                ("VALIGN",      (0,0), (-1,-1), "TOP"),
                ("LEFTPADDING", (0,0), (-1,-1), 2),
                ("RIGHTPADDING",(0,0), (-1,-1), 2),
                ("TOPPADDING",  (0,0), (-1,-1), 2),
                ("BOTTOMPADDING",(0,0),(-1,-1), 2),
            ]))
            sec.append(grid)
        return sec

    todas = params.bloco1_questoes + params.bloco3_questoes + params.bloco4_questoes
    if params.bloco1_questoes:
        elementos.extend(_secao_gabarito("Bloco 1 — Prepare-se", params.bloco1_questoes))
    if params.bloco3_questoes:
        elementos.extend(_secao_gabarito("Bloco 3 — Vamos Praticar!", params.bloco3_questoes))
    if params.bloco4_questoes:
        elementos.extend(_secao_gabarito("Bloco 4 — Prática", params.bloco4_questoes))

    return elementos


# ═══════════════════════════════════════════════════════════
# FUNÇÃO PRINCIPAL: gerar_pdf
# ═══════════════════════════════════════════════════════════

def gerar_pdf(params: FichaParams) -> bytes:
    """
    Gera o PDF completo da ficha e retorna os bytes.
    Estrutura: cabeçalho → identificação → 4 blocos → rodapé [→ gabarito]
    """
    buffer = io.BytesIO()
    estilos = _estilos()

    modulo_labels = {
        "acentuacao": "Acentuação", "ortografia": "Ortografia",
        "classes": "Classes de Palavras", "sintaxe": "Sintaxe e Análise",
        "interpretacao": "Interpretação e Produção",
    }
    mod_label = modulo_labels.get(params.modulo, params.modulo.title())

    total_paginas = "3" if params.incluir_gabarito else "2"

    # ── Contador de página via canvas callback ─────────────
    pagina_atual = [1]

    def _cabecalho_rodape(canvas, doc):
        """Callback chamado pelo ReportLab em cada página."""
        canvas.saveState()
        pag = pagina_atual[0]

        # Borda superior colorida
        canvas.setFillColor(VERDE)
        canvas.rect(0, PAGE_H - 5, PAGE_W, 5, fill=True, stroke=False)

        # Cabeçalho
        y_cab = PAGE_H - 5 - MARGEM_TOPO - 12*mm

        # Logo GF
        canvas.setFillColor(VERDE)
        canvas.roundRect(MARGEM_ESQUERDA, y_cab - 2, 10*mm, 10*mm, 3, fill=True, stroke=False)
        canvas.setFillColor(white)
        canvas.setFont("Helvetica-Bold", 10)
        canvas.drawCentredString(MARGEM_ESQUERDA + 5*mm, y_cab + 2.5, "GF")

        # Nome produto
        canvas.setFillColor(VERDE)
        canvas.setFont("Helvetica-Bold", 13)
        canvas.drawString(MARGEM_ESQUERDA + 12*mm, y_cab + 4, "GeraFicha")

        sub = ("Sílabas Tônicas — continuação" if pag > 1 and not (params.incluir_gabarito and pag == int(total_paginas))
               else "Língua Portuguesa — Ensino Fundamental")
        canvas.setFillColor(CINZA)
        canvas.setFont("Helvetica", 7.5)
        canvas.drawString(MARGEM_ESQUERDA + 12*mm, y_cab - 1, sub)

        # Badges (direita)
        badges = [
            (mod_label,   AZUL),
            (f"Nível {params.nivel}", VERDE),
            (f"Série {params.serie}", AMARELO),
        ]
        x_badge = PAGE_W - MARGEM_DIREITA
        for txt, cor in reversed(badges):
            canvas.setFillColor(cor)
            larg = canvas.stringWidth(txt, "Helvetica-Bold", 8.5) + 16
            canvas.roundRect(x_badge - larg, y_cab, larg, 10*mm, 5, fill=True, stroke=False)
            canvas.setFillColor(white if cor != AMARELO else HexColor("#5d4037"))
            canvas.setFont("Helvetica-Bold", 8.5)
            canvas.drawCentredString(x_badge - larg/2, y_cab + 3.5, txt)
            x_badge -= larg + 4

        # Linha tracejada abaixo do cabeçalho
        y_linha = y_cab - 4
        canvas.setStrokeColor(HexColor("#c8e6c9"))
        canvas.setLineWidth(1.2)
        canvas.setDash(4, 3)
        canvas.line(MARGEM_ESQUERDA, y_linha, PAGE_W - MARGEM_DIREITA, y_linha)
        canvas.setDash()

        # Rodapé
        y_rod = MARGEM_BASE + 4
        canvas.setStrokeColor(HexColor("#c8e6c9"))
        canvas.setLineWidth(1)
        canvas.setDash(4, 3)
        canvas.line(MARGEM_ESQUERDA, y_rod + 8, PAGE_W - MARGEM_DIREITA, y_rod + 8)
        canvas.setDash()

        canvas.setFillColor(CINZA)
        canvas.setFont("Helvetica", 7.5)
        canvas.drawString(MARGEM_ESQUERDA, y_rod, f"Língua Portuguesa — {mod_label}")

        canvas.setFillColor(VERDE)
        canvas.setFont("Helvetica-Bold", 8.5)
        canvas.drawCentredString(PAGE_W / 2, y_rod,
                                 f"GeraFicha · Nível {params.nivel} · Série {params.serie}")

        canvas.setFillColor(CINZA)
        canvas.setFont("Helvetica", 7.5)
        canvas.drawRightString(PAGE_W - MARGEM_DIREITA, y_rod,
                               f"Página {pag} de {total_paginas}")

        pagina_atual[0] += 1
        canvas.restoreState()

    # ── Documento ─────────────────────────────────────────
    doc = SimpleDocTemplate(
        buffer,
        pagesize=A4,
        leftMargin=MARGEM_ESQUERDA,
        rightMargin=MARGEM_DIREITA,
        topMargin=MARGEM_TOPO + 16*mm,   # espaço para cabeçalho desenhado no canvas
        bottomMargin=MARGEM_BASE + 10*mm, # espaço para rodapé
        title=f"GeraFicha — Nível {params.nivel} Série {params.serie}",
        author="GeraFicha — Irmãos Polícia Educação",
        subject=f"Ficha pedagógica: {mod_label}",
    )

    story = []

    # ── Identificação ──────────────────────────────────────
    story.append(_linha_identificacao(
        nome=params.nome_aluno,
        turma=params.turma,
        data=params.data,
        estilos=estilos,
    ))
    story.append(Spacer(1, 4))

    # ── Bloco 1 ────────────────────────────────────────────
    story.extend(_bloco1_prepare_se(params.bloco1_questoes, estilos))

    # ── Bloco 2 ────────────────────────────────────────────
    story.extend(_bloco2_licao(
        titulo=params.titulo_licao,
        narrativa=params.narrativa_licao,
        exemplos=params.exemplos_licao,
        imagem_path=params.imagem_licao_path,
        estilos=estilos,
    ))

    # ── Quebra de página antes do Bloco 3 ─────────────────
    from reportlab.platypus import PageBreak
    story.append(PageBreak())

    # ── Identificação pág. 2 ──────────────────────────────
    story.append(_linha_identificacao(
        nome=params.nome_aluno,
        turma=params.turma,
        data=params.data,
        estilos=estilos,
    ))
    story.append(Spacer(1, 4))

    # ── Bloco 3 ────────────────────────────────────────────
    story.extend(_bloco3_vamos_praticar(params.bloco3_questoes, estilos))

    # ── Bloco 4 ────────────────────────────────────────────
    story.extend(_bloco4_pratica(params.bloco4_questoes, estilos))

    # ── Gabarito (opcional) ────────────────────────────────
    if params.incluir_gabarito:
        story.append(PageBreak())
        story.extend(_pagina_gabarito(params, estilos))

    # ── Build ──────────────────────────────────────────────
    doc.build(story, onFirstPage=_cabecalho_rodape, onLaterPages=_cabecalho_rodape)

    pdf_bytes = buffer.getvalue()
    buffer.close()
    return pdf_bytes
