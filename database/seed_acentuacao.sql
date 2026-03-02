-- ============================================================
-- GeraFicha — Seed: Módulo Acentuação (Níveis 1–24)
-- Séries A e B | Blocos 1, 3 e 4
-- Execute no SQL Editor do Supabase
-- ============================================================

-- ── NÍVEL 1-A — Sílabas tônicas: identificação ──────────────

-- Bloco 1: Prepare-se (aquecimento)
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('acentuacao', 1, 'A', 1, 'DS', false, '{"word": "casa"}', 'ca-sa', 'EF04LP01', 1),
('acentuacao', 1, 'A', 1, 'DS', false, '{"word": "pato"}', 'pa-to', 'EF04LP01', 1),
('acentuacao', 1, 'A', 1, 'DS', false, '{"word": "amor"}', 'a-mor', 'EF04LP01', 1),
('acentuacao', 1, 'A', 1, 'DS', false, '{"word": "fácil"}', 'fá-cil', 'EF04LP01', 1),

-- Bloco 3: Vamos Praticar (guiado)
('acentuacao', 1, 'A', 3, 'MC', true, '{"stem": "Qual é a sílaba tônica da palavra ESCOLA?", "options": ["A) ES", "B) CO", "C) LA"]}', 'B', 'EF04LP01', 1),
('acentuacao', 1, 'A', 3, 'VF', true, '{"stem": "A sílaba tônica é a sílaba pronunciada com mais força."}', 'V', 'EF04LP01', 1),
('acentuacao', 1, 'A', 3, 'CL', true, '{"stem": "Na palavra JANELA, a sílaba tônica é ___."}', 'NE', 'EF04LP01', 1),

-- Bloco 4: Prática (livre)
('acentuacao', 1, 'A', 4, 'MC', false, '{"stem": "Qual é a sílaba tônica da palavra BONITO?", "options": ["A) BO", "B) NI", "C) TO"]}', 'B', 'EF04LP01', 1),
('acentuacao', 1, 'A', 4, 'MC', false, '{"stem": "Qual é a sílaba tônica da palavra TELEFONE?", "options": ["A) TE", "B) LE", "C) FO", "D) NE"]}', 'C', 'EF04LP01', 1),
('acentuacao', 1, 'A', 4, 'CL', false, '{"stem": "Na palavra CADERNO, a sílaba tônica é ___."}', 'DER', 'EF04LP01', 1),
('acentuacao', 1, 'A', 4, 'CL', false, '{"stem": "Na palavra BORBOLETA, a sílaba tônica é ___."}', 'LE', 'EF04LP01', 1),
('acentuacao', 1, 'A', 4, 'VF', false, '{"stem": "Na palavra CAFÉ, a sílaba tônica é CA."}', 'F', 'EF04LP01', 1),
('acentuacao', 1, 'A', 4, 'VF', false, '{"stem": "Na palavra MÚSICA, a sílaba tônica é MÚ."}', 'V', 'EF04LP01', 1),
('acentuacao', 1, 'A', 4, 'DS', false, '{"word": "sapato"}', 'sa-pa-to', 'EF04LP01', 1),
('acentuacao', 1, 'A', 4, 'DS', false, '{"word": "borracha"}', 'bor-ra-cha', 'EF04LP01', 1);

-- ── NÍVEL 1-B — Sílabas tônicas: identificação ──────────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 1, 'B', 1, 'DS', false, '{"word": "mapa"}', 'ma-pa', 'EF04LP01', 1),
('acentuacao', 1, 'B', 1, 'DS', false, '{"word": "figo"}', 'fi-go', 'EF04LP01', 1),
('acentuacao', 1, 'B', 1, 'DS', false, '{"word": "limão"}', 'li-mão', 'EF04LP01', 1),
('acentuacao', 1, 'B', 1, 'VF', false, '{"stem": "A palavra PATO tem duas sílabas."}', 'V', 'EF04LP01', 1),

-- Bloco 3
('acentuacao', 1, 'B', 3, 'MC', true, '{"stem": "Qual é a sílaba tônica da palavra LIVRO?", "options": ["A) LI", "B) VRO"]}', 'A', 'EF04LP01', 1),
('acentuacao', 1, 'B', 3, 'CL', true, '{"stem": "Na palavra MENINO, a sílaba tônica é ___."}', 'NI', 'EF04LP01', 1),
('acentuacao', 1, 'B', 3, 'VF', true, '{"stem": "A sílaba tônica de FLOR é FLOR (palavra monossílaba tônica)."}', 'V', 'EF04LP01', 1),

-- Bloco 4
('acentuacao', 1, 'B', 4, 'MC', false, '{"stem": "Qual é a sílaba tônica de ABACAXI?", "options": ["A) A", "B) BA", "C) CA", "D) XI"]}', 'D', 'EF04LP01', 1),
('acentuacao', 1, 'B', 4, 'MC', false, '{"stem": "Qual é a sílaba tônica de ESTRADA?", "options": ["A) ES", "B) TRA", "C) DA"]}', 'B', 'EF04LP01', 1),
('acentuacao', 1, 'B', 4, 'CL', false, '{"stem": "Na palavra MACARRÃO, a sílaba tônica é ___."}', 'RRÃO', 'EF04LP01', 1),
('acentuacao', 1, 'B', 4, 'CL', false, '{"stem": "Na palavra GIRAFA, a sílaba tônica é ___."}', 'RA', 'EF04LP01', 1),
('acentuacao', 1, 'B', 4, 'VF', false, '{"stem": "Na palavra PIANO, a sílaba tônica é PIA."}', 'F', 'EF04LP01', 1),
('acentuacao', 1, 'B', 4, 'VF', false, '{"stem": "Na palavra HOTEL, a sílaba tônica é TEL."}', 'V', 'EF04LP01', 1),
('acentuacao', 1, 'B', 4, 'DS', false, '{"word": "tartaruga"}', 'tar-ta-ru-ga', 'EF04LP01', 1),
('acentuacao', 1, 'B', 4, 'DS', false, '{"word": "bicicleta"}', 'bi-ci-cle-ta', 'EF04LP01', 1);

