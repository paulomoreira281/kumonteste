"""
GeraFicha — Inserir questões no Supabase
Execute: python inserir_questoes.py

Lê os arquivos seed_*.sql e executa no Supabase via psycopg2.
Você precisará da CONNECTION STRING do Supabase (Settings → Database → Connection string → Python).
"""
import os
import sys
import glob

# ── Configuração ─────────────────────────────────────────────
# Coloque aqui a connection string do Supabase:
# Settings → Database → Connection string → Python (URI)
DATABASE_URL = os.getenv(
    "DATABASE_URL",
    "postgresql://postgres:[SUA-SENHA]@db.pzpzqnhdkfkuwzoujwjj.supabase.co:5432/postgres"
)

def main():
    try:
        import psycopg2
    except ImportError:
        print("Instalando psycopg2...")
        os.system(f"{sys.executable} -m pip install psycopg2-binary")
        import psycopg2

    print(f"Conectando ao banco...")
    try:
        conn = psycopg2.connect(DATABASE_URL)
        conn.autocommit = False
        cur = conn.cursor()
        print("Conectado!")
    except Exception as e:
        print(f"Erro ao conectar: {e}")
        print("\nConfigure a variável DATABASE_URL com a connection string do Supabase.")
        print("Supabase Dashboard → Settings → Database → Connection string → Python (URI)")
        sys.exit(1)

    # Busca todos os arquivos seed_*.sql na mesma pasta
    pasta = os.path.dirname(os.path.abspath(__file__))
    arquivos = sorted(glob.glob(os.path.join(pasta, "seed_*.sql")))

    if not arquivos:
        print("Nenhum arquivo seed_*.sql encontrado.")
        sys.exit(1)

    for arquivo in arquivos:
        nome = os.path.basename(arquivo)
        print(f"\nExecutando {nome}...")
        try:
            with open(arquivo, "r", encoding="utf-8") as f:
                sql = f.read()
            cur.execute(sql)
            conn.commit()
            print(f"  ✓ {nome} inserido com sucesso")
        except Exception as e:
            conn.rollback()
            print(f"  ✗ Erro em {nome}: {e}")

    # Conta questões inseridas
    cur.execute("SELECT COUNT(*) FROM questions")
    total = cur.fetchone()[0]
    print(f"\n✓ Total de questões no banco: {total}")

    cur.execute("SELECT module, level, series, COUNT(*) FROM questions GROUP BY module, level, series ORDER BY module, level, series")
    rows = cur.fetchall()
    print("\nQuestões por nível/série:")
    for row in rows:
        print(f"  {row[0]} | Nível {row[1]}{row[2]} → {row[3]} questões")

    cur.close()
    conn.close()
    print("\nConcluído!")

if __name__ == "__main__":
    main()
