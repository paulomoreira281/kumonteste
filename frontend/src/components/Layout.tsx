import { type ReactNode } from 'react'
import { NavLink, useNavigate } from 'react-router-dom'
import { supabase, type Session } from '../lib/supabase'

interface Props {
  children: ReactNode
  session: Session
}

const navItems = [
  { to: '/dashboard',  label: 'Início',           icon: '🏠' },
  { to: '/nova-ficha', label: 'Nova Ficha',        icon: '📄' },
  { to: '/resultado',  label: 'Resultado',         icon: '⭐' },
  { to: '/historico',  label: 'Histórico',         icon: '📊' },
  { to: '/alunos',     label: 'Alunos',            icon: '👦' },
  { to: '/questoes',   label: 'Banco de Questões', icon: '🗃️' },
]

export default function Layout({ children, session }: Props) {
  const navigate = useNavigate()

  async function handleLogout() {
    await supabase.auth.signOut()
    navigate('/')
  }

  return (
    <div className="min-h-screen bg-gray-50 flex">
      {/* Sidebar */}
      <aside className="w-64 bg-white border-r border-gray-100 flex flex-col">
        {/* Logo */}
        <div className="px-6 py-5 border-b border-gray-100">
          <span className="font-display text-2xl text-verde">Gera</span>
          <span className="font-display text-2xl text-amarelo">Ficha</span>
          <p className="text-xs text-gray-400 mt-0.5">Língua Portuguesa · 120 níveis</p>
        </div>

        {/* Nav */}
        <nav className="flex-1 px-3 py-4 space-y-1">
          {navItems.map((item) => (
            <NavLink
              key={item.to}
              to={item.to}
              className={({ isActive }) =>
                `flex items-center gap-3 px-4 py-3 rounded-xl text-sm font-semibold transition-colors ${
                  isActive
                    ? 'bg-verde-light text-verde'
                    : 'text-gray-500 hover:bg-gray-50 hover:text-gray-800'
                }`
              }
            >
              <span className="text-lg">{item.icon}</span>
              {item.label}
            </NavLink>
          ))}
        </nav>

        {/* Usuário */}
        <div className="px-4 py-4 border-t border-gray-100">
          <p className="text-xs text-gray-400 truncate mb-2">{session.user.email}</p>
          <button
            onClick={handleLogout}
            className="w-full text-sm text-gray-500 hover:text-red-600 font-semibold py-2 rounded-xl hover:bg-red-50 transition-colors"
          >
            Sair
          </button>
        </div>
      </aside>

      {/* Conteúdo */}
      <main className="flex-1 overflow-auto">
        <div className="max-w-4xl mx-auto px-8 py-8">
          {children}
        </div>
      </main>
    </div>
  )
}
