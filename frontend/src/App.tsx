import { BrowserRouter, Routes, Route, Navigate } from 'react-router-dom'
import { useEffect, useState } from 'react'
import { supabase, type Session } from './lib/supabase'

import LoginPage from './pages/LoginPage'
import DashboardPage from './pages/DashboardPage'
import NovaFichaPage from './pages/NovaFichaPage'
import ResultadoPage from './pages/ResultadoPage'
import AlunosPage from './pages/AlunosPage'
import QuestoesPage from './pages/QuestoesPage'
import ImportarPage from './pages/ImportarPage'
import HistoricoPage from './pages/HistoricoPage'
import Layout from './components/Layout'

function App() {
  const [session, setSession] = useState<Session | null | undefined>(undefined)

  useEffect(() => {
    supabase.auth.getSession().then(({ data }) => setSession(data.session))
    const { data: listener } = supabase.auth.onAuthStateChange((_ev, s) => setSession(s))
    return () => listener.subscription.unsubscribe()
  }, [])

  // carregando
  if (session === undefined) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-verde-light">
        <div className="text-verde font-display text-2xl animate-pulse">GeraFicha…</div>
      </div>
    )
  }

  if (!session) {
    return (
      <BrowserRouter>
        <Routes>
          <Route path="*" element={<LoginPage />} />
        </Routes>
      </BrowserRouter>
    )
  }

  return (
    <BrowserRouter>
      <Layout session={session}>
        <Routes>
          <Route path="/" element={<Navigate to="/dashboard" replace />} />
          <Route path="/dashboard" element={<DashboardPage session={session} />} />
          <Route path="/nova-ficha" element={<NovaFichaPage />} />
          <Route path="/resultado" element={<ResultadoPage />} />
          <Route path="/alunos" element={<AlunosPage session={session} />} />
          <Route path="/questoes" element={<QuestoesPage />} />
          <Route path="/importar" element={<ImportarPage />} />
          <Route path="/historico" element={<HistoricoPage />} />
          <Route path="*" element={<Navigate to="/dashboard" replace />} />
        </Routes>
      </Layout>
    </BrowserRouter>
  )
}

export default App