-- ── NÍVEL 2-A — Proparoxítonas: conceito e exemplos ─────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 2, 'A', 1, 'MC', false, '{"stem": "Qual palavra tem a sílaba tônica na antepenúltima posição?", "options": ["A) café", "B) música", "C) caderno"]}', 'B', 'EF04LP01', 1),
('acentuacao', 2, 'A', 1, 'VF', false, '{"stem": "A palavra TÍTULO é proparoxítona."}', 'V', 'EF04LP01', 1),
('acentuacao', 2, 'A', 1, 'DS', false, '{"word": "médico"}', 'mé-di-co', 'EF04LP01', 1),
('acentuacao', 2, 'A', 1, 'DS', false, '{"word": "árvore"}', 'ár-vo-re', 'EF04LP01', 1),

-- Bloco 3
('acentuacao', 2, 'A', 3, 'MC', true, '{"stem": "As proparoxítonas têm o acento na:", "options": ["A) última sílaba", "B) penúltima sílaba", "C) antepenúltima sílaba"]}', 'C', 'EF04LP01', 1),
('acentuacao', 2, 'A', 3, 'VF', true, '{"stem": "Todas as proparoxítonas são sempre acentuadas graficamente."}', 'V', 'EF04LP01', 1),
('acentuacao', 2, 'A', 3, 'CL', true, '{"stem": "A palavra LÂMPADA é ___ porque o acento está na antepenúltima sílaba."}', 'proparoxítona', 'EF04LP01', 1),

-- Bloco 4
('acentuacao', 2, 'A', 4, 'MC', false, '{"stem": "Qual das palavras abaixo é proparoxítona?", "options": ["A) papel", "B) caneta", "C) pássaro", "D) avião"]}', 'C', 'EF04LP01', 1),
('acentuacao', 2, 'A', 4, 'MC', false, '{"stem": "Marque a proparoxítona:", "options": ["A) bambu", "B) janela", "C) xícara", "D) pintou"]}', 'C', 'EF04LP01', 1),
('acentuacao', 2, 'A', 4, 'CL', false, '{"stem": "ÓCULOS é uma palavra ___ (proparoxítona / oxítona / paroxítona)."}', 'proparoxítona', 'EF04LP01', 1),
('acentuacao', 2, 'A', 4, 'VF', false, '{"stem": "A palavra NÚMERO é proparoxítona."}', 'V', 'EF04LP01', 1),
('acentuacao', 2, 'A', 4, 'VF', false, '{"stem": "A palavra TELEFONE é proparoxítona."}', 'F', 'EF04LP01', 1),
('acentuacao', 2, 'A', 4, 'DS', false, '{"word": "público"}', 'pú-bli-co', 'EF04LP01', 1),
('acentuacao', 2, 'A', 4, 'DS', false, '{"word": "matemática"}', 'ma-te-má-ti-ca', 'EF04LP01', 1),
('acentuacao', 2, 'A', 4, 'RF', false, '{"stem": "Reescreva colocando o acento correto: MUSICA"}', 'MÚSICA', 'EF04LP01', 1);

-- ── NÍVEL 2-B — Proparoxítonas: conceito e exemplos ─────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 2, 'B', 1, 'MC', false, '{"stem": "Qual é proparoxítona?", "options": ["A) sofá", "B) prêmio", "C) último"]}', 'C', 'EF04LP01', 1),
('acentuacao', 2, 'B', 1, 'VF', false, '{"stem": "A palavra CÂMERA é proparoxítona."}', 'V', 'EF04LP01', 1),
('acentuacao', 2, 'B', 1, 'DS', false, '{"word": "ônibus"}', 'ô-ni-bus', 'EF04LP01', 1),
('acentuacao', 2, 'B', 1, 'DS', false, '{"word": "pálido"}', 'pá-li-do', 'EF04LP01', 1),

-- Bloco 3
('acentuacao', 2, 'B', 3, 'MC', true, '{"stem": "Proparoxítonas sempre recebem acento gráfico?", "options": ["A) Sim, sempre", "B) Não, nunca", "C) Às vezes"]}', 'A', 'EF04LP01', 1),
('acentuacao', 2, 'B', 3, 'CL', true, '{"stem": "A palavra SÍMBOLO é ___ porque o acento está na ___ sílaba."}', 'proparoxítona / antepenúltima', 'EF04LP01', 1),
('acentuacao', 2, 'B', 3, 'VF', true, '{"stem": "Na palavra FÍSICA, o acento cai na sílaba FÍ."}', 'V', 'EF04LP01', 1),

