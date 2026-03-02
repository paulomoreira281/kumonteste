/** Cliente HTTP para a API FastAPI (backend) */

const API_BASE = import.meta.env.VITE_API_URL ?? 'http://localhost:8000'

export interface GerarFichaRequest {
  nivel: number
  serie: 'A' | 'B' | 'R'
  modulo: string
  nome_aluno: string
  nome_escola: string
  turma: string
  data: string
  incluir_gabarito: boolean
}

export interface PreviewFicha {
  nivel: number
  serie: string
  modulo: string
  titulo_licao: string
  total_questoes: { bloco1: number; bloco3: number; bloco4: number }
  tipos_bloco4: string[]
}

export interface NivelInfo {
  nivel: number
  modulo: string
  titulo: string
  series_disponiveis: string[]
}

export interface ScoreRequest {
  student_id: string
  worksheet_id: string
  nivel: number
  serie: 'A' | 'B' | 'R'
  score: number
}

export interface ScoreResponse {
  id: string
  student_id: string
  worksheet_id: string
  nivel: number
  serie: string
  score: number
  recommendation: 'advance' | 'repeat' | 'reinforce'
  decision: string | null
  proxima_ficha: {
    nivel: number
    serie: string
    mensagem: string
  }
  created_at: string
}

async function apiRequest<T>(
  path: string,
  options?: RequestInit,
): Promise<T> {
  const res = await fetch(`${API_BASE}${path}`, {
    headers: { 'Content-Type': 'application/json' },
    ...options,
  })
  if (!res.ok) {
    const err = await res.json().catch(() => ({ detail: res.statusText }))
    throw new Error(err.detail ?? 'Erro na API')
  }
  return res.json() as Promise<T>
}

/** Gera PDF e dispara download no browser */
export async function gerarFichaPDF(req: GerarFichaRequest): Promise<void> {
  const res = await fetch(`${API_BASE}/api/worksheets/generate`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(req),
  })
  if (!res.ok) {
    const err = await res.json().catch(() => ({ detail: res.statusText }))
    throw new Error(err.detail ?? 'Erro ao gerar PDF')
  }

  const blob = await res.blob()
  const url = URL.createObjectURL(blob)
  const a = document.createElement('a')
  const filename =
    res.headers.get('Content-Disposition')?.match(/filename="(.+)"/)?.[1] ??
    `geraficha_nivel${req.nivel}_serie${req.serie}.pdf`
  a.href = url
  a.download = filename
  a.click()
  URL.revokeObjectURL(url)
}

export async function previewFicha(
  nivel: number,
  serie = 'A',
  modulo = 'acentuacao',
): Promise<PreviewFicha> {
  return apiRequest<PreviewFicha>(
    `/api/worksheets/preview/${nivel}?serie=${serie}&modulo=${modulo}`,
  )
}

export async function listarNiveis(modulo?: string): Promise<NivelInfo[]> {
  const qs = modulo ? `?modulo=${modulo}` : ''
  const data = await apiRequest<{ niveis: NivelInfo[]; total: number }>(
    `/api/worksheets/niveis${qs}`,
  )
  return data.niveis
}

export async function registrarScore(req: ScoreRequest): Promise<ScoreResponse> {
  return apiRequest<ScoreResponse>('/api/scores/', {
    method: 'POST',
    body: JSON.stringify(req),
  })
}

export async function previewRecomendacao(score: number) {
  return apiRequest<{
    score: number
    recommendation: string
    descricao: string
    proxima_ficha_exemplo: { nivel: number; serie: string; mensagem: string }
  }>(`/api/scores/recommend/preview?score=${score}`)
}
