# GeraFicha

Gerador automático de fichas pedagógicas de Língua Portuguesa para impressão.
120 níveis — do 1.º ao 9.º ano do Ensino Fundamental — inspirado no método Kumon.

**Proprietário:** Irmãos Polícia — Educação
**PRD:** `../PRD_GeraFicha_v1.1.md`
**Roadmap:** `../ROADMAP_TECNICO.md`

---

## Estrutura do Projeto

```
geraficha/
├── frontend/               # React + TypeScript + TailwindCSS
│   └── src/
│       ├── components/     # Componentes reutilizáveis
│       ├── pages/          # Páginas (Dashboard, NovaFicha, Resultado...)
│       └── lib/            # Supabase client, helpers
│
├── backend/                # FastAPI (Python) — motor de PDF e API
│   ├── api/
│   │   ├── worksheets.py   # Geração de fichas e seleção de questões
│   │   ├── pdf.py          # Motor de PDF (ReportLab)
│   │   ├── scores.py       # Sistema de pontuação e recomendação
│   │   └── questions.py    # CRUD de questões
│   └── images/             # Assets SVG/PNG de desenvolvimento local
│
├── database/
│   └── schema.sql          # Schema completo do Supabase (execute aqui)
│
├── .env.example            # Variáveis de ambiente necessárias
├── .gitignore
└── README.md               # Este arquivo
```

---

## Pré-requisitos

- Node.js 20+
- Python 3.11+
- Git

---

## Projeto Supabase (já configurado)

| Item | Valor |
|---|---|
| **Project ID** | `pzpzqnhdkfkuwzoujwjj` |
| **URL** | `https://pzpzqnhdkfkuwzoujwjj.supabase.co` |
| **Dashboard** | https://supabase.com/dashboard/project/pzpzqnhdkfkuwzoujwjj |
| **Anon Key** | ver `backend/.env` |
| **Service Role Key** | ver `backend/.env` |

**Infraestrutura já provisionada:**
- ✅ Todas as 8 tabelas criadas (`users`, `students`, `images`, `questions`, `worksheets`, `worksheet_questions`, `pdf_exports`, `scores`)
- ✅ Buckets Storage: `worksheet-assets` (público) e `worksheet-pdfs` (privado)
- ✅ Triggers e RLS configurados

---

## Setup — Passo a Passo

### 1. Clonar o repositório

```bash
git clone <repo-url>
cd geraficha
```

### 2. Variáveis de ambiente (já preenchidas)

O arquivo `backend/.env` já contém as credenciais do projeto Supabase.
Para o frontend, crie `frontend/.env.local`:

```bash
cp .env.example frontend/.env.local
# As chaves VITE_* já estão preenchidas no .env.example
```

### 5. Instalar dependências do Frontend

```bash
cd frontend
npm install
```

### 6. Instalar dependências do Backend

```bash
cd backend
python -m venv .venv
# Windows:
.venv\Scripts\activate
# Mac/Linux:
source .venv/bin/activate

pip install -r requirements.txt
```

### 7. Rodar em desenvolvimento

**Frontend** (terminal 1):
```bash
cd frontend
npm run dev
# Disponível em http://localhost:5173
```

**Backend** (terminal 2):
```bash
cd backend
uvicorn main:app --reload --port 8000
# API disponível em http://localhost:8000
# Docs automáticas em http://localhost:8000/docs
```

---

## Etapa Atual de Desenvolvimento

Consulte `../ROADMAP_TECNICO.md` para ver o status de cada etapa.

| Etapa | Nome | Status |
|---|---|---|
| 0 | PRD e Documentação | ✅ |
| 1 | Ficha de exemplo visual | ✅ |
| 2 | Infraestrutura base | ✅ |
| 3 | Motor de PDF | ✅ |
| 4 | Interface web | ⬜ Próxima |
| 5 | Banco de questões | ⬜ |
| 6 | Sistema de pontuação | ⬜ |
| 7 | Conteúdo (120 níveis) | ⬜ |
| 8 | Beta e polimento | ⬜ |

---

## Estrutura das Fichas

Cada ficha segue a estrutura de **4 blocos** (inspirada no Kumon de Matemática):

| Bloco | Nome | Descrição |
|---|---|---|
| 1 | Prepare-se | Revisão rápida do nível anterior (3–5 exercícios) |
| 2 | Lição | Narrativa + ilustração + 2–3 exemplos resolvidos |
| 3 | Vamos Praticar! | Exercícios guiados com gabarito de suporte visível |
| 4 | Prática | Exercícios livres (DS + VF + IE mínimo) |

Referência visual: `../fichas-exemplo/ficha_nivel_01_serie_A.html`

---

## Sistema de Progressão

```
Série A → Pai registra nota (0–10)
  nota ≥ 7  → Avança para próximo nível (Série A)
  nota 5–6  → Repete com Série B (mesmo conteúdo, questões diferentes)
  nota ≤ 4  → Reforço Série R (ficha pré-definida focada nos pontos difíceis)
              → após Série R: retorna ao mesmo nível Série A
```

---

## Referências

- PRD completo: `../PRD_GeraFicha_v1.1.md`
- Roadmap técnico: `../ROADMAP_TECNICO.md`
- Ficha de exemplo: `../fichas-exemplo/ficha_nivel_01_serie_A.html`
- Schema SQL: `database/schema.sql`
