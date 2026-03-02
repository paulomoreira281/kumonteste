import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { supabase } from '../lib/supabase'
import { registrarScore, previewRecomendacao } from '../lib/api'

interface Student {
  id: string
  name: string
  grade: number | null
  current_level: number
  current_series: string
}

interface PdfExport {
  id: string
  student_name: string | null
  grade_label: string | null
  date_label: string | null
  created_at: string
  worksheets: {
    level: number
    series: string
    module: string
    title: string
  } | null
}

type Recomendacao = 'advance' | 'repeat' | 'reinforce'

const REC_INFO: Record<Recomendacao, { label: string; cor: string; icon: string; desc: string }> = {
  advance:   { label: 'Avançar',  cor: 'bg-verde-light text-verde border-verde/30',  icon: '🚀', desc: 'Próximo nível — Série A' },
  repeat:    { label: 'Repetir',  cor: 'bg-azul-light text-azul border-azul/30',     icon: '🔁', desc: 'Mesmo nível — Série B' },
  reinforce: { label: 'Reforço',  cor: 'bg-rosa-light text-rosa border-rosa/30',     icon: '💪', desc: 'Mesmo nível — Série R' },
}

const SERIE_NOME: Record<string, string> = { A: 'Série A', B: 'Série B', R: 'Reforço' }

