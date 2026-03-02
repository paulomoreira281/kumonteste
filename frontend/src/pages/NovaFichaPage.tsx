import { useState, useEffect } from 'react'
import { useLocation } from 'react-router-dom'
import { gerarFichaPDF, previewFicha, type PreviewFicha } from '../lib/api'

const MODULOS = [
  { value: 'acentuacao',    label: 'Acentuação' },
  { value: 'ortografia',    label: 'Ortografia' },
  { value: 'classes',       label: 'Classes de Palavras' },
  { value: 'sintaxe',       label: 'Sintaxe e Análise' },
  { value: 'interpretacao', label: 'Interpretação / Produção' },
]

const SERIE_INFO: Record<string, { label: string; desc: string; color: string }> = {
  A: { label: 'Série A',   desc: 'Ficha padrão do nível',         color: 'border-verde bg-verde-light text-verde' },
  B: { label: 'Série B',   desc: 'Repetição com novas questões',   color: 'border-azul bg-azul-light text-azul' },
  R: { label: 'Reforço R', desc: 'Foco nos pontos mais difíceis', color: 'border-rosa bg-rosa-light text-rosa' },
}

const TIPO_LABEL: Record<string, string> = {
  DS: 'Dividir sílabas', VF: 'Verdadeiro/Falso', MC: 'Múltipla escolha',
  CL: 'Completar lacuna', RF: 'Reescrever frase', IE: 'Imagem + Escrita',
  IT: 'Identificar em texto', PG: 'Produção guiada', CT: 'Corrigir texto', AS: 'Associação',
}