-- Bloco 4
('acentuacao', 2, 'B', 4, 'MC', false, '{"stem": "Quais são proparoxítonas? Marque a alternativa correta:", "options": ["A) lápis e bolo", "B) pássaro e óculos", "C) avião e café"]}', 'B', 'EF04LP01', 1),
('acentuacao', 2, 'B', 4, 'RF', false, '{"stem": "Coloque o acento: ARVORE"}', 'ÁRVORE', 'EF04LP01', 1),
('acentuacao', 2, 'B', 4, 'RF', false, '{"stem": "Coloque o acento: LAMPADA"}', 'LÂMPADA', 'EF04LP01', 1),
('acentuacao', 2, 'B', 4, 'CL', false, '{"stem": "RELÂMPAGO tem ___ sílabas e é ___."}', '4 / proparoxítona', 'EF04LP01', 2),
('acentuacao', 2, 'B', 4, 'VF', false, '{"stem": "A palavra CHAPÉU é proparoxítona."}', 'F', 'EF04LP01', 1),
('acentuacao', 2, 'B', 4, 'DS', false, '{"word": "história"}', 'his-tó-ria', 'EF04LP01', 1),
('acentuacao', 2, 'B', 4, 'DS', false, '{"word": "família"}', 'fa-mí-lia', 'EF04LP01', 1),
('acentuacao', 2, 'B', 4, 'MC', false, '{"stem": "Quantas proparoxítonas há na frase: ''O médico usou o óculos''?", "options": ["A) 1", "B) 2", "C) 3"]}', 'B', 'EF04LP01', 2);

-- ── NÍVEL 3-A — Proparoxítonas: aplicação e escrita ─────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 3, 'A', 1, 'RF', false, '{"stem": "Corrija: O MATEMATICO resolveu o problema."}', 'O MATEMÁTICO resolveu o problema.', 'EF04LP01', 1),
('acentuacao', 3, 'A', 1, 'VF', false, '{"stem": "PÁSSARO tem 3 sílabas."}', 'V', 'EF04LP01', 1),
('acentuacao', 3, 'A', 1, 'DS', false, '{"word": "tráfego"}', 'trá-fe-go', 'EF04LP01', 2),
('acentuacao', 3, 'A', 1, 'MC', false, '{"stem": "Qual palavra está acentuada ERRADA?", "options": ["A) lâmpada", "B) musica", "C) óculos"]}', 'B', 'EF04LP01', 1),

-- Bloco 3
('acentuacao', 3, 'A', 3, 'RF', true, '{"stem": "Reescreva acentuando corretamente: A MUSICA CLASSICA e muito BELISSIMA."}', 'A MÚSICA CLÁSSICA é muito BELÍSSIMA.', 'EF04LP01', 2),
('acentuacao', 3, 'A', 3, 'CL', true, '{"stem": "Palavras proparoxítonas ___ (sempre / nunca / às vezes) levam acento."}', 'sempre', 'EF04LP01', 1),
('acentuacao', 3, 'A', 3, 'VF', true, '{"stem": "A frase ''O ÔNIBUS passou rápido'' tem 2 proparoxítonas."}', 'V', 'EF04LP01', 2),

-- Bloco 4
('acentuacao', 3, 'A', 4, 'RF', false, '{"stem": "Corrija os acentos: O MEDICO examinou o OSSO do ATLETICO jogador."}', 'O MÉDICO examinou o OSSO do ATLÉTICO jogador.', 'EF04LP01', 2),
('acentuacao', 3, 'A', 4, 'MC', false, '{"stem": "Em qual frase TODAS as proparoxítonas estão corretas?", "options": ["A) O públíco aplaudiu o músico.", "B) O público aplaudiu o músico.", "C) O publico aplaudiu o musico."]}', 'B', 'EF04LP01', 2),
('acentuacao', 3, 'A', 4, 'CL', false, '{"stem": "ESPONTÂNEO tem ___ sílabas e é ___."}', '4 / proparoxítona', 'EF04LP01', 2),
('acentuacao', 3, 'A', 4, 'VF', false, '{"stem": "CIENTÍFICO é uma proparoxítona."}', 'V', 'EF04LP01', 2),
('acentuacao', 3, 'A', 4, 'DS', false, '{"word": "espírito"}', 'es-pí-ri-to', 'EF04LP01', 2),
('acentuacao', 3, 'A', 4, 'RF', false, '{"stem": "Escreva corretamente: ATMOSFERA TERRESTRE"}', 'ATMOSFERA TERRESTRE', 'EF04LP01', 2),
('acentuacao', 3, 'A', 4, 'PG', false, '{"instruction": "Escreva 3 palavras proparoxítonas que você conhece e divida-as em sílabas.", "word_bank": []}', 'Respostas variadas (ex.: música / mú-si-ca, óculos / ó-cu-los, médico / mé-di-co)', 'EF04LP01', 2);

-- ── NÍVEL 3-B — Proparoxítonas: aplicação e escrita ─────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 3, 'B', 1, 'RF', false, '{"stem": "Corrija: A FISICA e uma CIENCIA exata."}', 'A FÍSICA é uma CIÊNCIA exata.', 'EF04LP01', 2),
('acentuacao', 3, 'B', 1, 'VF', false, '{"stem": "SÍLABA tem 3 sílabas."}', 'V', 'EF04LP01', 1),
('acentuacao', 3, 'B', 1, 'DS', false, '{"word": "cômodo"}', 'cô-mo-do', 'EF04LP01', 2),
('acentuacao', 3, 'B', 1, 'MC', false, '{"stem": "Quantas proparoxítonas há em: ''O TÉCNICO corrigiu a ÚLTIMA jogada''?", "options": ["A) 1", "B) 2", "C) 3"]}', 'B', 'EF04LP01', 2),

-- Bloco 3
('acentuacao', 3, 'B', 3, 'RF', true, '{"stem": "Corrija: O EXERCITO esta no DECIMO lugar."}', 'O EXÉRCITO está no DÉCIMO lugar.', 'EF04LP01', 2),
('acentuacao', 3, 'B', 3, 'CL', true, '{"stem": "Na frase ''O PÁSSARO voou alto'', a palavra proparoxítona é ___."}', 'pássaro', 'EF04LP01', 1),
('acentuacao', 3, 'B', 3, 'VF', true, '{"stem": "CÂMARA e CÂMERA são ambas proparoxítonas."}', 'V', 'EF04LP01', 2),

