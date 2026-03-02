import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { supabase } from '../lib/supabase'

interface Student {
  id: string
  name: string
  grade: number | null
  current_level: number
  current_series: string
}

interface ScoreRecord {
  id: string
  level: number
  series: string
  score: number
  recommendation: string
  decision: string
  created_at: string
}

const DEC_INFO: Record<string, { label: string; icon: string; cor: string }> = {
  advance:   { label: 'Avançou',  icon: '🚀', cor: 'text-verde bg-verde-light' },
  repeat:    { label: 'Repetiu',  icon: '🔁', cor: 'text-azul bg-azul-light' },
  reinforce: { label: 'Reforço',  icon: '💪', cor: 'text-rosa bg-rosa-light' },
}

const SERIE_COLOR: Record<string, string> = {
  A: 'bg-verde-light text-verde',
  B: 'bg-azul-light text-azul',
  R: 'bg-rosa-light text-rosa',
}

function ScoreBar({ value }: { value: number }) {
  const color = value >= 7 ? 'bg-verde' : value >= 5 ? 'bg-azul' : 'bg-rosa'
  return (
    <div className="flex items-center gap-2">
      <div className="flex-1 h-2 bg-gray-100 rounded-full overflow-hidden">
        <div className={`h-full rounded-full ${color}`} style={{ width: `${value * 10}%` }} />
      </div>
      <span className={`text-xs font-bold w-6 text-right ${value >= 7 ? 'text-verde' : value >= 5 ? 'text-azul' : 'text-rosa'}`}>
        {value}
      </span>
    </div>
  )
}