export default function NovaFichaPage() {
  const location = useLocation()
  const pre = location.state as {
    student_id?: string; nome_aluno?: string; nivel?: number; serie?: string
  } | null

  const hoje = new Date().toLocaleDateString('pt-BR')

  const [nivel, setNivel] = useState(pre?.nivel ?? 1)
  const [serie, setSerie] = useState<'A' | 'B' | 'R'>((pre?.serie as 'A' | 'B' | 'R') ?? 'A')
  const [modulo, setModulo] = useState('acentuacao')
  const [nomeAluno, setNomeAluno] = useState(pre?.nome_aluno ?? '')
  const [nomeEscola, setNomeEscola] = useState('')
  const [turma, setTurma] = useState('')
  const [data, setData] = useState(hoje)
  const [incluirGabarito, setIncluirGabarito] = useState(false)
  const [preview, setPreview] = useState<PreviewFicha | null>(null)
  const [loadingPreview, setLoadingPreview] = useState(false)
  const [gerating, setGerating] = useState(false)
  const [error, setError] = useState('')
  const [success, setSuccess] = useState('')

  // Atualiza preview ao vivo
  useEffect(() => {
    const timer = setTimeout(async () => {
      if (nivel < 1 || nivel > 120) return
      setLoadingPreview(true)
      try {
        const p = await previewFicha(nivel, serie, modulo)
        setPreview(p)
      } catch {
        setPreview(null)
      } finally {
        setLoadingPreview(false)
      }
    }, 500)
    return () => clearTimeout(timer)
  }, [nivel, serie, modulo])

  async function handleGerar(e: React.FormEvent) {
    e.preventDefault()
    setError('')
    setSuccess('')
    setGerating(true)
    try {
      await gerarFichaPDF({
        nivel, serie, modulo,
        nome_aluno: nomeAluno,
        nome_escola: nomeEscola,
        turma, data,
        incluir_gabarito: incluirGabarito,
      })
      setSuccess('PDF gerado e baixado com sucesso!')
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : 'Erro ao gerar PDF')
    } finally {
      setGerating(false)
    }
  }

  return (
    <div>
      <div className="mb-8">
        <h1 className="font-display text-3xl text-gray-800">Nova Ficha</h1>
        <p className="text-gray-400 text-sm mt-1">Configure os parâmetros e gere o PDF</p>
      </div>

      <div className="grid grid-cols-5 gap-6">
        {/* Formulário */}
        <form onSubmit={handleGerar} className="col-span-3 space-y-5">

          {/* Módulo */}
          <div className="card">
            <h3 className="font-bold text-gray-700 mb-3">Módulo</h3>
            <div className="grid grid-cols-1 gap-2">
              {MODULOS.map((m) => (
                <label key={m.value} className="flex items-center gap-3 cursor-pointer">
                  <input
                    type="radio"
                    name="modulo"
                    value={m.value}
                    checked={modulo === m.value}
                    onChange={() => setModulo(m.value)}
                    className="accent-verde"
                  />
                  <span className="text-sm font-medium text-gray-700">{m.label}</span>
                </label>
              ))}
            </div>
          </div>

          {/* Nível e Série */}
          <div className="card">
            <h3 className="font-bold text-gray-700 mb-3">Nível e Série</h3>
            <div className="flex items-center gap-4 mb-4">
              <div className="flex-1">
                <label className="label">Nível (1–120)</label>
                <input
                  type="number"
                  min={1} max={120}
                  value={nivel}
                  onChange={(e) => setNivel(Number(e.target.value))}
                  className="input"
                />
              </div>
            </div>
            <div className="grid grid-cols-3 gap-2">
              {(['A', 'B', 'R'] as const).map((s) => (
                <button
                  type="button"
                  key={s}
                  onClick={() => setSerie(s)}
                  className={`border-2 rounded-xl p-3 text-center transition-all ${
                    serie === s
                      ? SERIE_INFO[s].color + ' border-2 font-bold'
                      : 'border-gray-100 bg-white text-gray-400 hover:border-gray-200'
                  }`}
                >
                  <div className="font-bold text-sm">{SERIE_INFO[s].label}</div>
                  <div className="text-xs mt-0.5 opacity-70">{SERIE_INFO[s].desc}</div>
                </button>
              ))}
            </div>
          </div>

          {/* Dados do aluno */}
          <div className="card">
            <h3 className="font-bold text-gray-700 mb-3">Dados para o cabeçalho</h3>
            <div className="space-y-3">
              <div>
                <label className="label">Nome do aluno</label>
                <input
                  type="text"
                  className="input"
                  placeholder="Ex.: Maria Silva"
                  value={nomeAluno}
                  onChange={(e) => setNomeAluno(e.target.value)}
                />
              </div>
              <div className="grid grid-cols-2 gap-3">
                <div>
                  <label className="label">Escola</label>
                  <input
                    type="text"
                    className="input"
                    placeholder="Nome da escola"
                    value={nomeEscola}
                    onChange={(e) => setNomeEscola(e.target.value)}
                  />
                </div>
                <div>
                  <label className="label">Turma</label>
                  <input
                    type="text"
                    className="input"
                    placeholder="Ex.: 3.º Ano B"
                    value={turma}
                    onChange={(e) => setTurma(e.target.value)}
                  />
                </div>
              </div>
              <div>
                <label className="label">Data</label>
                <input
                  type="text"
                  className="input"
                  placeholder="DD/MM/AAAA"
                  value={data}
                  onChange={(e) => setData(e.target.value)}
                />
              </div>
            </div>
          </div>

          {/* Opções */}
          <div className="card">
            <label className="flex items-center gap-3 cursor-pointer">
              <input
                type="checkbox"
                checked={incluirGabarito}
                onChange={(e) => setIncluirGabarito(e.target.checked)}
                className="w-5 h-5 accent-verde rounded"
              />
              <div>
                <p className="font-semibold text-gray-700">Incluir gabarito</p>
                <p className="text-xs text-gray-400">Adiciona página extra com respostas (modo professor)</p>
              </div>
            </label>
          </div>

          {error && <p className="text-red-600 text-sm bg-red-50 rounded-xl px-4 py-3">{error}</p>}
          {success && <p className="text-verde text-sm bg-verde-light rounded-xl px-4 py-3">✅ {success}</p>}

          <button type="submit" disabled={gerating} className="btn-primary w-full text-base py-4">
            {gerating ? '⏳ Gerando PDF…' : '⬇️ Gerar e Baixar PDF'}
          </button>
        </form>

        {/* Preview ao vivo */}
        <div className="col-span-2">
          <div className="sticky top-6">
            <div className="card">
              <h3 className="font-bold text-gray-700 mb-4">Preview da Ficha</h3>

              {loadingPreview ? (
                <div className="text-center py-8 text-gray-300 animate-pulse text-sm">Carregando…</div>
              ) : preview ? (
                <div className="space-y-4">
                  <div>
                    <p className="text-xs text-gray-400 uppercase tracking-wide mb-1">Lição</p>
                    <p className="font-bold text-gray-800 text-sm">{preview.titulo_licao}</p>
                  </div>

                  <div className="grid grid-cols-3 gap-2 text-center">
                    {[
                      { label: 'Prepare-se', n: preview.total_questoes.bloco1, color: 'bg-amarelo-light text-amarelo-dark' },
                      { label: 'Vamos Praticar', n: preview.total_questoes.bloco3, color: 'bg-verde-light text-verde-dark' },
                      { label: 'Prática', n: preview.total_questoes.bloco4, color: 'bg-azul-light text-azul-dark' },
                    ].map((b) => (
                      <div key={b.label} className={`${b.color} rounded-xl p-3`}>
                        <p className="text-2xl font-bold">{b.n}</p>
                        <p className="text-xs mt-0.5 font-semibold opacity-80">{b.label}</p>
                      </div>
                    ))}
                  </div>

                  <div>
                    <p className="text-xs text-gray-400 uppercase tracking-wide mb-2">Tipos de atividade (Bloco 4)</p>
                    <div className="flex flex-wrap gap-1.5">
                      {preview.tipos_bloco4.map((t) => (
                        <span key={t} className="text-xs bg-gray-100 text-gray-600 px-2 py-1 rounded-lg font-semibold">
                          {TIPO_LABEL[t] ?? t}
                        </span>
                      ))}
                    </div>
                  </div>

                  {/* Diagrama dos 4 blocos */}
                  <div className="border border-dashed border-gray-200 rounded-xl p-3 space-y-1.5">
                    {[
                      { n: 1, nome: 'Prepare-se',       cor: 'bg-amarelo' },
                      { n: 2, nome: 'Lição',             cor: 'bg-verde' },
                      { n: 3, nome: 'Vamos Praticar!',  cor: 'bg-azul' },
                      { n: 4, nome: 'Prática',           cor: 'bg-rosa' },
                    ].map((b) => (
                      <div key={b.n} className="flex items-center gap-2">
                        <div className={`${b.cor} w-1.5 h-6 rounded-full flex-shrink-0`} />
                        <span className="text-xs font-bold text-gray-500">Bloco {b.n}</span>
                        <span className="text-xs text-gray-600">{b.nome}</span>
                      </div>
                    ))}
                  </div>
                </div>
              ) : (
                <div className="text-center py-8 text-gray-300 text-sm">
                  Selecione nível e módulo para ver o preview
                </div>
              )}
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}
