"""
GeraFicha — Backend API
FastAPI + ReportLab
"""
import os
import logging
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from config import get_settings
from api import worksheets, scores, questions

# ── Logging ────────────────────────────────────────────────
settings = get_settings()
logging.basicConfig(
    level=getattr(logging, settings.log_level.upper(), logging.INFO),
    format="%(asctime)s [%(levelname)s] %(name)s: %(message)s",
)
logger = logging.getLogger("geraficha")

# ── Criar pasta de cache de PDFs ───────────────────────────
os.makedirs(settings.pdf_cache_dir, exist_ok=True)

# ── App ────────────────────────────────────────────────────
app = FastAPI(
    title="GeraFicha API",
    description="Motor de geração de fichas pedagógicas de Língua Portuguesa",
    version="1.0.0",
    docs_url="/docs",
    redoc_url="/redoc",
)

# ── CORS ───────────────────────────────────────────────────
# FRONTEND_URL pode conter múltiplas origens separadas por vírgula
_frontend_urls = os.getenv("FRONTEND_URL", "")
_extra_origins = [u.strip() for u in _frontend_urls.split(",") if u.strip()]

_allowed_origins = [
    "http://localhost:5173",   # Vite dev
    "http://localhost:3000",   # React dev alternativo
] + _extra_origins

app.add_middleware(
    CORSMiddleware,
    allow_origins=_allowed_origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# ── Routers ────────────────────────────────────────────────
app.include_router(worksheets.router, prefix="/api/worksheets", tags=["Fichas"])
app.include_router(scores.router,     prefix="/api/scores",     tags=["Pontuação"])
app.include_router(questions.router,  prefix="/api/questions",  tags=["Questões"])


# ── Health check ───────────────────────────────────────────
@app.get("/", tags=["Health"])
async def root():
    return {"status": "ok", "service": "GeraFicha API", "version": "1.0.0"}


@app.get("/health", tags=["Health"])
async def health():
    return {"status": "ok"}
