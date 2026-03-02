-- ============================================================
-- GeraFicha — Schema SQL Completo
-- Supabase / PostgreSQL
-- Versão: 1.0 | Março 2026
-- ============================================================
-- Execute este arquivo no SQL Editor do Supabase
-- Ordem: extensions → tabelas → índices → RLS → triggers
-- ============================================================

-- ── EXTENSIONS ──────────────────────────────────────────────
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pgcrypto";


-- ============================================================
-- TABELA: users (gerenciada pelo Supabase Auth, extendida aqui)
-- ============================================================
CREATE TABLE IF NOT EXISTS public.users (
  id            UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  email         TEXT NOT NULL UNIQUE,
  full_name     TEXT,
  role          TEXT NOT NULL DEFAULT 'parent'
                  CHECK (role IN ('teacher', 'parent', 'admin')),
  school_name   TEXT,
  school_id     UUID,               -- para multitenancy futuro
  created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

COMMENT ON TABLE public.users IS 'Perfis de usuários — professores, pais e administradores';
COMMENT ON COLUMN public.users.role IS 'teacher | parent | admin';


-- ============================================================
-- TABELA: students
-- ============================================================
CREATE TABLE IF NOT EXISTS public.students (
  id              UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id         UUID NOT NULL REFERENCES public.users(id) ON DELETE CASCADE,
  name            TEXT NOT NULL,
  grade           SMALLINT CHECK (grade BETWEEN 1 AND 9),  -- 1º ao 9º ano
  current_level   SMALLINT NOT NULL DEFAULT 1
                    CHECK (current_level BETWEEN 1 AND 120),
  current_series  CHAR(1) NOT NULL DEFAULT 'A'
                    CHECK (current_series IN ('A', 'B', 'R')),
  notes           TEXT,
  created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at      TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

COMMENT ON TABLE public.students IS 'Alunos cadastrados por um usuário (pai ou professor)';
COMMENT ON COLUMN public.students.current_level   IS 'Nível atual do aluno (1–120)';
COMMENT ON COLUMN public.students.current_series  IS 'Série atual: A (normal) | B (repetição) | R (reforço)';


-- ============================================================
-- TABELA: images
-- ============================================================
CREATE TABLE IF NOT EXISTS public.images (
  id          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  category    TEXT NOT NULL CHECK (category IN ('lesson', 'exercise', 'decoration')),
  module      TEXT CHECK (module IN (
                'acentuacao', 'ortografia', 'classes',
                'sintaxe', 'interpretacao', 'geral'
              )),
  level       SMALLINT CHECK (level BETWEEN 1 AND 120),
  tags        TEXT[],             -- ex.: ['gato', 'animal', 'silaba']
  file_path   TEXT NOT NULL,      -- caminho no Supabase Storage
  alt_text    TEXT NOT NULL,      -- acessibilidade
  format      TEXT NOT NULL DEFAULT 'svg' CHECK (format IN ('svg', 'png', 'jpg')),
  created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

COMMENT ON TABLE public.images IS 'Banco de imagens fixo: ilustrações de lição, imagens de exercício (IE) e decoração';
COMMENT ON COLUMN public.images.category IS 'lesson=ilustração da lição | exercise=imagem de questão IE | decoration=identidade visual';


-- ============================================================
-- TABELA: questions
-- ============================================================
CREATE TABLE IF NOT EXISTS public.questions (
  id              UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  module          TEXT NOT NULL CHECK (module IN (
                    'acentuacao', 'ortografia', 'classes',
                    'sintaxe', 'interpretacao'
                  )),
  level           SMALLINT NOT NULL CHECK (level BETWEEN 1 AND 120),
  series          CHAR(1) NOT NULL CHECK (series IN ('A', 'B', 'R')),
  block           SMALLINT NOT NULL CHECK (block IN (1, 2, 3, 4)),
                  -- 1=Prepare-se, 2=Lição(conteúdo fixo), 3=Vamos Praticar, 4=Prática
  type            TEXT NOT NULL CHECK (type IN (
                    'MC', 'CL', 'RF', 'VF', 'DS', 'IT', 'PG', 'CT', 'AS', 'IE'
                  )),
  is_guided       BOOLEAN NOT NULL DEFAULT FALSE,
                  -- TRUE = questão do Bloco 3 (com gabarito de suporte)
  content         JSONB NOT NULL,
                  -- estrutura varia por tipo, ver comentário abaixo
  correct_answer  TEXT NOT NULL,
  image_id        UUID REFERENCES public.images(id),
  bncc_skill      TEXT,           -- ex.: 'EF04LP01'
  difficulty      SMALLINT DEFAULT 1 CHECK (difficulty BETWEEN 1 AND 3),
                  -- 1=fácil, 2=médio, 3=difícil
  active          BOOLEAN NOT NULL DEFAULT TRUE,
  created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at      TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

/*
  Estrutura do campo JSONB `content` por tipo:

  MC  (múltipla escolha):
    { "stem": "texto da questão", "options": ["A) ...", "B) ...", "C) ...", "D) ..."] }

  CL  (completar lacuna):
    { "stem": "texto com ___ no lugar da resposta" }

  RF  (reescrita de frase):
    { "stem": "frase com erro para o aluno corrigir" }

  VF  (verdadeiro/falso):
    { "stem": "afirmação para o aluno julgar" }

  DS  (dividir sílabas):
    { "word": "palavra a ser separada" }

  IT  (identificação em texto):
    { "text": "texto base", "instruction": "o que o aluno deve sublinhar/circular" }

  PG  (produção guiada):
    { "instruction": "instrução para produção", "word_bank": ["palavra1", "palavra2"] }

  CT  (correção de texto):
    { "text": "trecho com erros para corrigir", "error_count": 3 }

  AS  (associação):
    { "column_a": ["item1", "item2"], "column_b": ["match1", "match2"] }

  IE  (imagem + escrita):
    { "instruction": "o que o aluno deve fazer com a imagem" }
    -- image_id é obrigatório neste tipo
*/

COMMENT ON TABLE public.questions IS 'Banco de questões: mínimo 5.760 questões para os 120 níveis × 3 fichas';
COMMENT ON COLUMN public.questions.type IS 'MC|CL|RF|VF|DS|IT|PG|CT|AS|IE';
COMMENT ON COLUMN public.questions.block IS '1=Prepare-se | 3=Vamos Praticar (guiado) | 4=Prática (livre)';


-- ============================================================
-- TABELA: worksheets  (fichas pré-compostas e geradas)
-- ============================================================
CREATE TABLE IF NOT EXISTS public.worksheets (
  id              UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  title           TEXT NOT NULL,
  module          TEXT NOT NULL CHECK (module IN (
                    'acentuacao', 'ortografia', 'classes',
                    'sintaxe', 'interpretacao'
                  )),
  level           SMALLINT NOT NULL CHECK (level BETWEEN 1 AND 120),
  series          CHAR(1) NOT NULL CHECK (series IN ('A', 'B', 'R')),
  lesson_image_id UUID REFERENCES public.images(id),
                  -- ilustração do Bloco 2 (Lição)
  lesson_text     TEXT,
                  -- narrativa do Bloco 2 (Lição)
  lesson_examples JSONB,
                  -- exemplos resolvidos: [{ "word":"café", "syllables":"ca·FÉ", "tonic":"FÉ" }]
  created_by      UUID REFERENCES public.users(id),
  is_template     BOOLEAN NOT NULL DEFAULT FALSE,
                  -- TRUE = ficha pré-definida; FALSE = gerada sob demanda
  settings        JSONB DEFAULT '{}',
                  -- configurações extras: numero_questoes, etc.
  created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

COMMENT ON TABLE public.worksheets IS 'Fichas pedagógicas: pré-definidas (template) ou geradas sob demanda';
COMMENT ON COLUMN public.worksheets.series IS 'A=normal | B=repetição | R=reforço';


-- ============================================================
-- TABELA: worksheet_questions  (pivot: ficha ↔ questões)
-- ============================================================
CREATE TABLE IF NOT EXISTS public.worksheet_questions (
  id            UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  worksheet_id  UUID NOT NULL REFERENCES public.worksheets(id) ON DELETE CASCADE,
  question_id   UUID NOT NULL REFERENCES public.questions(id),
  position      SMALLINT NOT NULL,   -- ordem dentro da ficha
  block         SMALLINT NOT NULL CHECK (block IN (1, 2, 3, 4)),
  UNIQUE (worksheet_id, position)
);

COMMENT ON TABLE public.worksheet_questions IS 'Questões de cada ficha, com posição e bloco';


-- ============================================================
-- TABELA: pdf_exports
-- ============================================================
CREATE TABLE IF NOT EXISTS public.pdf_exports (
  id                  UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  worksheet_id        UUID NOT NULL REFERENCES public.worksheets(id),
  student_id          UUID REFERENCES public.students(id),
  student_name        TEXT,          -- nome digitado manualmente (sem cadastro)
  school_name         TEXT,
  grade_label         TEXT,          -- ex.: '3.º Ano'
  date_label          TEXT,          -- data no cabeçalho da ficha
  include_answer_key  BOOLEAN NOT NULL DEFAULT FALSE,
  pdf_url             TEXT,          -- URL assinada do Supabase Storage
  pdf_expires_at      TIMESTAMPTZ,   -- expiração do link (24h)
  created_by          UUID REFERENCES public.users(id),
  created_at          TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

COMMENT ON TABLE public.pdf_exports IS 'PDFs gerados: URL com expiração de 24h no Storage';


-- ============================================================
-- TABELA: scores  (pontuação registrada pelo pai)
-- ============================================================
CREATE TABLE IF NOT EXISTS public.scores (
  id              UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  student_id      UUID NOT NULL REFERENCES public.students(id) ON DELETE CASCADE,
  worksheet_id    UUID NOT NULL REFERENCES public.worksheets(id),
  pdf_export_id   UUID REFERENCES public.pdf_exports(id),
  level           SMALLINT NOT NULL CHECK (level BETWEEN 1 AND 120),
  series          CHAR(1) NOT NULL CHECK (series IN ('A', 'B', 'R')),
  score           SMALLINT NOT NULL CHECK (score BETWEEN 0 AND 10),
                  -- nota de 0 a 10 dada pelo pai/responsável
  recommendation  TEXT NOT NULL CHECK (recommendation IN ('advance', 'repeat', 'reinforce')),
                  -- gerada automaticamente pelo sistema
                  -- advance: score>=7 | repeat: score 5-6 | reinforce: score<=4
  decision        TEXT NOT NULL CHECK (decision IN ('advance', 'repeat', 'reinforce')),
                  -- decisão final do pai (pode diferir da recomendação)
  notes           TEXT,             -- observações opcionais do pai
  registered_by   UUID REFERENCES public.users(id),
  created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

COMMENT ON TABLE public.scores IS 'Registro de notas pelo pai: score 0-10, recomendação do sistema, decisão final do pai';
COMMENT ON COLUMN public.scores.recommendation IS 'Sistema: advance(>=7) | repeat(5-6) | reinforce(<=4)';
COMMENT ON COLUMN public.scores.decision       IS 'Decisão final do pai — pode sobrepor a recomendação';


-- ============================================================
-- ÍNDICES
-- ============================================================

-- questions: buscas frequentes por módulo/nível/série/tipo/bloco
CREATE INDEX IF NOT EXISTS idx_questions_module_level_series
  ON public.questions (module, level, series);

CREATE INDEX IF NOT EXISTS idx_questions_block
  ON public.questions (block);

CREATE INDEX IF NOT EXISTS idx_questions_type
  ON public.questions (type);

CREATE INDEX IF NOT EXISTS idx_questions_active
  ON public.questions (active) WHERE active = TRUE;

-- students: busca por usuário
CREATE INDEX IF NOT EXISTS idx_students_user_id
  ON public.students (user_id);

-- scores: histórico por aluno
CREATE INDEX IF NOT EXISTS idx_scores_student_id
  ON public.scores (student_id);

CREATE INDEX IF NOT EXISTS idx_scores_student_level
  ON public.scores (student_id, level, series);

-- worksheets: fichas por nível/série (para rotação anti-repetição)
CREATE INDEX IF NOT EXISTS idx_worksheets_level_series
  ON public.worksheets (level, series);

-- pdf_exports: por aluno
CREATE INDEX IF NOT EXISTS idx_pdf_exports_student
  ON public.pdf_exports (student_id);

-- images: por categoria/módulo
CREATE INDEX IF NOT EXISTS idx_images_category_module
  ON public.images (category, module);


-- ============================================================
-- TRIGGERS — updated_at automático
-- ============================================================

CREATE OR REPLACE FUNCTION public.set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_users_updated_at
  BEFORE UPDATE ON public.users
  FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();

CREATE TRIGGER trg_students_updated_at
  BEFORE UPDATE ON public.students
  FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();

CREATE TRIGGER trg_questions_updated_at
  BEFORE UPDATE ON public.questions
  FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();


-- ============================================================
-- TRIGGER — atualizar current_level/series do aluno após score
-- ============================================================

CREATE OR REPLACE FUNCTION public.update_student_progress()
RETURNS TRIGGER AS $$
BEGIN
  -- Avança: próximo nível, série A
  IF NEW.decision = 'advance' THEN
    UPDATE public.students
    SET
      current_level  = LEAST(NEW.level + 1, 120),
      current_series = 'A',
      updated_at     = NOW()
    WHERE id = NEW.student_id;

  -- Repete: mesmo nível, série B
  ELSIF NEW.decision = 'repeat' THEN
    UPDATE public.students
    SET
      current_series = 'B',
      updated_at     = NOW()
    WHERE id = NEW.student_id;

  -- Reforço: mesmo nível, série R
  ELSIF NEW.decision = 'reinforce' THEN
    UPDATE public.students
    SET
      current_series = 'R',
      updated_at     = NOW()
    WHERE id = NEW.student_id;
  END IF;

  -- Após completar série R: retorna para série A do mesmo nível
  -- (tratado no próximo score: quando series='R' e decision='advance',
  --  o pai escolherá 'repeat' para voltar ao nível A — ou o sistema
  --  pode tratar isso na lógica do backend)

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_student_progress
  AFTER INSERT ON public.scores
  FOR EACH ROW EXECUTE FUNCTION public.update_student_progress();


-- ============================================================
-- ROW LEVEL SECURITY (RLS)
-- ============================================================

ALTER TABLE public.users              ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.students           ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.questions          ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.images             ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.worksheets         ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.worksheet_questions ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.pdf_exports        ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.scores             ENABLE ROW LEVEL SECURITY;

-- users: cada usuário vê/edita apenas o próprio perfil
CREATE POLICY "users_self" ON public.users
  FOR ALL USING (auth.uid() = id);

-- students: usuário vê/edita apenas seus alunos
CREATE POLICY "students_owner" ON public.students
  FOR ALL USING (auth.uid() = user_id);

-- questions: leitura pública (todos os usuários autenticados)
CREATE POLICY "questions_read" ON public.questions
  FOR SELECT USING (auth.role() = 'authenticated');

-- questions: escrita apenas para admins e teachers
CREATE POLICY "questions_write" ON public.questions
  FOR ALL USING (
    auth.uid() IN (
      SELECT id FROM public.users WHERE role IN ('admin', 'teacher')
    )
  );

-- images: leitura pública
CREATE POLICY "images_read" ON public.images
  FOR SELECT USING (auth.role() = 'authenticated');

-- images: escrita apenas para admins
CREATE POLICY "images_write" ON public.images
  FOR ALL USING (
    auth.uid() IN (SELECT id FROM public.users WHERE role = 'admin')
  );

-- worksheets: leitura pública
CREATE POLICY "worksheets_read" ON public.worksheets
  FOR SELECT USING (auth.role() = 'authenticated');

-- worksheets: escrita apenas para admins e teachers
CREATE POLICY "worksheets_write" ON public.worksheets
  FOR ALL USING (
    auth.uid() IN (
      SELECT id FROM public.users WHERE role IN ('admin', 'teacher')
    )
  );

-- worksheet_questions: leitura pública
CREATE POLICY "wq_read" ON public.worksheet_questions
  FOR SELECT USING (auth.role() = 'authenticated');

-- pdf_exports: usuário vê apenas seus próprios exports
CREATE POLICY "pdf_exports_owner" ON public.pdf_exports
  FOR ALL USING (auth.uid() = created_by);

-- scores: usuário vê apenas scores de seus alunos
CREATE POLICY "scores_owner" ON public.scores
  FOR ALL USING (
    auth.uid() = registered_by
    OR auth.uid() IN (
      SELECT user_id FROM public.students WHERE id = student_id
    )
  );


-- ============================================================
-- VIEWS ÚTEIS
-- ============================================================

-- Progresso resumido por aluno
CREATE OR REPLACE VIEW public.v_student_progress AS
SELECT
  s.id            AS student_id,
  s.name          AS student_name,
  s.user_id,
  s.current_level,
  s.current_series,
  COUNT(sc.id)    AS total_attempts,
  MAX(sc.score)   AS best_score,
  AVG(sc.score)   AS avg_score,
  MAX(sc.created_at) AS last_attempt_at
FROM public.students s
LEFT JOIN public.scores sc ON sc.student_id = s.id
GROUP BY s.id, s.name, s.user_id, s.current_level, s.current_series;

-- Questões disponíveis por nível/série (ativas)
CREATE OR REPLACE VIEW public.v_available_questions AS
SELECT
  q.*,
  i.file_path  AS image_path,
  i.alt_text   AS image_alt,
  i.format     AS image_format
FROM public.questions q
LEFT JOIN public.images i ON i.id = q.image_id
WHERE q.active = TRUE;


-- ============================================================
-- DADOS INICIAIS — roles e configurações
-- ============================================================

-- Nota: usuários são criados pelo Supabase Auth.
-- O trigger abaixo cria o perfil na tabela users automaticamente.

CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO public.users (id, email, full_name, role)
  VALUES (
    NEW.id,
    NEW.email,
    NEW.raw_user_meta_data->>'full_name',
    COALESCE(NEW.raw_user_meta_data->>'role', 'parent')
  );
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER trg_on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();


-- ============================================================
-- FIM DO SCHEMA
-- Próximo passo: popular o banco com questões (Etapa 7)
-- Use: backend/api/seed_questions.py ou importação CSV
-- ============================================================