-- Bloco 4
('acentuacao', 3, 'B', 4, 'RF', false, '{"stem": "Reescreva acentuando: RAPIDO DEMAIS PARA O ARBITRO VER"}', 'RÁPIDO DEMAIS PARA O ÁRBITRO VER', 'EF04LP01', 2),
('acentuacao', 3, 'B', 4, 'MC', false, '{"stem": "Qual frase tem 3 proparoxítonas?", "options": ["A) O médico, a música e o ônibus chegaram.", "B) O café com leite está quente.", "C) Maria foi ao mercado ontem."]}', 'A', 'EF04LP01', 3),
('acentuacao', 3, 'B', 4, 'CL', false, '{"stem": "TRIÂNGULO tem ___ sílabas e a tônica é ___."}', '4 / ÂN', 'EF04LP01', 3),
('acentuacao', 3, 'B', 4, 'VF', false, '{"stem": "MÁQUINA é uma proparoxítona."}', 'V', 'EF04LP01', 2),
('acentuacao', 3, 'B', 4, 'DS', false, '{"word": "caríssimo"}', 'ca-rís-si-mo', 'EF04LP01', 3),
('acentuacao', 3, 'B', 4, 'RF', false, '{"stem": "Corrija: O SIMBOLO da REPUBLICA e a AGUIA."}', 'O SÍMBOLO da REPÚBLICA é a ÁGUIA.', 'EF04LP01', 3),
('acentuacao', 3, 'B', 4, 'PG', false, '{"instruction": "Escreva uma frase com pelo menos 2 proparoxítonas.", "word_bank": ["música", "médico", "pássaro", "óculos", "lâmpada"]}', 'Respostas variadas usando 2+ proparoxítonas', 'EF04LP01', 2);

-- ── NÍVEL 4-A — Oxítonas: terminações acentuadas ────────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 4, 'A', 1, 'MC', false, '{"stem": "A sílaba tônica de CAFÉ está na:", "options": ["A) primeira sílaba", "B) última sílaba", "C) penúltima sílaba"]}', 'B', 'EF04LP01', 1),
('acentuacao', 4, 'A', 1, 'VF', false, '{"stem": "CAFÉ é uma palavra oxítona."}', 'V', 'EF04LP01', 1),
('acentuacao', 4, 'A', 1, 'DS', false, '{"word": "avó"}', 'a-vó', 'EF04LP01', 1),
('acentuacao', 4, 'A', 1, 'DS', false, '{"word": "caminhão"}', 'ca-mi-nhão', 'EF04LP01', 1),

-- Bloco 3
('acentuacao', 4, 'A', 3, 'MC', true, '{"stem": "Oxítonas terminadas em A, E, O, EM, ENS são acentuadas?", "options": ["A) Sim", "B) Não", "C) Às vezes"]}', 'A', 'EF04LP01', 1),
('acentuacao', 4, 'A', 3, 'CL', true, '{"stem": "A palavra CIPÓ é oxítona porque a sílaba tônica está na ___ sílaba."}', 'última', 'EF04LP01', 1),
('acentuacao', 4, 'A', 3, 'VF', true, '{"stem": "TAMBÉM é uma oxítona terminada em EM, por isso recebe acento."}', 'V', 'EF04LP01', 1),

-- Bloco 4
('acentuacao', 4, 'A', 4, 'MC', false, '{"stem": "Quais oxítonas recebem acento gráfico?", "options": ["A) Terminadas em A, E, O, EM, ENS", "B) Terminadas em qualquer vogal", "C) Todas as oxítonas"]}', 'A', 'EF04LP01', 2),
('acentuacao', 4, 'A', 4, 'MC', false, '{"stem": "Qual oxítona está CORRETAMENTE acentuada?", "options": ["A) cafe", "B) café", "C) cafê"]}', 'B', 'EF04LP01', 1),
('acentuacao', 4, 'A', 4, 'CL', false, '{"stem": "PARABÉNS termina em ENS, então é oxítona ___ (acentuada / não acentuada)."}', 'acentuada', 'EF04LP01', 1),
('acentuacao', 4, 'A', 4, 'RF', false, '{"stem": "Acrescente o acento onde necessário: AVO, IRMAO, CAFE, TAMBEM"}', 'AVÓ, IRMÃO, CAFÉ, TAMBÉM', 'EF04LP01', 1),
('acentuacao', 4, 'A', 4, 'VF', false, '{"stem": "A palavra AMOR é oxítona e deve ser acentuada."}', 'F', 'EF04LP01', 2),
('acentuacao', 4, 'A', 4, 'VF', false, '{"stem": "A palavra NINGUÉM é oxítona terminada em EM."}', 'V', 'EF04LP01', 2),
('acentuacao', 4, 'A', 4, 'DS', false, '{"word": "rapaz"}', 'ra-paz', 'EF04LP01', 1),
('acentuacao', 4, 'A', 4, 'MC', false, '{"stem": "Qual das palavras abaixo NÃO é oxítona?", "options": ["A) sofá", "B) avião", "C) janela", "D) café"]}', 'C', 'EF04LP01', 2);

-- ── NÍVEL 4-B — Oxítonas: terminações acentuadas ────────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 4, 'B', 1, 'MC', false, '{"stem": "Qual é oxítona?", "options": ["A) casa", "B) sofá", "C) música"]}', 'B', 'EF04LP01', 1),
('acentuacao', 4, 'B', 1, 'VF', false, '{"stem": "SACI é uma oxítona."}', 'V', 'EF04LP01', 1),
('acentuacao', 4, 'B', 1, 'DS', false, '{"word": "bambu"}', 'bam-bu', 'EF04LP01', 1),
('acentuacao', 4, 'B', 1, 'RF', false, '{"stem": "Acentue corretamente: INES e INES"}', 'INÊS e INÊS', 'EF04LP01', 1),

