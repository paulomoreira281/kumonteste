# GeraFicha — Guia de Deploy

**Backend → Railway** | **Frontend → Vercel**

---

## Parte 1 — Backend no Railway

### 1. Criar conta e projeto

1. Acesse https://railway.app e entre com GitHub
2. Clique em **New Project → Deploy from GitHub repo**
3. Selecione este repositório e a pasta **`geraficha/backend`**
   - (ou faça push do repositório inteiro e configure o Root Directory como `geraficha/backend`)

### 2. Variáveis de ambiente no Railway

No painel do projeto Railway → **Variables**, adicione:

| Variável | Valor |
|---|---|
| `SUPABASE_URL` | `https://pzpzqnhdkfkuwzoujwjj.supabase.co` |
| `SUPABASE_ANON_KEY` | *(ver backend/.env)* |
| `SUPABASE_SERVICE_ROLE_KEY` | *(ver backend/.env)* |
| `STORAGE_BUCKET_ASSETS` | `worksheet-assets` |
| `STORAGE_BUCKET_PDFS` | `worksheet-pdfs` |
| `PDF_CACHE_DIR` | `/tmp/pdfs` |
| `LOG_LEVEL` | `info` |
| `FRONTEND_URL` | *(preencher depois com a URL da Vercel)* |

> **PORT** é configurado automaticamente pelo Railway — não precisa adicionar.

### 3. Verificar deploy

Após o deploy, acesse:
```
https://SEU-PROJETO.railway.app/health
```
Deve retornar: `{"status": "ok"}`

Documentação da API:
```
https://SEU-PROJETO.railway.app/docs
```

---

## Parte 2 — Frontend na Vercel

### 1. Criar projeto na Vercel

1. Acesse https://vercel.com e entre com GitHub
2. Clique em **Add New → Project**
3. Importe este repositório
4. Configure:
   - **Root Directory:** `geraficha/frontend`
   - **Framework Preset:** Vite
   - **Build Command:** `npm run build`
   - **Output Directory:** `dist`

### 2. Variáveis de ambiente na Vercel

Em **Project → Settings → Environment Variables**, adicione:

| Variável | Valor |
|---|---|
| `VITE_SUPABASE_URL` | `https://pzpzqnhdkfkuwzoujwjj.supabase.co` |
| `VITE_SUPABASE_ANON_KEY` | `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB6cHpxbmhka2ZrdXd6b3Vqd2pqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzIyMjAzNzYsImV4cCI6MjA4Nzc5NjM3Nn0.4vi__f52n0VpWrGBhnMx3SYBEFi8PkiWGMDAYyqQT1A` |
| `VITE_API_URL` | `https://SEU-PROJETO.railway.app` ← URL do Railway |

### 3. Verificar deploy

Após o deploy, a Vercel fornece uma URL do tipo:
```
https://geraficha-frontend.vercel.app
```

---

## Parte 3 — Conectar os dois

### Atualizar CORS no Railway

Após obter a URL da Vercel, volte ao Railway e adicione/atualize a variável:

```
FRONTEND_URL=https://geraficha-frontend.vercel.app
```

O Railway faz redeploy automático. Pronto — tudo funcionando!

### Atualizar URL autorizada no Supabase

No Supabase Dashboard → **Authentication → URL Configuration**:
- **Site URL:** `https://geraficha-frontend.vercel.app`
- **Redirect URLs:** adicionar `https://geraficha-frontend.vercel.app/**`

---

## Resumo dos serviços

| Serviço | URL | Custo |
|---|---|---|
| **Frontend** | `*.vercel.app` | Gratuito (Hobby) |
| **Backend** | `*.railway.app` | Gratuito até $5/mês de uso |
| **Banco + Auth** | Supabase | Gratuito (500 MB) |
| **Storage** | Supabase Storage | Gratuito (1 GB) |

---

## Deploy contínuo (automático)

Após a configuração inicial:
- Qualquer `git push` na branch `main` → Vercel e Railway fazem redeploy automaticamente
- Não precisa fazer nada manualmente

---

*GeraFicha — Deploy Guide · Março 2026*
