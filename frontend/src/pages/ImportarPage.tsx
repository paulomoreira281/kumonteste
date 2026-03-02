import { useState, useRef } from 'react'
import { useNavigate } from 'react-router-dom'

const API = import.meta.env.VITE_API_URL ?? 'http://localhost:8000'

interface ImportResult {
  total: number
  criadas: number
  erros: Array<{ linha: number; erro: string; dado: Record<string, unknown> }>
}

const CSV_TEMPLATE = `module,level,series,block,type,content_enunciado,correct_answer,bncc_skill,difficulty,guided
acentuacao,1,A,4,DS,CAFÉ,ca-FÉ,EF04LP01,1,false
acentuacao,1,A,4,VF,Na palavra CAFÉ a tônica é CA.,F — tônica é FÉ,EF04LP01,1,false
acentuacao,1,B,4,DS,SAPATO,sa-PA-to,EF04LP01,1,false
acentuacao,2,A,1,DS,GATO,GA-to,EF04LP01,1,false
acentuacao,2,A,3,DS,ÁRVORE,ÁR-vo-re,EF04LP01,2,true`

export default function ImportarPage() {
  const navigate = useNavigate()
  const fileRef = useRef<HTMLInputElement>(null)
  const [file, setFile] = useState<File | null>(null)
  const [result, setResult] = useState<ImportResult | null>(null)
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState('')

  function handleFileChange(e: React.ChangeEvent<HTMLInputElement>) {
    const f = e.target.files?.[0] ?? null
    setFile(f)
    setResult(null)
    setError('')
  }

  async function handleImportar() {
    if (!file) return
    setLoading(true)
    setError('')
    setResult(null)

    const form = new FormData()
    form.append('file', file)

    try {
      const res = await fetch(`${API}/api/questions/import`, {
        method: 'POST',
        body: form,
      })
      const data = await res.json()
      if (!res.ok) throw new Error(data.detail ?? 'Erro na importação')
      setResult(data as ImportResult)
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : 'Erro desconhecido')
    } finally {
      setLoading(false)
    }
  }

  function downloadTemplate() {
    const blob = new Blob([CSV_TEMPLATE], { type: 'text/csv;charset=utf-8;' })
    const url = URL.createObjectURL(blob)
    const a = document.createElement('a')
    a.href = url
    a.download = 'geraficha_template_questoes.csv'
    a.click()
    URL.revokeObjectURL(url)
  }

  return (
    <div>
      <div className="flex items-center gap-4 mb-8">
        <button onClick={() => navigate('/questoes')} className="text-gray-400 hover:text-gray-600">
          ← Banco de Questões
        </button>
        <div>
          <h1 className="font-display text-3xl text-gray-800">Importar Questões</h1>
          <p className="text-gray-400 text-sm mt-1">CSV ou JSON em lote</p>
        </div>
      </div>

      <div className="max-w-2xl space-y-5">
        {/* Template */}
        <div className="card border-2 border-dashed border-amarelo/40 bg-amarelo-light/30">
          <div className="flex items-start gap-4">
            <div className="text-3xl">📋</div>
            <div className="flex-1">
              <h3 className="font-bold text-gray-700">Template CSV</h3>
              <p className="text-sm text-gray-500 mt-1">
                Baixe o modelo, preencha com as questões e importe abaixo.
                Cada linha = uma questão.
              </p>
              <button onClick={downloadTemplate} className="btn-secondary text-sm py-2 mt-3">
                ⬇ Baixar template.csv
              </button>
            </div>
          </div>
        </div>

        {/* Colunas do CSV */}
        <div className="card">
          <h3 className="font-bold text-gray-700 mb-3">Campos do CSV</h3>
          <div className="overflow-x-auto">
            <table className="w-full text-xs">
              <thead>
                <tr className="border-b border-gray-100">
                  <th className="text-left py-2 pr-4 font-bold text-gray-500">Campo</th>
                  <th className="text-left py-2 pr-4 font-bold text-gray-500">Valores</th>
                  <th className="text-left py-2 font-bold text-gray-500">Exemplo</th>
                </tr>
              </thead>
              <tbody className="divide-y divide-gray-50">
                {[
                  ['module',           'acentuacao | ortografia | classes | sintaxe | interpretacao', 'acentuacao'],
                  ['level',            '1–120', '1'],
                  ['series',           'A | B | R', 'A'],
                  ['block',            '1 | 2 | 3 | 4', '4'],
                  ['type',             'DS | VF | MC | CL | RF | IE | IT | PG | CT | AS', 'DS'],
                  ['content_enunciado','Texto da questão ou palavra', 'CAFÉ'],
                  ['correct_answer',   'Resposta em texto', 'ca-FÉ'],
                  ['bncc_skill',       'Código BNCC', 'EF04LP01'],
                  ['difficulty',       '1 (fácil) | 2 (médio) | 3 (difícil)', '1'],
                  ['guided',           'true | false (exercício guiado = Bloco 3)', 'false'],
                ].map(([campo, valores, ex]) => (
                  <tr key={campo}>
                    <td className="py-2 pr-4 font-bold text-gray-700 font-mono">{campo}</td>
                    <td className="py-2 pr-4 text-gray-500">{valores}</td>
                    <td className="py-2 text-verde font-mono">{ex}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>

        {/* Upload */}
        <div className="card">
          <h3 className="font-bold text-gray-700 mb-3">Selecionar arquivo</h3>

          <div
            onClick={() => fileRef.current?.click()}
            className={`border-2 border-dashed rounded-xl p-8 text-center cursor-pointer transition-colors ${
              file ? 'border-verde bg-verde-light' : 'border-gray-200 hover:border-verde/40'
            }`}
          >
            <div className="text-4xl mb-2">{file ? '✅' : '📂'}</div>
            {file ? (
              <>
                <p className="font-bold text-verde">{file.name}</p>
                <p className="text-xs text-gray-400 mt-1">
                  {(file.size / 1024).toFixed(1)} KB — clique para trocar
                </p>
              </>
            ) : (
              <>
                <p className="font-semibold text-gray-500">Clique para selecionar</p>
                <p className="text-xs text-gray-400 mt-1">Aceita .csv ou .json</p>
              </>
            )}
          </div>
          <input
            ref={fileRef}
            type="file"
            accept=".csv,.json"
            onChange={handleFileChange}
            className="hidden"
          />

          {error && (
            <p className="text-red-600 text-sm bg-red-50 rounded-lg px-3 py-2 mt-3">{error}</p>
          )}

          <button
            onClick={handleImportar}
            disabled={!file || loading}
            className="btn-primary w-full mt-4"
          >
            {loading ? '⏳ Importando…' : '⬆ Importar questões'}
          </button>
        </div>

        {/* Resultado */}
        {result && (
          <div className="card space-y-4">
            <h3 className="font-bold text-gray-700">Resultado da importação</h3>

            <div className="grid grid-cols-3 gap-3 text-center">
              <div className="bg-gray-50 rounded-xl p-4">
                <p className="text-2xl font-bold text-gray-800">{result.total}</p>
                <p className="text-xs text-gray-400">Total no arquivo</p>
              </div>
              <div className="bg-verde-light rounded-xl p-4">
                <p className="text-2xl font-bold text-verde">{result.criadas}</p>
                <p className="text-xs text-verde/70">Criadas com sucesso</p>
              </div>
              <div className={`rounded-xl p-4 ${result.erros.length > 0 ? 'bg-rosa-light' : 'bg-gray-50'}`}>
                <p className={`text-2xl font-bold ${result.erros.length > 0 ? 'text-rosa' : 'text-gray-400'}`}>
                  {result.erros.length}
                </p>
                <p className="text-xs text-gray-500">Erros</p>
              </div>
            </div>

            {result.criadas > 0 && (
              <p className="text-verde text-sm bg-verde-light rounded-lg px-3 py-2">
                ✅ {result.criadas} questão(ões) adicionada(s) ao banco com sucesso!
              </p>
            )}

            {result.erros.length > 0 && (
              <div>
                <p className="text-xs font-bold text-gray-500 uppercase tracking-wide mb-2">
                  Erros ({result.erros.length})
                </p>
                <div className="space-y-2 max-h-48 overflow-y-auto">
                  {result.erros.map((err, i) => (
                    <div key={i} className="bg-red-50 rounded-lg px-3 py-2 text-xs">
                      <span className="font-bold text-red-600">Linha {err.linha}: </span>
                      <span className="text-red-700">{err.erro}</span>
                    </div>
                  ))}
                </div>
              </div>
            )}

            <button onClick={() => navigate('/questoes')} className="btn-secondary w-full">
              Ver banco de questões →
            </button>
          </div>
        )}
      </div>
    </div>
  )
}