-- Bloco 3
('acentuacao', 4, 'B', 3, 'MC', true, '{"stem": "Por que ARMAZÉM recebe acento?", "options": ["A) É proparoxítona", "B) É oxítona terminada em EM", "C) É paroxítona"]}', 'B', 'EF04LP01', 1),
('acentuacao', 4, 'B', 3, 'CL', true, '{"stem": "AMÉM é oxítona terminada em ___ e por isso ___ acento."}', 'EM / recebe', 'EF04LP01', 1),
('acentuacao', 4, 'B', 3, 'VF', true, '{"stem": "As palavras ALÉM, TAMBÉM e NINGUÉM são todas oxítonas acentuadas."}', 'V', 'EF04LP01', 1),

-- Bloco 4
('acentuacao', 4, 'B', 4, 'RF', false, '{"stem": "Acentue onde necessário: AVA, ABACAXI, PAJEU, ALEM"}', 'AVÁ, ABACAXI, PAJEÚ, ALÉM', 'EF04LP01', 2),
('acentuacao', 4, 'B', 4, 'MC', false, '{"stem": "Qual conjunto tem SOMENTE oxítonas acentuadas?", "options": ["A) café, avó, cipó", "B) mesa, livro, porta", "C) música, pássaro, óculos"]}', 'A', 'EF04LP01', 2),
('acentuacao', 4, 'B', 4, 'CL', false, '{"stem": "CAJU é oxítona terminada em ___ e ___ recebe acento."}', 'U / não', 'EF04LP01', 2),
('acentuacao', 4, 'B', 4, 'VF', false, '{"stem": "CHAPÉU é uma oxítona acentuada por terminar em EU."}', 'V', 'EF04LP01', 2),
('acentuacao', 4, 'B', 4, 'DS', false, '{"word": "jacaré"}', 'ja-ca-ré', 'EF04LP01', 1),
('acentuacao', 4, 'B', 4, 'MC', false, '{"stem": "Em ''Meu AVÔ e minha AVÓ chegaram'', quantas oxítonas há?", "options": ["A) 1", "B) 2", "C) 3"]}', 'B', 'EF04LP01', 2),
('acentuacao', 4, 'B', 4, 'RF', false, '{"stem": "Corrija a frase: O CAFE da minha AVO e gostoso."}', 'O CAFÉ da minha AVÓ é gostoso.', 'EF04LP01', 2),
('acentuacao', 4, 'B', 4, 'PG', false, '{"instruction": "Escreva 4 oxítonas que recebem acento gráfico, uma para cada terminação: A, E, O, EM.", "word_bank": []}', 'Ex.: sofá, jacaré, avó, também', 'EF04LP01', 2);

-- ── NÍVEL 5-A — Oxítonas: terminações NÃO acentuadas ────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 5, 'A', 1, 'MC', false, '{"stem": "Por que RAPAZ não tem acento?", "options": ["A) Não é oxítona", "B) É oxítona mas não termina em A, E, O, EM, ENS", "C) Todas as oxítonas têm acento"]}', 'B', 'EF04LP01', 2),
('acentuacao', 5, 'A', 1, 'VF', false, '{"stem": "ANIMAL é oxítona e não recebe acento gráfico."}', 'V', 'EF04LP01', 1),
('acentuacao', 5, 'A', 1, 'DS', false, '{"word": "cateter"}', 'ca-te-ter', 'EF04LP01', 2),
('acentuacao', 5, 'A', 1, 'CL', false, '{"stem": "VINTÉM recebe acento porque é oxítona terminada em ___."}', 'EM', 'EF04LP01', 1),

-- Bloco 3
('acentuacao', 5, 'A', 3, 'MC', true, '{"stem": "Qual oxítona NÃO recebe acento gráfico?", "options": ["A) café", "B) cipó", "C) rapaz", "D) avó"]}', 'C', 'EF04LP01', 2),
('acentuacao', 5, 'A', 3, 'VF', true, '{"stem": "HOTEL é oxítona terminada em L e NÃO recebe acento."}', 'V', 'EF04LP01', 2),
('acentuacao', 5, 'A', 3, 'CL', true, '{"stem": "Oxítonas terminadas em consoantes como R, L, Z, S ___ recebem acento gráfico."}', 'não', 'EF04LP01', 2),

-- Bloco 4
('acentuacao', 5, 'A', 4, 'MC', false, '{"stem": "Qual das oxítonas abaixo NÃO precisa de acento?", "options": ["A) parabéns", "B) também", "C) senhor", "D) avó"]}', 'C', 'EF04LP01', 2),
('acentuacao', 5, 'A', 4, 'RF', false, '{"stem": "Remova acentos indevidos: AMÓR, CAHÓL, RAPÁZ, CAFÉ"}', 'AMOR, CAHOL, RAPAZ, CAFÉ', 'EF04LP01', 2),
('acentuacao', 5, 'A', 4, 'VF', false, '{"stem": "AMOR, RAPAZ e HOTEL são oxítonas que não levam acento."}', 'V', 'EF04LP01', 2),
('acentuacao', 5, 'A', 4, 'CL', false, '{"stem": "A palavra BAMBU é oxítona terminada em U e ___ recebe acento."}', 'não', 'EF04LP01', 2),
('acentuacao', 5, 'A', 4, 'MC', false, '{"stem": "Qual é o único grupo com oxítonas que RECEBEM acento?", "options": ["A) amor, rapaz, feliz", "B) sofá, avó, parabéns", "C) hospital, animal, Brasil"]}', 'B', 'EF04LP01', 2),
('acentuacao', 5, 'A', 4, 'DS', false, '{"word": "feliz"}', 'fe-liz', 'EF04LP01', 1),
('acentuacao', 5, 'A', 4, 'PG', false, '{"instruction": "Separe as palavras abaixo em dois grupos: COM acento e SEM acento.", "word_bank": ["café", "amor", "avó", "rapaz", "também", "hotel", "cipó", "bambú"]}', 'COM acento: café, avó, também, cipó | SEM acento: amor, rapaz, hotel, bambu', 'EF04LP01', 2);