export default function HistoricoPage() {
  const navigate = useNavigate()
  const [alunos, setAlunos] = useState<Student[]>([])
  const [alunoSel, setAlunoSel] = useState<Student | null>(null)
  const [historico, setHistorico] = useState<ScoreRecord[]>([])
  const [loadingAlunos, setLoadingAlunos] = useState(true)
  const [loadingHist, setLoadingHist] = useState(false)

  useEffect(() => {
    async function load() {
      const { data: { session } } = await supabase.auth.getSession()
      if (!session) return
      const { data } = await supabase
        .from('students')
        .select('id, name, grade, current_level, current_series')
        .eq('user_id', session.user.id)
        .order('name')
      setAlunos((data as Student[]) ?? [])
      setLoadingAlunos(false)
    }
    load()
  }, [])

  async function selecionarAluno(aluno: Student) {
    setAlunoSel(aluno)
    setLoadingHist(true)
    const { data } = await supabase
      .from('scores')
      .select('id, level, series, score, recommendation, decision, created_at')
      .eq('student_id', aluno.id)
      .order('created_at', { ascending: false })
      .limit(50)
    setHistorico((data as ScoreRecord[]) ?? [])
    setLoadingHist(false)
  }

  // Estatísticas do aluno selecionado
  const mediaGeral = historico.length > 0
    ? (historico.reduce((s, r) => s + r.score, 0) / historico.length).toFixed(1)
    : null
  const totalAvancou  = historico.filter(r => r.decision === 'advance').length
  const totalReforcou = historico.filter(r => r.decision === 'reinforce').length

  // Mapa de progresso — quais níveis o aluno já passou (com nota)
  const niveisConcluidos = [...new Set(
    historico.filter(r => r.decision === 'advance').map(r => r.level)
  )].sort((a, b) => a - b)

  return (
    <div>
      <div className="mb-8">
        <h1 className="font-display text-3xl text-gray-800">Histórico</h1>
        <p className="text-gray-400 text-sm mt-1">Progresso e resultados por aluno</p>
      </div>

      <div className="grid grid-cols-3 gap-6">
        {/* Lista de alunos */}
        <div className="col-span-1">
          <div className="card p-0 overflow-hidden">
            <div className="px-4 py-3 border-b border-gray-100 bg-gray-50">
              <p className="text-xs font-bold text-gray-500 uppercase tracking-wide">Alunos</p>
            </div>
            {loadingAlunos ? (
              <p className="text-center py-6 text-gray-300 animate-pulse text-sm">Carregando…</p>
            ) : alunos.length === 0 ? (
              <div className="text-center py-8 px-4">
                <p className="text-gray-400 text-sm">Nenhum aluno cadastrado.</p>
                <button onClick={() => navigate('/alunos')} className="btn-secondary mt-3 text-xs py-1.5">
                  Cadastrar
                </button>
              </div>
            ) : (
              <div className="divide-y divide-gray-50">
                {alunos.map((a) => (
                  <button
                    key={a.id}
                    onClick={() => selecionarAluno(a)}
                    className={`w-full flex items-center gap-3 px-4 py-3 text-left transition-colors ${
                      alunoSel?.id === a.id ? 'bg-verde-light/50' : 'hover:bg-gray-50'
                    }`}
                  >
                    <div className={`w-8 h-8 rounded-lg flex items-center justify-center font-bold text-sm flex-shrink-0 ${
                      alunoSel?.id === a.id ? 'bg-verde text-white' : 'bg-verde-light text-verde'
                    }`}>
                      {a.name.charAt(0).toUpperCase()}
                    </div>
                    <div className="min-w-0">
                      <p className="font-semibold text-gray-800 text-sm truncate">{a.name}</p>
                      <p className="text-xs text-gray-400">Nível {a.current_level} · Série {a.current_series}</p>
                    </div>
                  </button>
                ))}
              </div>
            )}
          </div>
        </div>

        {/* Histórico do aluno */}
        <div className="col-span-2 space-y-4">
          {!alunoSel ? (
            <div className="card text-center py-16">
              <div className="text-5xl mb-3">👈</div>
              <p className="text-gray-400">Selecione um aluno para ver o histórico</p>
            </div>
          ) : loadingHist ? (
            <div className="card text-center py-16 animate-pulse text-gray-300">Carregando histórico…</div>
          ) : (
            <>
              {/* Cabeçalho do aluno */}
              <div className="card flex items-center justify-between">
                <div className="flex items-center gap-3">
                  <div className="w-12 h-12 rounded-xl bg-verde-light flex items-center justify-center font-bold text-verde text-xl">
                    {alunoSel.name.charAt(0)}
                  </div>
                  <div>
                    <h2 className="font-bold text-gray-800 text-lg">{alunoSel.name}</h2>
                    <p className="text-sm text-gray-400">
                      Nível atual: <strong className="text-gray-700">{alunoSel.current_level}</strong>
                      {' · '}Série <strong className="text-gray-700">{alunoSel.current_series}</strong>
                      {alunoSel.grade ? ` · ${alunoSel.grade}.º ano` : ''}
                    </p>
                  </div>
                </div>
                <button
                  onClick={() => navigate('/resultado')}
                  className="btn-primary text-sm py-2"
                >
                  + Registrar resultado
                </button>
              </div>

              {historico.length === 0 ? (
                <div className="card text-center py-10">
                  <p className="text-gray-400 text-sm">Nenhum resultado registrado ainda para {alunoSel.name}.</p>
                  <button onClick={() => navigate('/resultado')} className="btn-secondary mt-3 text-sm py-2">
                    Registrar primeiro resultado
                  </button>
                </div>
              ) : (
                <>
                  {/* Estatísticas */}
                  <div className="grid grid-cols-4 gap-3">
                    <div className="card text-center py-3">
                      <p className="text-2xl font-bold text-gray-800">{historico.length}</p>
                      <p className="text-xs text-gray-400 mt-0.5">Fichas feitas</p>
                    </div>
                    <div className="card text-center py-3">
                      <p className={`text-2xl font-bold ${Number(mediaGeral) >= 7 ? 'text-verde' : Number(mediaGeral) >= 5 ? 'text-azul' : 'text-rosa'}`}>
                        {mediaGeral}
                      </p>
                      <p className="text-xs text-gray-400 mt-0.5">Média geral</p>
                    </div>
                    <div className="card text-center py-3">
                      <p className="text-2xl font-bold text-verde">{totalAvancou}</p>
                      <p className="text-xs text-gray-400 mt-0.5">🚀 Avanços</p>
                    </div>
                    <div className="card text-center py-3">
                      <p className="text-2xl font-bold text-rosa">{totalReforcou}</p>
                      <p className="text-xs text-gray-400 mt-0.5">💪 Reforços</p>
                    </div>
                  </div>

                  {/* Mapa de progresso */}
                  {niveisConcluidos.length > 0 && (
                    <div className="card">
                      <p className="text-xs font-bold text-gray-500 uppercase tracking-wide mb-3">
                        Níveis concluídos com avanço ({niveisConcluidos.length})
                      </p>
                      <div className="flex flex-wrap gap-1.5">
                        {niveisConcluidos.map(n => (
                          <span key={n} className="text-xs bg-verde text-white font-bold px-2 py-1 rounded-lg">
                            {n}
                          </span>
                        ))}
                        <span className="text-xs bg-gray-100 text-gray-400 font-bold px-2 py-1 rounded-lg">
                          Atual: {alunoSel.current_level}
                        </span>
                      </div>
                    </div>
                  )}

                  {/* Lista de registros */}
                  <div className="card p-0 overflow-hidden">
                    <div className="px-4 py-3 border-b border-gray-100 bg-gray-50">
                      <p className="text-xs font-bold text-gray-500 uppercase tracking-wide">
                        Últimos resultados
                      </p>
                    </div>
                    <div className="divide-y divide-gray-50">
                      {historico.map((r) => (
                        <div key={r.id} className="px-4 py-3 flex items-center gap-4">
                          {/* Nível/Série */}
                          <div className="w-16 flex-shrink-0 text-center">
                            <span className="font-bold text-gray-700 text-sm">Nível {r.level}</span>
                            <br />
                            <span className={`text-xs font-bold px-1.5 py-0.5 rounded ${SERIE_COLOR[r.series] ?? ''}`}>
                              {r.series}
                            </span>
                          </div>

                          {/* Barra de nota */}
                          <div className="flex-1">
                            <ScoreBar value={r.score} />
                          </div>

                          {/* Decisão */}
                          <div className="flex-shrink-0">
                            <span className={`text-xs font-bold px-2 py-1 rounded-lg ${DEC_INFO[r.decision]?.cor ?? 'bg-gray-100 text-gray-500'}`}>
                              {DEC_INFO[r.decision]?.icon} {DEC_INFO[r.decision]?.label ?? r.decision}
                            </span>
                          </div>

                          {/* Data */}
                          <div className="flex-shrink-0 text-xs text-gray-400 w-20 text-right">
                            {new Date(r.created_at).toLocaleDateString('pt-BR')}
                          </div>
                        </div>
                      ))}
                    </div>
                  </div>
                </>
              )}
            </>
          )}
        </div>
      </div>
    </div>
  )
}
