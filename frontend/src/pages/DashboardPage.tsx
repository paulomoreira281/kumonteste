import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { supabase, type Session } from '../lib/supabase'

interface Student {
  id: string
  name: string
  grade: number | null
  current_level: number
  current_series: string
}

interface Props {
  session: Session
}

const SERIE_LABEL: Record<string, string> = { A: 'Série A', B: 'Série B', R: 'Reforço' }
const SERIE_COLOR: Record<string, string> = {
  A: 'badge-serie-a',
  B: 'badge-serie-b',
  R: 'badge-serie-r',
}

export default function DashboardPage({ session }: Props) {
  const [students, setStudents] = useState<Student[]>([])
  const [loading, setLoading] = useState(true)
  const navigate = useNavigate()

  useEffect(() => {
    async function load() {
      const { data } = await supabase
        .from('students')
        .select('id, name, grade, current_level, current_series')
        .eq('user_id', session.user.id)
        .order('name')
      setStudents((data as Student[]) ?? [])
      setLoading(false)
    }
    load()
  }, [session.user.id])

  return (
    <div>
      {/* Cabeçalho */}
      <div className="flex items-center justify-between mb-8">
        <div>
          <h1 className="font-display text-3xl text-gray-800">Início</h1>
          <p className="text-gray-400 text-sm mt-1">Gerencie fichas e acompanhe o progresso</p>
        </div>
        <button onClick={() => navigate('/nova-ficha')} className="btn-primary">
          + Nova Ficha
        </button>
      </div>

      {/* Cards de ação rápida */}
      <div className="grid grid-cols-3 gap-4 mb-8">
        {[
          { icon: '📄', label: 'Nova Ficha', sub: 'Gerar PDF', to: '/nova-ficha', cor: 'bg-verde-light border-verde/20' },
          { icon: '⭐', label: 'Registrar Resultado', sub: 'Nota 0–10', to: '/resultado', cor: 'bg-amarelo-light border-amarelo/20' },
          { icon: '👦', label: 'Alunos', sub: 'Gerenciar', to: '/alunos', cor: 'bg-azul-light border-azul/20' },
        ].map((item) => (
          <button
            key={item.to}
            onClick={() => navigate(item.to)}
            className={`card border ${item.cor} text-left hover:shadow-md transition-shadow`}
          >
            <div className="text-3xl mb-3">{item.icon}</div>
            <p className="font-bold text-gray-800">{item.label}</p>
            <p className="text-gray-400 text-xs mt-0.5">{item.sub}</p>
          </button>
        ))}
      </div>

      {/* Lista de alunos */}
      <div className="card">
        <div className="flex items-center justify-between mb-4">
          <h2 className="font-bold text-gray-800">Meus Alunos</h2>
          <button
            onClick={() => navigate('/alunos')}
            className="text-sm text-verde hover:underline font-semibold"
          >
            Ver todos →
          </button>
        </div>

        {loading ? (
          <div className="text-center py-8 text-gray-300 animate-pulse">Carregando…</div>
        ) : students.length === 0 ? (
          <div className="text-center py-8">
            <p className="text-gray-400 text-sm">Nenhum aluno cadastrado ainda.</p>
            <button
              onClick={() => navigate('/alunos')}
              className="btn-secondary mt-3 text-sm py-2"
            >
              Cadastrar primeiro aluno
            </button>
          </div>
        ) : (
          <div className="space-y-3">
            {students.slice(0, 5).map((s) => (
              <div
                key={s.id}
                className="flex items-center justify-between py-3 border-b border-gray-50 last:border-0"
              >
                <div className="flex items-center gap-3">
                  <div className="w-9 h-9 rounded-xl bg-verde-light flex items-center justify-center font-bold text-verde text-sm">
                    {s.name.charAt(0).toUpperCase()}
                  </div>
                  <div>
                    <p className="font-semibold text-gray-800 text-sm">{s.name}</p>
                    <p className="text-gray-400 text-xs">
                      {s.grade ? `${s.grade}.º ano` : 'Série não definida'}
                    </p>
                  </div>
                </div>
                <div className="flex items-center gap-2">
                  <span className="text-xs text-gray-400">Nível {s.current_level}</span>
                  <span className={SERIE_COLOR[s.current_series] ?? 'badge-serie-a'}>
                    {SERIE_LABEL[s.current_series] ?? s.current_series}
                  </span>
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
                    className="text-xs btn-secondary py-1.5 px-3"
                  >
                    Gerar ficha
                  </button>
                </div>
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  )
}