-- ── NÍVEL 5-B — Oxítonas: terminações NÃO acentuadas ────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 5, 'B', 1, 'MC', false, '{"stem": "BRASIL recebe acento?", "options": ["A) Sim, é oxítona", "B) Não, termina em L", "C) Sim, todas oxítonas têm acento"]}', 'B', 'EF04LP01', 2),
('acentuacao', 5, 'B', 1, 'VF', false, '{"stem": "A palavra NARIZ não recebe acento gráfico."}', 'V', 'EF04LP01', 2),
('acentuacao', 5, 'B', 1, 'DS', false, '{"word": "relógio"}', 're-ló-gio', 'EF04LP01', 2),
('acentuacao', 5, 'B', 1, 'CL', false, '{"stem": "Oxítonas terminadas em R, L e Z ___ (recebem / não recebem) acento."}', 'não recebem', 'EF04LP01', 2),

-- Bloco 3
('acentuacao', 5, 'B', 3, 'MC', true, '{"stem": "Das palavras abaixo, quais NÃO recebem acento?", "options": ["A) café e avó", "B) amor e feliz", "C) ninguém e parabéns"]}', 'B', 'EF04LP01', 2),
('acentuacao', 5, 'B', 3, 'RF', true, '{"stem": "Corrija (retire acentos errados): AMÓR, SENHÓR, FELÍZ"}', 'AMOR, SENHOR, FELIZ', 'EF04LP01', 2),
('acentuacao', 5, 'B', 3, 'VF', true, '{"stem": "XADREZ é oxítona terminada em Z e não recebe acento."}', 'V', 'EF04LP01', 2),

-- Bloco 4
('acentuacao', 5, 'B', 4, 'MC', false, '{"stem": "Assinale a alternativa em que TODAS as palavras estão corretas:", "options": ["A) café, amór, avó", "B) café, amor, avó", "C) cafè, amor, avô"]}', 'B', 'EF04LP01', 2),
('acentuacao', 5, 'B', 4, 'RF', false, '{"stem": "Acentue somente as oxítonas que devem ter acento: CAFE, RAPAZ, AVO, HOTEL, TAMBEM"}', 'CAFÉ, RAPAZ, AVÓ, HOTEL, TAMBÉM', 'EF04LP01', 2),
('acentuacao', 5, 'B', 4, 'CL', false, '{"stem": "FUNIL é oxítona terminada em ___ e ___ (recebe/não recebe) acento."}', 'L / não recebe', 'EF04LP01', 2),
('acentuacao', 5, 'B', 4, 'VF', false, '{"stem": "JAVALI recebe acento por ser oxítona terminada em I."}', 'F', 'EF04LP01', 2),
('acentuacao', 5, 'B', 4, 'DS', false, '{"word": "ananás"}', 'a-na-nás', 'EF04LP01', 2),
('acentuacao', 5, 'B', 4, 'MC', false, '{"stem": "Qual grupo mistura oxítonas COM e SEM acento?", "options": ["A) café, avó, também", "B) amor, rapaz, hotel", "C) café, amor, avó"]}', 'C', 'EF04LP01', 3),
('acentuacao', 5, 'B', 4, 'PG', false, '{"instruction": "Crie uma frase usando pelo menos uma oxítona COM acento e uma SEM acento.", "word_bank": ["café", "amor", "avó", "rapaz", "também", "hotel"]}', 'Respostas variadas', 'EF04LP01', 2);

-- ── NÍVEL 6-A — Paroxítonas: terminações sem acento ─────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 6, 'A', 1, 'MC', false, '{"stem": "Onde está a sílaba tônica de CADERNO?", "options": ["A) CA", "B) DER", "C) NO"]}', 'B', 'EF04LP01', 1),
('acentuacao', 6, 'A', 1, 'VF', false, '{"stem": "JANELA é uma paroxítona."}', 'V', 'EF04LP01', 1),
('acentuacao', 6, 'A', 1, 'DS', false, '{"word": "bonito"}', 'bo-ni-to', 'EF04LP01', 1),
('acentuacao', 6, 'A', 1, 'CL', false, '{"stem": "Paroxítonas têm a sílaba tônica na ___ sílaba."}', 'penúltima', 'EF04LP01', 1),

-- Bloco 3
('acentuacao', 6, 'A', 3, 'MC', true, '{"stem": "Paroxítonas terminadas em A, E, O, EM não recebem acento?", "options": ["A) Correto", "B) Errado", "C) Depende"]}', 'A', 'EF04LP01', 2),
('acentuacao', 6, 'A', 3, 'VF', true, '{"stem": "MESA, LIVRO e CADERNO são paroxítonas sem acento por terminarem em A, O, O."}', 'V', 'EF04LP01', 1),
('acentuacao', 6, 'A', 3, 'CL', true, '{"stem": "A regra diz que paroxítonas terminadas em vogais comuns ___ recebem acento."}', 'não', 'EF04LP01', 2),