export default function ResultadoPage() {
  const navigate = useNavigate()

  // Passo do fluxo: 1=selecionar aluno, 2=selecionar ficha, 3=nota, 4=confirmação
  const [passo, setPasso] = useState(1)

  // Dados
  const [alunos, setAlunos] = useState<Student[]>([])
  const [fichas, setFichas] = useState<PdfExport[]>([])
  const [alunoSel, setAlunoSel] = useState<Student | null>(null)
  const [fichaSel, setFichaSel] = useState<PdfExport | null>(null)
  const [score, setScore] = useState(7)
  const [recomendacao, setRecomendacao] = useState<Recomendacao | null>(null)
  const [proximaFicha, setProximaFicha] = useState<{ nivel: number; serie: string; mensagem: string } | null>(null)
  const [decisao, setDecisao] = useState<Recomendacao | null>(null)

  // Estados UI
  const [loadingAlunos, setLoadingAlunos] = useState(true)
  const [loadingFichas, setLoadingFichas] = useState(false)
  const [loadingRec, setLoadingRec] = useState(false)
  const [salvando, setSalvando] = useState(false)
  const [salvo, setSalvo] = useState(false)
  const [error, setError] = useState('')

  // Carrega alunos do usuário logado
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

  // Carrega fichas geradas do aluno selecionado
  async function carregarFichas(aluno: Student) {
    setAlunoSel(aluno)
    setFichaSel(null)
    setLoadingFichas(true)
    setPasso(2)

    // Busca PDFs sem nota registrada (simplificado: últimos 20 exports do aluno)
    const { data } = await supabase
      .from('pdf_exports')
      .select(`
        id, student_name, grade_label, date_label, created_at,
        worksheets ( level, series, module, title )
      `)
      .eq('student_id', aluno.id)
      .order('created_at', { ascending: false })
      .limit(20)

    setFichas((data as unknown as PdfExport[]) ?? [])
    setLoadingFichas(false)
  }

  // Calcula recomendação ao mudar nota
  async function calcularRecomendacao(nota: number) {
    setScore(nota)
    setLoadingRec(true)
    try {
      const r = await previewRecomendacao(nota)
      setRecomendacao(r.recommendation as Recomendacao)
      setProximaFicha(r.proxima_ficha_exemplo)
      setDecisao(r.recommendation as Recomendacao)
    } finally {
      setLoadingRec(false)
    }
  }

  // Salva resultado no Supabase
  async function handleSalvar() {
    if (!alunoSel || !decisao) return
    setSalvando(true)
    setError('')
    try {
      // worksheet_id: usa o da ficha selecionada ou um placeholder
      const worksheetId = fichaSel
        ? fichaSel.id  // simplificado; em produção seria o worksheet_id real
        : '00000000-0000-0000-0000-000000000000'

      // Chama API do backend para registrar
      const nivel = fichaSel?.worksheets?.level ?? alunoSel.current_level
      const serie = (fichaSel?.worksheets?.series ?? alunoSel.current_series) as 'A' | 'B' | 'R'

      await registrarScore({
        student_id: alunoSel.id,
        worksheet_id: worksheetId,
        nivel,
        serie,
        score,
      })

      // Atualiza decisão se diferente da recomendação
      setSalvo(true)
      setPasso(4)

      // Recarrega dados do aluno para refletir novo nível
      const { data } = await supabase
        .from('students')
        .select('id, name, grade, current_level, current_series')
        .eq('id', alunoSel.id)
        .single()
      if (data) setAlunoSel(data as Student)

    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : 'Erro ao salvar')
    } finally {
      setSalvando(false)
    }
  }

  const scoreColor = score >= 7 ? 'text-verde' : score >= 5 ? 'text-azul' : 'text-rosa'
  const scoreLabel = score >= 7 ? 'Ótimo!' : score >= 5 ? 'Bom' : 'Precisa de reforço'

  return (
    <div>
      <div className="mb-8">
        <h1 className="font-display text-3xl text-gray-800">Registrar Resultado</h1>
        <p className="text-gray-400 text-sm mt-1">Informe a nota e o sistema recomenda o próximo passo</p>
      </div>

      {/* Indicador de passos */}
      <div className="flex items-center gap-2 mb-8">
        {[
          { n: 1, label: 'Aluno' },
          { n: 2, label: 'Ficha' },
          { n: 3, label: 'Nota' },
          { n: 4, label: 'Confirmação' },
        ].map((p, i) => (
          <div key={p.n} className="flex items-center gap-2">
            <div className={`flex items-center gap-2 ${passo >= p.n ? 'text-verde' : 'text-gray-300'}`}>
              <div className={`w-7 h-7 rounded-full flex items-center justify-center text-xs font-bold ${
                passo > p.n ? 'bg-verde text-white' :
                passo === p.n ? 'bg-verde-light text-verde border-2 border-verde' :
                'bg-gray-100 text-gray-400'
              }`}>
                {passo > p.n ? '✓' : p.n}
              </div>
              <span className={`text-sm font-semibold ${passo >= p.n ? 'text-gray-700' : 'text-gray-300'}`}>
                {p.label}
              </span>
            </div>
            {i < 3 && <div className={`w-8 h-0.5 ${passo > p.n ? 'bg-verde' : 'bg-gray-200'}`} />}
          </div>
        ))}
      </div>

      <div className="max-w-xl space-y-5">

        {/* PASSO 1 — Selecionar aluno */}
        {passo === 1 && (
          <div className="card">
            <h3 className="font-bold text-gray-700 mb-4">Selecione o aluno</h3>
            {loadingAlunos ? (
              <p className="text-gray-300 text-sm animate-pulse">Carregando…</p>
            ) : alunos.length === 0 ? (
              <div className="text-center py-6">
                <p className="text-gray-400 text-sm">Nenhum aluno cadastrado.</p>
                <button onClick={() => navigate('/alunos')} className="btn-secondary mt-3 text-sm py-2">
                  Cadastrar aluno
                </button>
              </div>
            ) : (
              <div className="space-y-2">
                {alunos.map((a) => (
                  <button
                    key={a.id}
                    onClick={() => carregarFichas(a)}
                    className="w-full flex items-center gap-3 p-3 rounded-xl border border-gray-100 hover:border-verde/30 hover:bg-verde-light/30 transition-all text-left"
                  >
                    <div className="w-10 h-10 rounded-xl bg-verde-light flex items-center justify-center font-bold text-verde">
                      {a.name.charAt(0).toUpperCase()}
                    </div>
                    <div className="flex-1">
                      <p className="font-semibold text-gray-800">{a.name}</p>
                      <p className="text-xs text-gray-400">
                        Nível {a.current_level} — {SERIE_NOME[a.current_series] ?? a.current_series}
                        {a.grade ? ` · ${a.grade}.º ano` : ''}
                      </p>
                    </div>
                    <span className="text-gray-300 text-lg">›</span>
                  </button>
                ))}
              </div>
            )}
          </div>
        )}

        {/* PASSO 2 — Selecionar ficha */}
        {passo === 2 && alunoSel && (
          <div className="card">
            <div className="flex items-center gap-2 mb-4">
              <button onClick={() => setPasso(1)} className="text-gray-400 hover:text-gray-600 text-sm">←</button>
              <h3 className="font-bold text-gray-700">Qual ficha foi feita por {alunoSel.name}?</h3>
            </div>

            {loadingFichas ? (
              <p className="text-gray-300 text-sm animate-pulse">Buscando fichas…</p>
            ) : (
              <>
                {fichas.length > 0 && (
                  <div className="space-y-2 mb-4">
                    {fichas.map((f) => (
                      <button
                        key={f.id}
                        onClick={() => { setFichaSel(f); setPasso(3); calcularRecomendacao(score) }}
                        className={`w-full flex items-center gap-3 p-3 rounded-xl border transition-all text-left ${
                          fichaSel?.id === f.id
                            ? 'border-verde bg-verde-light/30'
                            : 'border-gray-100 hover:border-verde/30'
                        }`}
                      >
                        <span className="text-2xl">📄</span>
                        <div className="flex-1">
                          <p className="font-semibold text-gray-800 text-sm">
                            {f.worksheets
                              ? `Nível ${f.worksheets.level} — ${SERIE_NOME[f.worksheets.series] ?? f.worksheets.series}`
                              : f.student_name ?? 'Ficha sem título'}
                          </p>
                          <p className="text-xs text-gray-400">
                            Gerada em {new Date(f.created_at).toLocaleDateString('pt-BR')}
                            {f.date_label ? ` · Datada: ${f.date_label}` : ''}
                          </p>
                        </div>
                        <span className="text-gray-300 text-lg">›</span>
                      </button>
                    ))}
                  </div>
                )}

                {/* Opção: ficha não registrada no sistema */}
                <div className="border-t border-gray-100 pt-3">
                  <p className="text-xs text-gray-400 mb-2">Ficha impressa sem registro no sistema?</p>
                  <button
                    onClick={() => { setFichaSel(null); setPasso(3); calcularRecomendacao(score) }}
                    className="w-full p-3 rounded-xl border border-dashed border-gray-200 hover:border-verde/40 text-sm text-gray-500 hover:text-gray-700 transition-all"
                  >
                    + Registrar nota para Nível {alunoSel.current_level} — {SERIE_NOME[alunoSel.current_series]}
                  </button>
                </div>
              </>
            )}
          </div>
        )}

        {/* PASSO 3 — Nota */}
        {passo === 3 && alunoSel && (
          <div className="space-y-4">
            <div className="card">
              <div className="flex items-center gap-2 mb-5">
                <button onClick={() => setPasso(2)} className="text-gray-400 hover:text-gray-600 text-sm">←</button>
                <div>
                  <h3 className="font-bold text-gray-700">Nota de {alunoSel.name}</h3>
                  <p className="text-xs text-gray-400">
                    {fichaSel?.worksheets
                      ? `Nível ${fichaSel.worksheets.level} — ${SERIE_NOME[fichaSel.worksheets.series]}`
                      : `Nível ${alunoSel.current_level} — ${SERIE_NOME[alunoSel.current_series]}`}
                  </p>
                </div>
              </div>

              <div className="text-center mb-5">
                <span className={`font-display text-8xl font-bold ${scoreColor}`}>{score}</span>
                <span className="text-gray-300 font-display text-4xl">/10</span>
                <p className={`text-sm font-bold mt-1 ${scoreColor}`}>{scoreLabel}</p>
              </div>

              <input
                type="range" min={0} max={10} step={1}
                value={score}
                onChange={(e) => calcularRecomendacao(Number(e.target.value))}
                className="w-full accent-verde"
              />

              <div className="flex justify-between text-xs text-gray-400 mt-1 mb-5">
                <span>0</span>
                <span className="text-rosa font-semibold">≤4 Reforço</span>
                <span className="text-azul font-semibold">5–6 Repetir</span>
                <span className="text-verde font-semibold">≥7 Avançar</span>
                <span>10</span>
              </div>

              {/* Teclado numérico rápido */}
              <div className="grid grid-cols-6 gap-1.5">
                {[0,1,2,3,4,5,6,7,8,9,10].map((n) => (
                  <button
                    key={n}
                    type="button"
                    onClick={() => calcularRecomendacao(n)}
                    className={`py-2 rounded-lg text-sm font-bold transition-all ${
                      score === n
                        ? n >= 7 ? 'bg-verde text-white' : n >= 5 ? 'bg-azul text-white' : 'bg-rosa text-white'
                        : 'bg-gray-100 text-gray-600 hover:bg-gray-200'
                    }`}
                  >
                    {n}
                  </button>
                ))}
              </div>
            </div>

            {/* Recomendação em tempo real */}
            {recomendacao && !loadingRec && (
              <div className="card space-y-4">
                <div>
                  <p className="text-xs text-gray-400 uppercase tracking-wide mb-2">Recomendação do sistema</p>
                  <div className={`border-2 rounded-xl p-4 ${REC_INFO[recomendacao].cor}`}>
                    <div className="flex items-center gap-3">
                      <span className="text-3xl">{REC_INFO[recomendacao].icon}</span>
                      <div>
                        <p className="font-bold text-lg">{REC_INFO[recomendacao].label}</p>
                        <p className="text-sm opacity-80">{REC_INFO[recomendacao].desc}</p>
                      </div>
                    </div>
                  </div>
                </div>

                {proximaFicha && (
                  <div className="bg-gray-50 rounded-xl p-3">
                    <p className="text-xs text-gray-400 mb-1">Próxima ficha sugerida</p>
                    <p className="font-semibold text-gray-800 text-sm">
                      Nível {proximaFicha.nivel} — Série {proximaFicha.serie}
                    </p>
                    <p className="text-xs text-gray-500 mt-0.5">{proximaFicha.mensagem}</p>
                  </div>
                )}

                <div>
                  <p className="text-xs text-gray-400 uppercase tracking-wide mb-2">Decisão do responsável</p>
                  <div className="grid grid-cols-3 gap-2">
                    {(['advance', 'repeat', 'reinforce'] as const).map((d) => (
                      <button
                        key={d}
                        onClick={() => setDecisao(d)}
                        className={`border-2 rounded-xl p-3 text-center transition-all text-sm font-bold ${
                          decisao === d
                            ? REC_INFO[d].cor + ' border-2'
                            : 'border-gray-100 bg-white text-gray-400 hover:border-gray-200'
                        }`}
                      >
                        <div className="text-xl mb-1">{REC_INFO[d].icon}</div>
                        {REC_INFO[d].label}
                      </button>
                    ))}
                  </div>
                  {decisao && decisao !== recomendacao && (
                    <p className="text-xs text-amarelo-dark mt-2">
                      ⚠️ Você escolheu diferente da recomendação do sistema — tudo bem!
                    </p>
                  )}
                </div>

                {error && (
                  <p className="text-red-600 text-sm bg-red-50 rounded-lg px-3 py-2">{error}</p>
                )}

                <button
                  onClick={handleSalvar}
                  disabled={salvando || !decisao}
                  className="btn-primary w-full py-4 text-base"
                >
                  {salvando ? '⏳ Salvando…' : '✅ Confirmar e salvar resultado'}
                </button>
              </div>
            )}

            {loadingRec && (
              <p className="text-center text-gray-300 animate-pulse text-sm">Calculando recomendação…</p>
            )}
          </div>
        )}

        {/* PASSO 4 — Confirmação */}
        {passo === 4 && alunoSel && salvo && (
          <div className="card text-center space-y-5">
            <div className="text-6xl">🎉</div>
            <div>
              <h3 className="font-bold text-gray-800 text-xl">Resultado salvo!</h3>
              <p className="text-gray-400 text-sm mt-1">
                Nota {score}/10 registrada para {alunoSel.name}
              </p>
            </div>

            {decisao && proximaFicha && (
              <div className={`border-2 rounded-xl p-4 ${REC_INFO[decisao].cor}`}>
                <p className="font-bold">{REC_INFO[decisao].icon} {REC_INFO[decisao].label}</p>
                <p className="text-sm mt-1">
                  Próxima ficha: Nível {proximaFicha.nivel} — Série {proximaFicha.serie}
                </p>
                <p className="text-xs mt-1 opacity-80">{proximaFicha.mensagem}</p>
              </div>
            )}

            <div className="grid grid-cols-2 gap-3 pt-2">
              <button
                onClick={() =>
                  navigate('/nova-ficha', {
                    state: {
                      student_id: alunoSel.id,
                      nome_aluno: alunoSel.name,
                      nivel: proximaFicha?.nivel ?? alunoSel.current_level,
                      serie: proximaFicha?.serie ?? 'A',
                    },
                  })
                }
                className="btn-primary"
              >
                📄 Gerar próxima ficha
              </button>
              <button
                onClick={() => {
                  setPasso(1); setSalvo(false); setAlunoSel(null)
                  setFichaSel(null); setScore(7); setRecomendacao(null)
                  setDecisao(null); setProximaFicha(null)
                }}
                className="btn-secondary"
              >
                Novo resultado
              </button>
            </div>

            <button
              onClick={() => navigate('/historico')}
              className="text-sm text-verde hover:underline font-semibold"
            >
              Ver histórico completo de {alunoSel.name} →
            </button>
          </div>
        )}

      </div>
    </div>
  )
}
