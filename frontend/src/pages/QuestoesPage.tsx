import { useEffect, useState, useCallback } from 'react'
import { useNavigate } from 'react-router-dom'

const API = import.meta.env.VITE_API_URL ?? 'http://localhost:8000'

interface Questao {
  id: string
  modulo: string
  nivel: number
  serie: string
  block: number
  type: string
  content: Record<string, unknown>
  correct_answer: string
  bncc_skill: string
  difficulty: number
  guided: boolean
  created_at: string
}

interface Stats {
  total: number
  meta_minima: number
  percentual_meta: number
  por_modulo: Record<string, number>
  por_tipo: Record<string, number>
  niveis_cobertos: number
  niveis_faltando: number[]
}

const MODULOS: Record<string, string> = {
  acentuacao:    'Acentuação',
  ortografia:    'Ortografia',
  classes:       'Classes de Palavras',
  sintaxe:       'Sintaxe e Análise',
  interpretacao: 'Interpretação / Produção',
}

const TIPOS: Record<string, string> = {
  DS: 'DS — Dividir sílabas',
  VF: 'VF — Verdadeiro/Falso',
  MC: 'MC — Múltipla escolha',
  CL: 'CL — Completar lacuna',
  RF: 'RF — Reescrever frase',
  IE: 'IE — Imagem + Escrita',
  IT: 'IT — Identificar em texto',
  PG: 'PG — Produção guiada',
  CT: 'CT — Corrigir texto',
  AS: 'AS — Associação',
}

const SERIE_COLOR: Record<string, string> = {
  A: 'bg-verde-light text-verde',
  B: 'bg-azul-light text-azul',
  R: 'bg-rosa-light text-rosa',
}

const BLOCO_COLOR: Record<number, string> = {
  1: 'bg-amarelo-light text-amarelo-dark',
  2: 'bg-verde-light text-verde-dark',
  3: 'bg-azul-light text-azul-dark',
  4: 'bg-rosa-light text-rosa-dark',
}

const BLOCO_NOME: Record<number, string> = {
  1: 'Prepare-se',
  2: 'Lição',
  3: 'Vamos Praticar',
  4: 'Prática',
}

const DIFF_LABEL: Record<number, string> = { 1: '●○○', 2: '●●○', 3: '●●●' }
const DIFF_COLOR: Record<number, string> = {
  1: 'text-verde',
  2: 'text-amarelo-dark',
  3: 'text-rosa',
}