-- Bloco 4
('acentuacao', 6, 'A', 4, 'MC', false, '{"stem": "Qual paroxítona NÃO precisa de acento?", "options": ["A) fácil", "B) caderno", "C) lápis"]}', 'B', 'EF04LP01', 2),
('acentuacao', 6, 'A', 4, 'MC', false, '{"stem": "Quais palavras são paroxítonas SEM acento?", "options": ["A) mesa, caderno, bonito", "B) fácil, difícil, possível", "C) música, pássaro, óculos"]}', 'A', 'EF04LP01', 2),
('acentuacao', 6, 'A', 4, 'RF', false, '{"stem": "Remova acentos desnecessários: MESÁ, CADERÑO, BONÍTO"}', 'MESA, CADERNO, BONITO', 'EF04LP01', 2),
('acentuacao', 6, 'A', 4, 'VF', false, '{"stem": "A palavra EXAME não recebe acento por ser paroxítona terminada em E."}', 'V', 'EF04LP01', 2),
('acentuacao', 6, 'A', 4, 'CL', false, '{"stem": "CAMELO é paroxítona terminada em O e ___ recebe acento."}', 'não', 'EF04LP01', 2),
('acentuacao', 6, 'A', 4, 'DS', false, '{"word": "problema"}', 'pro-ble-ma', 'EF04LP01', 2),
('acentuacao', 6, 'A', 4, 'PG', false, '{"instruction": "Escreva 5 paroxítonas terminadas em vogal que NÃO levam acento.", "word_bank": []}', 'Ex.: mesa, livro, porta, bonito, caderno', 'EF04LP01', 2);

-- ── NÍVEL 6-B — Paroxítonas: terminações sem acento ─────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 6, 'B', 1, 'MC', false, '{"stem": "TOMATE é paroxítona?", "options": ["A) Sim", "B) Não"]}', 'A', 'EF04LP01', 1),
('acentuacao', 6, 'B', 1, 'VF', false, '{"stem": "A palavra ESCOLA não precisa de acento."}', 'V', 'EF04LP01', 1),
('acentuacao', 6, 'B', 1, 'DS', false, '{"word": "serviço"}', 'ser-vi-ço', 'EF04LP01', 2),
('acentuacao', 6, 'B', 1, 'CL', false, '{"stem": "Paroxítonas terminadas em A, E, O ___ precisam de acento."}', 'não', 'EF04LP01', 1),

-- Bloco 3
('acentuacao', 6, 'B', 3, 'MC', true, '{"stem": "Por que BANANA não tem acento?", "options": ["A) Não é paroxítona", "B) É paroxítona terminada em A", "C) Todas as frutas têm acento"]}', 'B', 'EF04LP01', 1),
('acentuacao', 6, 'B', 3, 'RF', true, '{"stem": "Retire os acentos errados: PORTÁ, LIVRÓ, CANÉTA"}', 'PORTA, LIVRO, CANETA', 'EF04LP01', 2),
('acentuacao', 6, 'B', 3, 'VF', true, '{"stem": "PESSOAS é paroxítona terminada em AS e não precisa de acento."}', 'V', 'EF04LP01', 2),

-- Bloco 4
('acentuacao', 6, 'B', 4, 'MC', false, '{"stem": "Qual frase tem TODAS as palavras corretamente escritas?", "options": ["A) A mesá está limpa.", "B) A mesa está limpa.", "C) A mesa ésta limpa."]}', 'B', 'EF04LP01', 1),
('acentuacao', 6, 'B', 4, 'RF', false, '{"stem": "Corrija: O CADÉRNO e a BOLÁCHA estão na MÉSA."}', 'O CADERNO e a BOLACHA estão na MESA.', 'EF04LP01', 2),
('acentuacao', 6, 'B', 4, 'CL', false, '{"stem": "MARGEM é paroxítona terminada em ___ e ___ (recebe/não recebe) acento."}', 'EM / não recebe', 'EF04LP01', 2),
('acentuacao', 6, 'B', 4, 'VF', false, '{"stem": "IMAGEM, GARAGEM e VIAGEM são paroxítonas que não precisam de acento."}', 'V', 'EF04LP01', 2),
('acentuacao', 6, 'B', 4, 'DS', false, '{"word": "espelho"}', 'es-pe-lho', 'EF04LP01', 2),
('acentuacao', 6, 'B', 4, 'MC', false, '{"stem": "Qual grupo tem SOMENTE paroxítonas sem acento?", "options": ["A) fácil, difícil", "B) mesa, caderno, bonito", "C) pássaro, óculos"]}', 'B', 'EF04LP01', 2),
('acentuacao', 6, 'B', 4, 'PG', false, '{"instruction": "Escreva uma frase usando 3 paroxítonas que NÃO precisam de acento.", "word_bank": ["mesa", "livro", "caderno", "escola", "bonito", "tomate"]}', 'Respostas variadas', 'EF04LP01', 2);

-- ── NÍVEL 7-A — Paroxítonas: terminações COM acento ─────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 7, 'A', 1, 'MC', false, '{"stem": "Por que FÁCIL recebe acento?", "options": ["A) É proparoxítona", "B) É paroxítona terminada em L", "C) É oxítona"]}', 'B', 'EF04LP01', 2),
('acentuacao', 7, 'A', 1, 'VF', false, '{"stem": "LÁPIS é paroxítona e leva acento por terminar em S (não precedido de vogal)."}', 'V', 'EF04LP01', 2),
('acentuacao', 7, 'A', 1, 'DS', false, '{"word": "possível"}', 'pos-sí-vel', 'EF04LP01', 2),
('acentuacao', 7, 'A', 1, 'CL', false, '{"stem": "DIFÍCIL leva acento porque é paroxítona terminada em ___."}', 'L', 'EF04LP01', 1),

