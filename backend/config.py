"""
GeraFicha — Configurações centralizadas
Lê variáveis do .env via pydantic-settings
"""
from pydantic_settings import BaseSettings
from functools import lru_cache


class Settings(BaseSettings):
    # Supabase
    supabase_url: str
    supabase_anon_key: str
    supabase_service_role_key: str

    # Storage
    storage_bucket_assets: str = "worksheet-assets"
    storage_bucket_pdfs: str = "worksheet-pdfs"
    pdf_link_expiry_seconds: int = 86400  # 24h

    # API
    api_port: int = 8000
    secret_key: str = "dev-secret-change-in-production"

    # PDF
    pdf_cache_dir: str = "./tmp/pdfs"
    pdf_timeout_seconds: int = 30

    # App
    log_level: str = "info"

    class Config:
        env_file = ".env"
        case_sensitive = False


@lru_cache()
def get_settings() -> Settings:
    return Settings()
