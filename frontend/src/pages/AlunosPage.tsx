import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { supabase, type Session } from '../lib/supabase'

interface Student {
  id: string
  name: string
  grade: number | null
  current_level: number
  current_series: string
  notes: string | null
}

interface Props {
  session: Session
}

const SERIE_COLOR: Record<string, string> = {
  A: 'badge-serie-a',
  B: 'badge-serie-b',
  R: 'badge-serie-r',
}

export default function AlunosPage({ session }: Props) {
  const [students, setStudents] = useState<Student[]>([])
  const [loading, setLoading] = useState(true)
  const [showForm, setShowForm] = useState(false)
  const [saving, setSaving] = useState(false)
  const [error, setError] = useState('')
  const navigate = useNavigate()

  // Form state
  const [name, setName] = useState('')
  const [grade, setGrade] = useState<number | ''>(3)
  const [notes, setNotes] = useState('')

  async function loadStudents() {
    setLoading(true)
    const { data } = await supabase
      .from('students')
      .select('id, name, grade, current_level, current_series, notes')
      .eq('user_id', session.user.id)
      .order('name')
    setStudents((data as Student[]) ?? [])
    setLoading(false)
  }

  useEffect(() => { loadStudents() }, []) // eslint-disable-line

  async function handleSave(e: React.FormEvent) {
    e.preventDefault()
    if (!name.trim()) return
    setSaving(true)
    setError('')
    try {
      const { error } = await supabase.from('students').insert({
        user_id: session.user.id,
        name: name.trim(),
        grade: grade || null,
        notes: notes.trim() || null,
      })
      if (error) throw error
      setName(''); setGrade(3); setNotes('')
      setShowForm(false)
      await loadStudents()
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : 'Erro ao salvar')
    } finally {
      setSaving(false)
    }
  }

  async function handleDelete(id: string) {
    if (!confirm('Remover este aluno? O histórico será excluído.')) return
    await supabase.from('students').delete().eq('id', id)
    await loadStudents()
  }

  return (
    <div>
      <div className="flex items-center justify-between mb-8">
        <div>
          <h1 className="font-display text-3xl text-gray-800">Alunos</h1>
          <p className="text-gray-400 text-sm mt-1">{students.length} aluno(s) cadastrado(s)</p>
        </div>
        <button onClick={() => setShowForm(!showForm)} className="btn-primary">
          {showForm ? '✕ Cancelar' : '+ Novo Aluno'}
        </button>
      </div>

      {/* Formulário */}
      {showForm && (
        <form onSubmit={handleSave} className="card mb-6 space-y-4 border-2 border-verde/20">
          <h3 className="font-bold text-gray-700">Novo Aluno</h3>
          <div className="grid grid-cols-2 gap-4">
            <div>
              <label className="label">Nome completo *</label>
              <input
                className="input"
                placeholder="Ex.: Maria Silva"
                value={name}
                onChange={(e) => setName(e.target.value)}
                required
              />
            </div>
            <div>
              <label className="label">Ano escolar</label>
              <select
                className="input"
                value={grade}
                onChange={(e) => setGrade(e.target.value ? Number(e.target.value) : '')}
              >
                <option value="">Não informado</option>
                {[1,2,3,4,5,6,7,8,9].map((n) => (
                  <option key={n} value={n}>{n}.º ano</option>
                ))}
              </select>
            </div>
          </div>
          <div>
            <label className="label">Observações</label>
            <textarea
              className="input resize-none"
              rows={2}
              placeholder="Dificuldades específicas, observações..."
              value={notes}
              onChange={(e) => setNotes(e.target.value)}
            />
          </div>
          {error && <p className="text-red-600 text-sm bg-red-50 rounded-lg px-3 py-2">{error}</p>}
          <div className="flex gap-3">
            <button type="submit" disabled={saving} className="btn-primary">
              {saving ? 'Salvando…' : 'Salvar Aluno'}
            </button>
            <button type="button" onClick={() => setShowForm(false)} className="btn-secondary">
              Cancelar
            </button>
          </div>
        </form>
      )}

      {/* Lista */}
      {loading ? (
        <div className="text-center py-12 text-gray-300 animate-pulse">Carregando…</div>
      ) : students.length === 0 ? (
        <div className="card text-center py-12">
          <p className="text-gray-400">Nenhum aluno cadastrado.</p>
          <button onClick={() => setShowForm(true)} className="btn-secondary mt-4">
            Cadastrar primeiro aluno
          </button>
        </div>
      ) : (
        <div className="space-y-3">
          {students.map((s) => (
            <div key={s.id} className="card flex items-center gap-4">
              {/* Avatar */}
              <div className="w-11 h-11 rounded-xl bg-verde-light flex items-center justify-center font-bold text-verde text-lg flex-shrink-0">
                {s.name.charAt(0).toUpperCase()}
              </div>

              {/* Dados */}
              <div className="flex-1 min-w-0">
                <div className="flex items-center gap-2">
                  <p className="font-bold text-gray-800">{s.name}</p>
                  {s.grade && (
                    <span className="text-xs text-gray-400 bg-gray-100 px-2 py-0.5 rounded-lg">
                      {s.grade}.º ano
                    </span>
                  )}
                </div>
                {s.notes && (
                  <p className="text-xs text-gray-400 truncate mt-0.5">{s.notes}</p>
                )}
              </div>

              {/* Nível */}
              <div className="text-center flex-shrink-0">
                <p className="text-xs text-gray-400">Nível</p>
                <p className="font-bold text-gray-800 text-lg">{s.current_level}</p>
                <span className={SERIE_COLOR[s.current_series] ?? 'badge-serie-a'}>
                  Série {s.current_series}
                </span>
              </div>

              {/* Ações */}
              <div className="flex gap-2 flex-shrink-0">
                <button
                  onClick={() =>
                    navigate('/nova-ficha', {
                      state: {
                        student_id: s.id,
                        nome_aluno: s.name,
                        nivel: s.current_level,
                        serie: s.current_series,
                      },
                    })
                  }
                  className="btn-secondary text-sm py-2 px-3"
                >
                  Gerar Ficha
                </button>
                <button
                  onClick={() => handleDelete(s.id)}
                  className="btn-danger text-sm py-2 px-3"
                >
                  ✕
                </button>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  )
}