-- Bloco 3
('acentuacao', 7, 'A', 3, 'MC', true, '{"stem": "Paroxítonas terminadas em L, R, X, N, I, US, UM, UNS recebem acento?", "options": ["A) Sim", "B) Não", "C) Só algumas"]}', 'A', 'EF04LP01', 2),
('acentuacao', 7, 'A', 3, 'CL', true, '{"stem": "REVÓLVER leva acento por ser paroxítona terminada em ___."}', 'R', 'EF04LP01', 2),
('acentuacao', 7, 'A', 3, 'VF', true, '{"stem": "VÍRUS e ÂNUS são paroxítonas acentuadas por terminarem em US."}', 'V', 'EF04LP01', 2),

-- Bloco 4
('acentuacao', 7, 'A', 4, 'MC', false, '{"stem": "Qual paroxítona PRECISA de acento?", "options": ["A) mesa", "B) fácil", "C) tomate"]}', 'B', 'EF04LP01', 1),
('acentuacao', 7, 'A', 4, 'RF', false, '{"stem": "Acrescente acentos onde necessário: FACIL, JOVEM, ALBUM, TUNEL"}', 'FÁCIL, JOVEM, ÁLBUM, TÚNEL', 'EF04LP01', 2),
('acentuacao', 7, 'A', 4, 'MC', false, '{"stem": "Quais paroxítonas estão CORRETAS?", "options": ["A) lapís, possível, facil", "B) lápis, possível, fácil", "C) lapîs, possivél, fàcil"]}', 'B', 'EF04LP01', 2),
('acentuacao', 7, 'A', 4, 'VF', false, '{"stem": "TÁXI é paroxítona acentuada por terminar em I."}', 'V', 'EF04LP01', 2),
('acentuacao', 7, 'A', 4, 'CL', false, '{"stem": "FÓRUM leva acento por ser paroxítona terminada em ___."}', 'UM', 'EF04LP01', 2),
('acentuacao', 7, 'A', 4, 'DS', false, '{"word": "inútil"}', 'i-nú-til', 'EF04LP01', 2),
('acentuacao', 7, 'A', 4, 'PG', false, '{"instruction": "Classifique: escreva C (com acento) ou S (sem acento) para cada paroxítona.", "word_bank": ["fácil", "mesa", "lápis", "bonito", "possível", "caderno", "táxi", "escola"]}', 'fácil=C, mesa=S, lápis=C, bonito=S, possível=C, caderno=S, táxi=C, escola=S', 'EF04LP01', 2);

-- ── NÍVEL 7-B — Paroxítonas: terminações COM acento ─────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 7, 'B', 1, 'MC', false, '{"stem": "VOLUNTÁRIO recebe acento por quê?", "options": ["A) É proparoxítona", "B) É paroxítona terminada em ditongo", "C) É oxítona"]}', 'B', 'EF04LP01', 3),
('acentuacao', 7, 'B', 1, 'VF', false, '{"stem": "CARÁTER é paroxítona terminada em R e leva acento."}', 'V', 'EF04LP01', 2),
('acentuacao', 7, 'B', 1, 'DS', false, '{"word": "glóbulo"}', 'gló-bu-lo', 'EF04LP01', 3),
('acentuacao', 7, 'B', 1, 'CL', false, '{"stem": "HÍFEN leva acento porque é paroxítona terminada em ___."}', 'N', 'EF04LP01', 2),

-- Bloco 3
('acentuacao', 7, 'B', 3, 'MC', true, '{"stem": "Das terminações abaixo, quais PEDEM acento nas paroxítonas?", "options": ["A) A, E, O", "B) L, R, N, X, I, US, UM", "C) EM, ENS"]}', 'B', 'EF04LP01', 2),
('acentuacao', 7, 'B', 3, 'RF', true, '{"stem": "Coloque acentos: FACIL, NIVEL, CARATER, HIFEN"}', 'FÁCIL, NÍVEL, CARÁTER, HÍFEN', 'EF04LP01', 2),
('acentuacao', 7, 'B', 3, 'VF', true, '{"stem": "BÍCEPS e FÓRCEPS são paroxítonas acentuadas."}', 'V', 'EF04LP01', 3),

-- Bloco 4
('acentuacao', 7, 'B', 4, 'MC', false, '{"stem": "Qual linha tem TODOS os acentos corretos?", "options": ["A) fácil, nível, táxi, álbum", "B) facil, nivel, taxi, album", "C) fácil, nível, taxi, álbum"]}', 'A', 'EF04LP01', 2),
('acentuacao', 7, 'B', 4, 'RF', false, '{"stem": "Acentue: UTIL, REPTIL, PROJÉTIL, PUSIL"}', 'ÚTIL, RÉPTIL, PROJÉTIL, PUSSIL (pús-sil)', 'EF04LP01', 3),
('acentuacao', 7, 'B', 4, 'CL', false, '{"stem": "PÊSSEGO leva acento e é paroxítona terminada em ___."}', 'O (mas com acento circunflexo por ser fechado)', 'EF04LP01', 3),
('acentuacao', 7, 'B', 4, 'VF', false, '{"stem": "ÍMPAR é paroxítona terminada em R e recebe acento."}', 'V', 'EF04LP01', 2),
('acentuacao', 7, 'B', 4, 'DS', false, '{"word": "ímpar"}', 'ím-par', 'EF04LP01', 2),
('acentuacao', 7, 'B', 4, 'MC', false, '{"stem": "Quantas paroxítonas COM acento há: ''O nível fácil do táxi''?", "options": ["A) 1", "B) 2", "C) 3"]}', 'C', 'EF04LP01', 3),
('acentuacao', 7, 'B', 4, 'PG', false, '{"instruction": "Escreva uma frase com pelo menos 3 paroxítonas que levam acento.", "word_bank": ["fácil", "lápis", "possível", "táxi", "nível", "caráter"]}', 'Respostas variadas', 'EF04LP01', 2);