export default function QuestoesPage() {
  const navigate = useNavigate()

  // Filtros
  const [filtroModulo, setFiltroModulo] = useState('')
  const [filtroNivel, setFiltroNivel] = useState('')
  const [filtroSerie, setFiltroSerie] = useState('')
  const [filtroTipo, setFiltroTipo] = useState('')
  const [filtroBloco, setFiltroBloco] = useState('')

  // Dados
  const [questoes, setQuestoes] = useState<Questao[]>([])
  const [stats, setStats] = useState<Stats | null>(null)
  const [loading, setLoading] = useState(true)
  const [loadingStats, setLoadingStats] = useState(true)

  // Modal de edição/criação
  const [showForm, setShowForm] = useState(false)
  const [editando, setEditando] = useState<Questao | null>(null)
  const [saving, setSaving] = useState(false)
  const [formError, setFormError] = useState('')

  // Form fields
  const [fModulo, setFModulo] = useState('acentuacao')
  const [fNivel, setFNivel] = useState(1)
  const [fSerie, setFSerie] = useState('A')
  const [fBloco, setFBloco] = useState(4)
  const [fTipo, setFTipo] = useState('DS')
  const [fEnunciado, setFEnunciado] = useState('')
  const [fResposta, setFResposta] = useState('')
  const [fBncc, setFBncc] = useState('EF04LP01')
  const [fDiff, setFDiff] = useState(1)
  const [fGuiado, setFGuiado] = useState(false)

  const loadStats = useCallback(async () => {
    setLoadingStats(true)
    try {
      const res = await fetch(`${API}/api/questions/stats/resumo`)
      if (res.ok) setStats(await res.json())
    } finally {
      setLoadingStats(false)
    }
  }, [])

  const loadQuestoes = useCallback(async () => {
    setLoading(true)
    const params = new URLSearchParams()
    if (filtroModulo) params.set('modulo', filtroModulo)
    if (filtroNivel)  params.set('nivel', filtroNivel)
    if (filtroSerie)  params.set('serie', filtroSerie)
    if (filtroTipo)   params.set('type', filtroTipo)
    if (filtroBloco)  params.set('block', filtroBloco)
    params.set('limit', '50')
    try {
      const res = await fetch(`${API}/api/questions/?${params}`)
      if (res.ok) setQuestoes(await res.json())
    } finally {
      setLoading(false)
    }
  }, [filtroModulo, filtroNivel, filtroSerie, filtroTipo, filtroBloco])

  useEffect(() => { loadStats() }, [loadStats])
  useEffect(() => { loadQuestoes() }, [loadQuestoes])

  function abrirNovaQuestao() {
    setEditando(null)
    setFModulo('acentuacao'); setFNivel(1); setFSerie('A')
    setFBloco(4); setFTipo('DS'); setFEnunciado(''); setFResposta('')
    setFBncc('EF04LP01'); setFDiff(1); setFGuiado(false)
    setFormError(''); setShowForm(true)
  }

  function abrirEditar(q: Questao) {
    setEditando(q)
    setFModulo(q.modulo); setFNivel(q.nivel); setFSerie(q.serie)
    setFBloco(q.block); setFTipo(q.type)
    setFEnunciado((q.content.enunciado as string) ?? (q.content.word as string) ?? '')
    setFResposta(q.correct_answer)
    setFBncc(q.bncc_skill); setFDiff(q.difficulty); setFGuiado(q.guided)
    setFormError(''); setShowForm(true)
  }

  async function handleSalvar(e: React.FormEvent) {
    e.preventDefault()
    setSaving(true); setFormError('')
    const body = {
      modulo: fModulo, nivel: fNivel, serie: fSerie,
      block: fBloco, type: fTipo,
      content: fTipo === 'DS' ? { word: fEnunciado } : { enunciado: fEnunciado },
      correct_answer: fResposta,
      bncc_skill: fBncc, difficulty: fDiff, guided: fGuiado,
    }
    try {
      const url = editando
        ? `${API}/api/questions/${editando.id}`
        : `${API}/api/questions/`
      const method = editando ? 'PUT' : 'POST'
      const res = await fetch(url, {
        method,
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(body),
      })
      if (!res.ok) {
        const err = await res.json()
        throw new Error(err.detail ?? 'Erro ao salvar')
      }
      setShowForm(false)
      await Promise.all([loadQuestoes(), loadStats()])
    } catch (err: unknown) {
      setFormError(err instanceof Error ? err.message : 'Erro')
    } finally {
      setSaving(false)
    }
  }

  async function handleDeletar(id: string) {
    if (!confirm('Remover esta questão permanentemente?')) return
    await fetch(`${API}/api/questions/${id}`, { method: 'DELETE' })
    await Promise.all([loadQuestoes(), loadStats()])
  }

  async function handleExportarCSV() {
    const params = new URLSearchParams()
    if (filtroModulo) params.set('modulo', filtroModulo)
    if (filtroNivel)  params.set('nivel', filtroNivel)
    window.open(`${API}/api/questions/export/csv?${params}`, '_blank')
  }

  return (
    <div>
      {/* Header */}
      <div className="flex items-center justify-between mb-6">
        <div>
          <h1 className="font-display text-3xl text-gray-800">Banco de Questões</h1>
          <p className="text-gray-400 text-sm mt-1">Gerencie o conteúdo dos 120 níveis</p>
        </div>
        <div className="flex gap-2">
          <button onClick={handleExportarCSV} className="btn-secondary text-sm py-2">
            ⬇ Exportar CSV
          </button>
          <button onClick={() => navigate('/importar')} className="btn-secondary text-sm py-2">
            ⬆ Importar CSV
          </button>
          <button onClick={abrirNovaQuestao} className="btn-primary text-sm py-2">
            + Nova Questão
          </button>
        </div>
      </div>

      {/* Stats */}
      {!loadingStats && stats && (
        <div className="grid grid-cols-4 gap-4 mb-6">
          <div className="card text-center">
            <p className="text-3xl font-bold text-gray-800">{stats.total.toLocaleString()}</p>
            <p className="text-xs text-gray-400 mt-1">Questões cadastradas</p>
            <div className="mt-2 h-1.5 bg-gray-100 rounded-full overflow-hidden">
              <div
                className="h-full bg-verde rounded-full"
                style={{ width: `${Math.min(stats.percentual_meta, 100)}%` }}
              />
            </div>
            <p className="text-xs text-gray-400 mt-1">{stats.percentual_meta}% da meta (5.760)</p>
          </div>
          <div className="card text-center">
            <p className="text-3xl font-bold text-gray-800">{stats.niveis_cobertos}</p>
            <p className="text-xs text-gray-400 mt-1">Níveis com questões</p>
            <p className="text-xs text-rosa mt-1">
              {120 - stats.niveis_cobertos} sem nenhuma questão
            </p>
          </div>
          {Object.entries(stats.por_modulo).slice(0, 2).map(([mod, n]) => (
            <div key={mod} className="card text-center">
              <p className="text-3xl font-bold text-gray-800">{n}</p>
              <p className="text-xs text-gray-400 mt-1">{MODULOS[mod] ?? mod}</p>
            </div>
          ))}
        </div>
      )}

      {/* Filtros */}
      <div className="card mb-4">
        <div className="grid grid-cols-5 gap-3">
          <div>
            <label className="label text-xs">Módulo</label>
            <select className="input text-sm py-2" value={filtroModulo} onChange={e => setFiltroModulo(e.target.value)}>
              <option value="">Todos</option>
              {Object.entries(MODULOS).map(([v, l]) => <option key={v} value={v}>{l}</option>)}
            </select>
          </div>
          <div>
            <label className="label text-xs">Nível</label>
            <input
              type="number" min={1} max={120}
              className="input text-sm py-2" placeholder="1–120"
              value={filtroNivel} onChange={e => setFiltroNivel(e.target.value)}
            />
          </div>
          <div>
            <label className="label text-xs">Série</label>
            <select className="input text-sm py-2" value={filtroSerie} onChange={e => setFiltroSerie(e.target.value)}>
              <option value="">Todas</option>
              <option value="A">A</option>
              <option value="B">B</option>
              <option value="R">R</option>
            </select>
          </div>
          <div>
            <label className="label text-xs">Tipo</label>
            <select className="input text-sm py-2" value={filtroTipo} onChange={e => setFiltroTipo(e.target.value)}>
              <option value="">Todos</option>
              {Object.entries(TIPOS).map(([v]) => <option key={v} value={v}>{v}</option>)}
            </select>
          </div>
          <div>
            <label className="label text-xs">Bloco</label>
            <select className="input text-sm py-2" value={filtroBloco} onChange={e => setFiltroBloco(e.target.value)}>
              <option value="">Todos</option>
              {[1,2,3,4].map(b => <option key={b} value={b}>{b} — {BLOCO_NOME[b]}</option>)}
            </select>
          </div>
        </div>
      </div>

      {/* Tabela */}
      <div className="card p-0 overflow-hidden">
        {loading ? (
          <div className="text-center py-12 text-gray-300 animate-pulse">Carregando questões…</div>
        ) : questoes.length === 0 ? (
          <div className="text-center py-12">
            <p className="text-gray-400 text-sm">Nenhuma questão encontrada com esses filtros.</p>
            <button onClick={abrirNovaQuestao} className="btn-secondary mt-3 text-sm py-2">
              Criar primeira questão
            </button>
          </div>
        ) : (
          <table className="w-full text-sm">
            <thead className="bg-gray-50 border-b border-gray-100">
              <tr>
                <th className="text-left px-4 py-3 text-xs font-bold text-gray-500 uppercase tracking-wide">Nível/Série</th>
                <th className="text-left px-4 py-3 text-xs font-bold text-gray-500 uppercase tracking-wide">Módulo</th>
                <th className="text-left px-4 py-3 text-xs font-bold text-gray-500 uppercase tracking-wide">Bloco</th>
                <th className="text-left px-4 py-3 text-xs font-bold text-gray-500 uppercase tracking-wide">Tipo</th>
                <th className="text-left px-4 py-3 text-xs font-bold text-gray-500 uppercase tracking-wide">Enunciado</th>
                <th className="text-left px-4 py-3 text-xs font-bold text-gray-500 uppercase tracking-wide">Dif.</th>
                <th className="px-4 py-3 text-xs font-bold text-gray-500 uppercase tracking-wide">Ações</th>
              </tr>
            </thead>
            <tbody>
              {questoes.map((q, i) => (
                <tr key={q.id} className={`border-b border-gray-50 hover:bg-gray-50 ${i % 2 === 0 ? '' : 'bg-gray-50/30'}`}>
                  <td className="px-4 py-3">
                    <span className="font-bold text-gray-700">{q.nivel}</span>
                    <span className={`ml-2 text-xs font-bold px-1.5 py-0.5 rounded ${SERIE_COLOR[q.serie] ?? ''}`}>
                      {q.serie}
                    </span>
                  </td>
                  <td className="px-4 py-3 text-gray-500 text-xs">{MODULOS[q.modulo] ?? q.modulo}</td>
                  <td className="px-4 py-3">
                    <span className={`text-xs font-bold px-1.5 py-0.5 rounded ${BLOCO_COLOR[q.block] ?? ''}`}>
                      B{q.block}
                    </span>
                  </td>
                  <td className="px-4 py-3">
                    <span className="text-xs bg-gray-100 text-gray-600 px-2 py-0.5 rounded font-bold">
                      {q.type}
                    </span>
                  </td>
                  <td className="px-4 py-3 text-gray-700 max-w-xs truncate">
                    {(q.content.enunciado as string) ?? (q.content.word as string) ?? '—'}
                  </td>
                  <td className="px-4 py-3">
                    <span className={`text-xs font-bold ${DIFF_COLOR[q.difficulty] ?? ''}`}>
                      {DIFF_LABEL[q.difficulty] ?? '—'}
                    </span>
                  </td>
                  <td className="px-4 py-3">
                    <div className="flex items-center gap-1 justify-center">
                      <button
                        onClick={() => abrirEditar(q)}
                        className="text-xs text-azul hover:bg-azul-light px-2 py-1 rounded-lg"
                      >
                        Editar
                      </button>
                      <button
                        onClick={() => handleDeletar(q.id)}
                        className="text-xs text-rosa hover:bg-rosa-light px-2 py-1 rounded-lg"
                      >
                        ✕
                      </button>
                    </div>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        )}
        {questoes.length > 0 && (
          <div className="px-4 py-3 border-t border-gray-100 text-xs text-gray-400">
            Mostrando {questoes.length} questão(ões) · máx. 50 por página
          </div>
        )}
      </div>

      {/* Modal de formulário */}
      {showForm && (
        <div className="fixed inset-0 bg-black/40 flex items-center justify-center z-50 p-4">
          <div className="bg-white rounded-2xl shadow-2xl w-full max-w-lg max-h-[90vh] overflow-y-auto">
            <div className="px-6 py-5 border-b border-gray-100 flex items-center justify-between">
              <h2 className="font-bold text-gray-800">
                {editando ? 'Editar Questão' : 'Nova Questão'}
              </h2>
              <button onClick={() => setShowForm(false)} className="text-gray-400 hover:text-gray-600 text-xl">✕</button>
            </div>

            <form onSubmit={handleSalvar} className="p-6 space-y-4">
              <div className="grid grid-cols-3 gap-3">
                <div>
                  <label className="label text-xs">Módulo</label>
                  <select className="input text-sm py-2" value={fModulo} onChange={e => setFModulo(e.target.value)}>
                    {Object.entries(MODULOS).map(([v, l]) => <option key={v} value={v}>{l}</option>)}
                  </select>
                </div>
                <div>
                  <label className="label text-xs">Nível</label>
                  <input type="number" min={1} max={120} className="input text-sm py-2"
                    value={fNivel} onChange={e => setFNivel(Number(e.target.value))} />
                </div>
                <div>
                  <label className="label text-xs">Série</label>
                  <select className="input text-sm py-2" value={fSerie} onChange={e => setFSerie(e.target.value)}>
                    <option value="A">A — Normal</option>
                    <option value="B">B — Repetição</option>
                    <option value="R">R — Reforço</option>
                  </select>
                </div>
              </div>

              <div className="grid grid-cols-3 gap-3">
                <div>
                  <label className="label text-xs">Bloco</label>
                  <select className="input text-sm py-2" value={fBloco} onChange={e => setFBloco(Number(e.target.value))}>
                    {[1,2,3,4].map(b => <option key={b} value={b}>{b} — {BLOCO_NOME[b]}</option>)}
                  </select>
                </div>
                <div>
                  <label className="label text-xs">Tipo</label>
                  <select className="input text-sm py-2" value={fTipo} onChange={e => setFTipo(e.target.value)}>
                    {Object.entries(TIPOS).map(([v, l]) => <option key={v} value={v}>{l}</option>)}
                  </select>
                </div>
                <div>
                  <label className="label text-xs">Dificuldade</label>
                  <select className="input text-sm py-2" value={fDiff} onChange={e => setFDiff(Number(e.target.value))}>
                    <option value={1}>1 — Fácil</option>
                    <option value={2}>2 — Médio</option>
                    <option value={3}>3 — Difícil</option>
                  </select>
                </div>
              </div>

              <div>
                <label className="label text-xs">
                  {fTipo === 'DS' ? 'Palavra' : 'Enunciado / Afirmação'}
                </label>
                <textarea
                  className="input resize-none" rows={3}
                  placeholder={fTipo === 'DS' ? 'Ex.: CAFÉ' : 'Ex.: Na palavra CAFÉ, a tônica é CA.'}
                  value={fEnunciado} onChange={e => setFEnunciado(e.target.value)}
                  required
                />
              </div>

              <div>
                <label className="label text-xs">Resposta correta</label>
                <input className="input text-sm" placeholder="Ex.: ca-FÉ → FÉ"
                  value={fResposta} onChange={e => setFResposta(e.target.value)} required />
              </div>

              <div className="grid grid-cols-2 gap-3">
                <div>
                  <label className="label text-xs">Habilidade BNCC</label>
                  <input className="input text-sm" placeholder="Ex.: EF04LP01"
                    value={fBncc} onChange={e => setFBncc(e.target.value)} />
                </div>
                <div className="flex items-end pb-1">
                  <label className="flex items-center gap-2 cursor-pointer">
                    <input type="checkbox" className="w-4 h-4 accent-verde"
                      checked={fGuiado} onChange={e => setFGuiado(e.target.checked)} />
                    <span className="text-sm font-semibold text-gray-600">Exercício guiado (Bloco 3)</span>
                  </label>
                </div>
              </div>

              {formError && (
                <p className="text-red-600 text-sm bg-red-50 rounded-lg px-3 py-2">{formError}</p>
              )}

              <div className="flex gap-3 pt-2">
                <button type="submit" disabled={saving} className="btn-primary flex-1">
                  {saving ? 'Salvando…' : editando ? 'Salvar alterações' : 'Criar questão'}
                </button>
                <button type="button" onClick={() => setShowForm(false)} className="btn-secondary">
                  Cancelar
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  )
}
