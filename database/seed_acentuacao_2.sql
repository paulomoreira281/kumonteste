-- ============================================================
-- GeraFicha — Seed: Módulo Acentuação (Níveis 8–12)
-- Séries A e B | Blocos 1, 3 e 4
-- ============================================================

-- ── NÍVEL 8-A — Hiato: I e U tônicos ────────────────────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 8, 'A', 1, 'MC', false, '{"stem": "O que é um hiato?", "options": ["A) Duas vogais na mesma sílaba", "B) Duas vogais em sílabas diferentes", "C) Uma consoante entre vogais"]}', 'B', 'EF05LP01', 1),
('acentuacao', 8, 'A', 1, 'VF', false, '{"stem": "Em SAÍDA, as vogais A e Í formam um hiato."}', 'V', 'EF05LP01', 1),
('acentuacao', 8, 'A', 1, 'DS', false, '{"word": "saída"}', 'sa-í-da', 'EF05LP01', 2),
('acentuacao', 8, 'A', 1, 'DS', false, '{"word": "raízes"}', 'ra-í-zes', 'EF05LP01', 2),

-- Bloco 3
('acentuacao', 8, 'A', 3, 'MC', true, '{"stem": "Em hiatos, o I ou U tônico leva acento quando:", "options": ["A) Está em qualquer posição", "B) Não é seguido de NH e está sozinho na sílaba ou com S", "C) Sempre que há hiato"]}', 'B', 'EF05LP01', 2),
('acentuacao', 8, 'A', 3, 'VF', true, '{"stem": "BAÚ leva acento porque o U forma hiato e é tônico."}', 'V', 'EF05LP01', 2),
('acentuacao', 8, 'A', 3, 'CL', true, '{"stem": "Em PAÍS, o Í recebe acento porque forma ___ com o A."}', 'hiato', 'EF05LP01', 2),

-- Bloco 4
('acentuacao', 8, 'A', 4, 'MC', false, '{"stem": "Qual palavra tem hiato com I ou U acentuado?", "options": ["A) causa", "B) baú", "C) lei"]}', 'B', 'EF05LP01', 2),
('acentuacao', 8, 'A', 4, 'RF', false, '{"stem": "Acentue onde há hiato com I/U tônico: RAIZ, SAIDA, BAU, PAIS"}', 'RAIZ, SAÍDA, BAÚ, PAÍS', 'EF05LP01', 2),
('acentuacao', 8, 'A', 4, 'DS', false, '{"word": "baú"}', 'ba-ú', 'EF05LP01', 2),
('acentuacao', 8, 'A', 4, 'DS', false, '{"word": "país"}', 'pa-ís', 'EF05LP01', 2),
('acentuacao', 8, 'A', 4, 'VF', false, '{"stem": "GRATUITO tem hiato e o U recebe acento."}', 'F', 'EF05LP01', 3),
('acentuacao', 8, 'A', 4, 'CL', false, '{"stem": "Em CAÍA, a separação silábica é ___ e o Í leva acento por ser ___."}', 'ca-í-a / hiato tônico', 'EF05LP01', 2),
('acentuacao', 8, 'A', 4, 'MC', false, '{"stem": "Qual par tem HIATO em ambas as palavras?", "options": ["A) causa e ouro", "B) saída e baú", "C) caixa e peixe"]}', 'B', 'EF05LP01', 2),
('acentuacao', 8, 'A', 4, 'PG', false, '{"instruction": "Encontre e circule os hiatos: SAUDADE / SAÍDA / COELHO / BAÚ / CAUSA / PAÍS", "word_bank": []}', 'Hiatos: SAÍDA (a-í), BAÚ (a-ú), PAÍS (a-í) | Não são hiatos: SAUDADE, COELHO, CAUSA', 'EF05LP01', 3);

-- ── NÍVEL 8-B — Hiato: I e U tônicos ────────────────────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 8, 'B', 1, 'MC', false, '{"stem": "HEROÍNA tem hiato?", "options": ["A) Sim", "B) Não"]}', 'A', 'EF05LP01', 2),
('acentuacao', 8, 'B', 1, 'VF', false, '{"stem": "Em FAÍSCA, as vogais A e Í formam hiato."}', 'V', 'EF05LP01', 2),
('acentuacao', 8, 'B', 1, 'DS', false, '{"word": "faísca"}', 'fa-ís-ca', 'EF05LP01', 2),
('acentuacao', 8, 'B', 1, 'DS', false, '{"word": "miúdo"}', 'mi-ú-do', 'EF05LP01', 2),

-- Bloco 3
('acentuacao', 8, 'B', 3, 'MC', true, '{"stem": "Em MIÚDO, o Ú recebe acento porque:", "options": ["A) É oxítona", "B) Forma hiato com I e é tônico", "C) É proparoxítona"]}', 'B', 'EF05LP01', 2),
('acentuacao', 8, 'B', 3, 'RF', true, '{"stem": "Acentue: VIUVA, SAIDA, RUIDO"}', 'VIÚVA, SAÍDA, RUÍDO', 'EF05LP01', 2),
('acentuacao', 8, 'B', 3, 'VF', true, '{"stem": "FLUÍDO e GRATUÍTO perdem o acento desde o Acordo de 1990 quando o I/U vem após ditongo."}', 'V', 'EF05LP01', 3),

-- Bloco 4
('acentuacao', 8, 'B', 4, 'MC', false, '{"stem": "Qual está CORRETO?", "options": ["A) vĩuva", "B) viúva", "C) viuvá"]}', 'B', 'EF05LP01', 2),
('acentuacao', 8, 'B', 4, 'RF', false, '{"stem": "Corrija: A RAINHA da NACAO usava joias MIUDAS"}', 'A RAINHA da NAÇÃO usava joias MIÚDAS', 'EF05LP01', 2),
('acentuacao', 8, 'B', 4, 'DS', false, '{"word": "viúva"}', 'vi-ú-va', 'EF05LP01', 2),
('acentuacao', 8, 'B', 4, 'CL', false, '{"stem": "RUÍDO tem hiato entre ___ e ___, por isso o Í recebe acento."}', 'U / Í', 'EF05LP01', 2),
('acentuacao', 8, 'B', 4, 'VF', false, '{"stem": "Em BAIRRO, o AI forma hiato."}', 'F', 'EF05LP01', 2),
('acentuacao', 8, 'B', 4, 'MC', false, '{"stem": "Qual grupo tem SOMENTE hiatos com acento correto?", "options": ["A) saída, baú, país", "B) causa, ouro, gaúcho", "C) caixa, peixe, coisa"]}', 'A', 'EF05LP01', 2),
('acentuacao', 8, 'B', 4, 'PG', false, '{"instruction": "Escreva 3 palavras com hiato I/U tônico e divida-as em sílabas.", "word_bank": []}', 'Ex.: saí-da, ba-ú, pa-ís, ru-í-do, fa-ís-ca', 'EF05LP01', 2);

-- ── NÍVEL 9-A — Hiato: exceção NH ───────────────────────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 9, 'A', 1, 'MC', false, '{"stem": "Por que RAINHA não tem acento no I?", "options": ["A) Não é hiato", "B) O I antes de NH não recebe acento", "C) É paroxítona terminada em A"]}', 'B', 'EF05LP01', 2),
('acentuacao', 9, 'A', 1, 'VF', false, '{"stem": "BAINHA não recebe acento por causa da regra do NH."}', 'V', 'EF05LP01', 2),
('acentuacao', 9, 'A', 1, 'DS', false, '{"word": "rainha"}', 'ra-i-nha', 'EF05LP01', 2),
('acentuacao', 9, 'A', 1, 'DS', false, '{"word": "moinho"}', 'mo-i-nho', 'EF05LP01', 2),

-- Bloco 3
('acentuacao', 9, 'A', 3, 'MC', true, '{"stem": "A exceção da regra do hiato é quando o I/U vem antes de:", "options": ["A) qualquer consoante", "B) NH", "C) S ou Z"]}', 'B', 'EF05LP01', 2),
('acentuacao', 9, 'A', 3, 'VF', true, '{"stem": "CAMPAINHA e BAINHA perdem o acento do I por causa do NH seguinte."}', 'V', 'EF05LP01', 2),
('acentuacao', 9, 'A', 3, 'CL', true, '{"stem": "I antes de NH ___ (recebe / não recebe) acento gráfico, mesmo formando hiato."}', 'não recebe', 'EF05LP01', 2),

-- Bloco 4
('acentuacao', 9, 'A', 4, 'MC', false, '{"stem": "Qual palavra está ERRADA?", "options": ["A) rainha", "B) baínha", "C) moinho"]}', 'B', 'EF05LP01', 2),
('acentuacao', 9, 'A', 4, 'RF', false, '{"stem": "Corrija se necessário: RAÍNHA, MOÍNHO, BAÍNHA, CAMPAINHAS"}', 'RAINHA, MOINHO, BAINHA, CAMPAINHA', 'EF05LP01', 2),
('acentuacao', 9, 'A', 4, 'VF', false, '{"stem": "ATAINHA e FUINHA perdem o acento por causa do NH."}', 'V', 'EF05LP01', 2),
('acentuacao', 9, 'A', 4, 'CL', false, '{"stem": "A regra diz: I/U antes de NH ___ recebe acento, mesmo em hiato."}', 'não', 'EF05LP01', 2),
('acentuacao', 9, 'A', 4, 'MC', false, '{"stem": "Qual par está CORRETAMENTE escrito?", "options": ["A) saída e raínha", "B) saída e rainha", "C) saida e rainha"]}', 'B', 'EF05LP01', 2),
('acentuacao', 9, 'A', 4, 'DS', false, '{"word": "campainha"}', 'cam-pa-i-nha', 'EF05LP01', 2),
('acentuacao', 9, 'A', 4, 'PG', false, '{"instruction": "Classifique: recebe acento (S) ou não recebe (N) por causa do NH.", "word_bank": ["rainha", "saída", "moinho", "baú", "campainha", "país"]}', 'rainha=N, saída=S, moinho=N, baú=S, campainha=N, país=S', 'EF05LP01', 2);

-- ── NÍVEL 9-B — Hiato: exceção NH ───────────────────────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 9, 'B', 1, 'MC', false, '{"stem": "FUINHA tem acento?", "options": ["A) Sim, no U", "B) Não, regra do NH", "C) Sim, no I"]}', 'B', 'EF05LP01', 2),
('acentuacao', 9, 'B', 1, 'VF', false, '{"stem": "ATAINHA não leva acento por causa do NH."}', 'V', 'EF05LP01', 2),
('acentuacao', 9, 'B', 1, 'DS', false, '{"word": "fuinha"}', 'fu-i-nha', 'EF05LP01', 2),
('acentuacao', 9, 'B', 1, 'CL', false, '{"stem": "A regra diz que I antes de ___ não recebe acento."}', 'NH', 'EF05LP01', 1),

-- Bloco 3
('acentuacao', 9, 'B', 3, 'MC', true, '{"stem": "Qual é a diferença entre SAÍDA e RAINHA?", "options": ["A) SAÍDA tem I antes de NH; RAINHA não tem", "B) RAINHA tem I antes de NH; SAÍDA tem I sozinho na sílaba", "C) Não há diferença"]}', 'B', 'EF05LP01', 2),
('acentuacao', 9, 'B', 3, 'RF', true, '{"stem": "Corrija (retire acento indevido): RAÍNHA, MOÍNHO"}', 'RAINHA, MOINHO', 'EF05LP01', 2),
('acentuacao', 9, 'B', 3, 'VF', true, '{"stem": "A exceção do NH vale para qualquer dicionário da língua portuguesa após o Acordo de 1990."}', 'V', 'EF05LP01', 3),

-- Bloco 4
('acentuacao', 9, 'B', 4, 'MC', false, '{"stem": "Qual frase está CORRETA?", "options": ["A) A raínha usou a baínha da espada.", "B) A rainha usou a bainha da espada.", "C) A rainha usou a baínha da espada."]}', 'B', 'EF05LP01', 2),
('acentuacao', 9, 'B', 4, 'RF', false, '{"stem": "Reescreva corretamente: A SAÍDA da RAÍNHA foi pela CAMPAÍNHA lateral."}', 'A SAÍDA da RAINHA foi pela CAMPAINHA lateral.', 'EF05LP01', 2),
('acentuacao', 9, 'B', 4, 'VF', false, '{"stem": "SAINHA (diminutivo de saia) não leva acento no I."}', 'V', 'EF05LP01', 3),
('acentuacao', 9, 'B', 4, 'CL', false, '{"stem": "Em MOINHO: o I está antes de ___, por isso ___ recebe acento."}', 'NH / não', 'EF05LP01', 2),
('acentuacao', 9, 'B', 4, 'DS', false, '{"word": "bainha"}', 'ba-i-nha', 'EF05LP01', 2),
('acentuacao', 9, 'B', 4, 'MC', false, '{"stem": "Qual grupo está todo correto?", "options": ["A) rainha, moinho, bainha", "B) raínha, moínho, baínha", "C) rainha, moínho, bainha"]}', 'A', 'EF05LP01', 2),
('acentuacao', 9, 'B', 4, 'PG', false, '{"instruction": "Escreva 3 palavras com NH onde o I NÃO leva acento.", "word_bank": []}', 'Ex.: rainha, bainha, moinho, campainha, fuinha', 'EF05LP01', 2);

-- ── NÍVEL 10-A — Ditongos abertos: éi, éu, ói ──────────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 10, 'A', 1, 'MC', false, '{"stem": "O que é um ditongo?", "options": ["A) Duas vogais em sílabas diferentes", "B) Uma vogal + semivogal na mesma sílaba", "C) Duas consoantes juntas"]}', 'B', 'EF05LP01', 1),
('acentuacao', 10, 'A', 1, 'VF', false, '{"stem": "CHAPÉU tem ditongo aberto ÉU e recebe acento."}', 'V', 'EF05LP01', 2),
('acentuacao', 10, 'A', 1, 'DS', false, '{"word": "chapéu"}', 'cha-péu', 'EF05LP01', 2),
('acentuacao', 10, 'A', 1, 'DS', false, '{"word": "herói"}', 'he-rói', 'EF05LP01', 2),

-- Bloco 3
('acentuacao', 10, 'A', 3, 'MC', true, '{"stem": "Ditongos orais abertos ÉI, ÉU, ÓI em oxítonas recebem acento?", "options": ["A) Sim, sempre", "B) Não, nunca", "C) Somente em oxítonas"]}', 'C', 'EF05LP01', 2),
('acentuacao', 10, 'A', 3, 'VF', true, '{"stem": "HERÓI e ANÉIS recebem acento por terem ditongo aberto tônico em oxítona."}', 'V', 'EF05LP01', 2),
('acentuacao', 10, 'A', 3, 'CL', true, '{"stem": "CHAPÉU recebe acento porque tem ditongo aberto ___ em posição ___."}', 'ÉU / oxítona', 'EF05LP01', 2),

-- Bloco 4
('acentuacao', 10, 'A', 4, 'MC', false, '{"stem": "Qual palavra tem ditongo aberto COM acento?", "options": ["A) caixa", "B) chapéu", "C) ouro"]}', 'B', 'EF05LP01', 2),
('acentuacao', 10, 'A', 4, 'RF', false, '{"stem": "Acentue onde necessário: CHAPEU, HEROI, ANZOL, IDEIA"}', 'CHAPÉU, HERÓI, ANZOL, IDEIA', 'EF05LP01', 2),
('acentuacao', 10, 'A', 4, 'VF', false, '{"stem": "IDEIA não leva acento no EI desde o Acordo Ortográfico de 2009."}', 'V', 'EF05LP01', 3),
('acentuacao', 10, 'A', 4, 'MC', false, '{"stem": "Qual grupo está CORRETO?", "options": ["A) chapéu, herói, anéis", "B) chapeu, heroi, aneis", "C) chàpéu, héroi, ânéis"]}', 'A', 'EF05LP01', 2),
('acentuacao', 10, 'A', 4, 'CL', false, '{"stem": "TROFÉU leva acento por ter ditongo aberto ___ em oxítona."}', 'ÉU', 'EF05LP01', 2),
('acentuacao', 10, 'A', 4, 'DS', false, '{"word": "troféu"}', 'tro-féu', 'EF05LP01', 2),
('acentuacao', 10, 'A', 4, 'PG', false, '{"instruction": "Escreva 3 palavras com ditongo aberto éi, éu ou ói que recebem acento.", "word_bank": []}', 'Ex.: chapéu, herói, anéis, troféu, fogaréu', 'EF05LP01', 2);

-- ── NÍVEL 10-B — Ditongos abertos: éi, éu, ói ──────────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 10, 'B', 1, 'MC', false, '{"stem": "CORRÓI tem ditongo aberto?", "options": ["A) Sim, ÓI", "B) Não", "C) Tem hiato"]}', 'A', 'EF05LP01', 2),
('acentuacao', 10, 'B', 1, 'VF', false, '{"stem": "FOGARÉU recebe acento por ter ditongo ÉU em oxítona."}', 'V', 'EF05LP01', 2),
('acentuacao', 10, 'B', 1, 'DS', false, '{"word": "anéis"}', 'a-néis', 'EF05LP01', 2),
('acentuacao', 10, 'B', 1, 'CL', false, '{"stem": "Ditongos ___ (abertos/fechados) em oxítonas recebem acento."}', 'abertos', 'EF05LP01', 2),

-- Bloco 3
('acentuacao', 10, 'B', 3, 'MC', true, '{"stem": "Por que IDEIA não tem acento?", "options": ["A) Não tem ditongo", "B) Ditongo EI em paroxítona perdeu acento em 2009", "C) É proparoxítona"]}', 'B', 'EF05LP01', 3),
('acentuacao', 10, 'B', 3, 'RF', true, '{"stem": "Corrija: O HERÓI ganhou o TROFEU como PREMIO."}', 'O HERÓI ganhou o TROFÉU como PRÊMIO.', 'EF05LP01', 2),
('acentuacao', 10, 'B', 3, 'VF', true, '{"stem": "ASSEMBLEIA e IDEIA não têm mais acento no EI após 2009."}', 'V', 'EF05LP01', 3),

-- Bloco 4
('acentuacao', 10, 'B', 4, 'MC', false, '{"stem": "Qual frase está TODA correta?", "options": ["A) O chapéu do herói é lindo.", "B) O chapeu do heroi é lindo.", "C) O chapéu do heroí é lindo."]}', 'A', 'EF05LP01', 2),
('acentuacao', 10, 'B', 4, 'RF', false, '{"stem": "Acentue corretamente: ILHEUS, MOIS, CHAPEU, FOGAREU"}', 'ILHÉUS, MÓIS, CHAPÉU, FOGARÉU', 'EF05LP01', 3),
('acentuacao', 10, 'B', 4, 'VF', false, '{"stem": "JIBOIA tem ditongo aberto OI e recebe acento."}', 'F', 'EF05LP01', 3),
('acentuacao', 10, 'B', 4, 'CL', false, '{"stem": "ANZOL é oxítona terminada em L e ___ (recebe/não recebe) acento."}', 'não recebe', 'EF05LP01', 2),
('acentuacao', 10, 'B', 4, 'DS', false, '{"word": "fogaréu"}', 'fo-ga-réu', 'EF05LP01', 2),
('acentuacao', 10, 'B', 4, 'MC', false, '{"stem": "Quantos acentos faltam: ''O HEROI ganhou o TROFEU e o ANZOL de prata''?", "options": ["A) 1", "B) 2", "C) 3"]}', 'B', 'EF05LP01', 2),
('acentuacao', 10, 'B', 4, 'PG', false, '{"instruction": "Explique com suas palavras por que CHAPÉU tem acento mas IDEIA não tem.", "word_bank": []}', 'CHAPÉU: oxítona com ditongo aberto ÉU → leva acento. IDEIA: paroxítona com ditongo EI → perdeu acento em 2009.', 'EF05LP01', 3);

-- ── NÍVEL 11-A — Revisão Acentuação I (Níveis 1–8) ──────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 11, 'A', 1, 'MC', false, '{"stem": "Classifique PÁSSARO:", "options": ["A) Oxítona", "B) Paroxítona", "C) Proparoxítona"]}', 'C', 'EF04LP01', 1),
('acentuacao', 11, 'A', 1, 'MC', false, '{"stem": "Classifique CAFÉ:", "options": ["A) Oxítona", "B) Paroxítona", "C) Proparoxítona"]}', 'A', 'EF04LP01', 1),
('acentuacao', 11, 'A', 1, 'MC', false, '{"stem": "Classifique JANELA:", "options": ["A) Oxítona", "B) Paroxítona", "C) Proparoxítona"]}', 'B', 'EF04LP01', 1),
('acentuacao', 11, 'A', 1, 'VF', false, '{"stem": "FÁCIL é paroxítona com acento porque termina em L."}', 'V', 'EF04LP01', 1),

-- Bloco 3
('acentuacao', 11, 'A', 3, 'MC', true, '{"stem": "Qual regra justifica o acento em SAÍDA?", "options": ["A) Proparoxítona", "B) Hiato com I tônico", "C) Oxítona terminada em A"]}', 'B', 'EF05LP01', 2),
('acentuacao', 11, 'A', 3, 'RF', true, '{"stem": "Corrija todos os acentos: O MEDICO disse que o MUSICO tem SAUDE de ATLETICO."}', 'O MÉDICO disse que o MÚSICO tem SAÚDE de ATLÉTICO.', 'EF04LP01', 2),
('acentuacao', 11, 'A', 3, 'CL', true, '{"stem": "TAMBÉM é oxítona terminada em ___ e recebe ___."}', 'EM / acento', 'EF04LP01', 1),

-- Bloco 4
('acentuacao', 11, 'A', 4, 'MC', false, '{"stem": "Qual frase tem TODOS os acentos corretos?", "options": ["A) O pássaro voou além do café.", "B) O passaro voou alem do cafe.", "C) O pàssaro voou alèm do cafè."]}', 'A', 'EF04LP01', 2),
('acentuacao', 11, 'A', 4, 'CT', false, '{"text": "O medico disse que o exercicio fisico e otimo para a saude. O publico aplaudiu o musico.", "error_count": 6}', 'O MÉDICO disse que o EXERCÍCIO FÍSICO é ÓTIMO para a SAÚDE. O PÚBLICO aplaudiu o MÚSICO.', 'EF04LP01', 3),
('acentuacao', 11, 'A', 4, 'RF', false, '{"stem": "Acrescente acentos: MUSICA, CAFE, FACIL, SAIDA, HEROI, LAMPADA"}', 'MÚSICA, CAFÉ, FÁCIL, SAÍDA, HERÓI, LÂMPADA', 'EF04LP01', 2),
('acentuacao', 11, 'A', 4, 'MC', false, '{"stem": "Quantos erros de acentuação há: ''O atletico publica musica na internet''?", "options": ["A) 2", "B) 3", "C) 4"]}', 'B', 'EF04LP01', 3),
('acentuacao', 11, 'A', 4, 'AS', false, '{"column_a": ["CAFÉ", "MÚSICA", "JANELA", "FÁCIL", "SAÍDA"], "column_b": ["paroxítona sem acento", "paroxítona com acento", "proparoxítona", "oxítona com acento", "hiato"]}', 'CAFÉ→oxítona com acento, MÚSICA→proparoxítona, JANELA→paroxítona sem acento, FÁCIL→paroxítona com acento, SAÍDA→hiato', 'EF04LP01', 2),
('acentuacao', 11, 'A', 4, 'VF', false, '{"stem": "RAINHA tem I antes de NH e por isso não recebe acento."}', 'V', 'EF05LP01', 2),
('acentuacao', 11, 'A', 4, 'PG', false, '{"instruction": "Escreva uma frase com uma palavra de cada categoria: oxítona, paroxítona, proparoxítona.", "word_bank": ["café", "janela", "música", "também", "fácil", "médico"]}', 'Ex.: O MÉDICO tomou CAFÉ na JANELA.', 'EF04LP01', 2);

-- ── NÍVEL 11-B — Revisão Acentuação I (Níveis 1–8) ──────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 11, 'B', 1, 'MC', false, '{"stem": "ÓCULOS é:", "options": ["A) Oxítona", "B) Paroxítona", "C) Proparoxítona"]}', 'C', 'EF04LP01', 1),
('acentuacao', 11, 'B', 1, 'MC', false, '{"stem": "AVÓ é:", "options": ["A) Oxítona", "B) Paroxítona", "C) Proparoxítona"]}', 'A', 'EF04LP01', 1),
('acentuacao', 11, 'B', 1, 'VF', false, '{"stem": "DIFÍCIL é paroxítona acentuada por terminar em L."}', 'V', 'EF04LP01', 1),
('acentuacao', 11, 'B', 1, 'RF', false, '{"stem": "Corrija: O ONIBUS chegou RAPIDO."}', 'O ÔNIBUS chegou RÁPIDO.', 'EF04LP01', 1),

-- Bloco 3
('acentuacao', 11, 'B', 3, 'CT', true, '{"text": "O public apludiu o musico que toco musica classica com seu violao.", "error_count": 5}', 'O PÚBLICO aplaudiu o MÚSICO que TOCOU MÚSICA CLÁSSICA com seu VIOLÃO.', 'EF04LP01', 3),
('acentuacao', 11, 'B', 3, 'RF', true, '{"stem": "Acrescente os acentos que faltam: ATLET-ICO, MEDICO, PUBLICO, MUSICA"}', 'ATLÉTICO, MÉDICO, PÚBLICO, MÚSICA', 'EF04LP01', 2),
('acentuacao', 11, 'B', 3, 'VF', true, '{"stem": "BAÚ leva acento por hiato; RAINHA não leva por causa do NH."}', 'V', 'EF05LP01', 2),

-- Bloco 4
('acentuacao', 11, 'B', 4, 'CT', false, '{"text": "A saude publica e responsabilidade de todos os cidadaos. O governo deve investir em educacao e em programas de exercicio fisico para a populacao.", "error_count": 8}', 'A SAÚDE PÚBLICA é responsabilidade de todos os CIDADÃOS. O governo deve investir em EDUCAÇÃO e em programas de EXERCÍCIO FÍSICO para a POPULAÇÃO.', 'EF04LP01', 3),
('acentuacao', 11, 'B', 4, 'AS', false, '{"column_a": ["AVÓ", "ÓCULOS", "FÁCIL", "SAÍDA", "CHAPÉU"], "column_b": ["hiato I/U tônico", "ditongo aberto ÉU", "paroxítona terminada em L", "proparoxítona", "oxítona terminada em Ó"]}', 'AVÓ→oxítona terminada em Ó, ÓCULOS→proparoxítona, FÁCIL→paroxítona terminada em L, SAÍDA→hiato I/U tônico, CHAPÉU→ditongo aberto ÉU', 'EF04LP01', 3),
('acentuacao', 11, 'B', 4, 'RF', false, '{"stem": "Corrija toda a acentuação: ONIBUS RAPIDO PASSA PELO CENTRO DA CIDADE DE FORMA PERIODICA."}', 'ÔNIBUS RÁPIDO PASSA PELO CENTRO DA CIDADE DE FORMA PERIÓDICA.', 'EF04LP01', 2),
('acentuacao', 11, 'B', 4, 'MC', false, '{"stem": "Quantos acentos faltam: ''O medico examinou o musico e disse que ele esta otimo''?", "options": ["A) 2", "B) 3", "C) 4"]}', 'C', 'EF04LP01', 3),
('acentuacao', 11, 'B', 4, 'VF', false, '{"stem": "TAMBÉM é oxítona terminada em EM e RAINHA não leva acento por causa do NH."}', 'V', 'EF04LP01', 2),
('acentuacao', 11, 'B', 4, 'PG', false, '{"instruction": "Escreva um pequeno parágrafo (3–4 frases) usando pelo menos: 1 proparoxítona, 1 oxítona com acento, 1 hiato acentuado.", "word_bank": ["médico", "café", "saída", "pássaro", "herói", "música"]}', 'Respostas variadas — verificar uso correto das categorias', 'EF04LP01', 3);

-- ── NÍVEL 12-A — Revisão Acentuação II (acumulativa) ────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 12, 'A', 1, 'RF', false, '{"stem": "Corrija: O EXERCITO BRITANICO e FAMOSO."}', 'O EXÉRCITO BRITÂNICO é FAMOSO.', 'EF07LP01', 2),
('acentuacao', 12, 'A', 1, 'MC', false, '{"stem": "TRÊMULO é:", "options": ["A) Oxítona", "B) Paroxítona", "C) Proparoxítona"]}', 'C', 'EF04LP01', 2),
('acentuacao', 12, 'A', 1, 'VF', false, '{"stem": "Desde 2009, IDEIA e ASSEMBLEIA perderam o acento no EI."}', 'V', 'EF07LP01', 2),
('acentuacao', 12, 'A', 1, 'DS', false, '{"word": "algoritmo"}', 'al-go-rit-mo', 'EF07LP01', 3),

-- Bloco 3
('acentuacao', 12, 'A', 3, 'CT', true, '{"text": "O atleta recebeu o trofeu de campeao. Ele era um heroi para o publico.", "error_count": 4}', 'O atleta recebeu o TROFÉU de CAMPEÃO. Ele era um HERÓI para o PÚBLICO.', 'EF05LP01', 3),
('acentuacao', 12, 'A', 3, 'AS', true, '{"column_a": ["TROFÉU", "SAÍDA", "MÉDICO", "RAINHA", "PARABÉNS"], "column_b": ["oxítona terminada em ENS", "hiato sem acento (NH)", "hiato com acento", "proparoxítona", "ditongo aberto ÉU"]}', 'TROFÉU→ditongo aberto ÉU, SAÍDA→hiato com acento, MÉDICO→proparoxítona, RAINHA→hiato sem acento (NH), PARABÉNS→oxítona terminada em ENS', 'EF04LP01', 3),
('acentuacao', 12, 'A', 3, 'VF', true, '{"stem": "O Acordo Ortográfico de 2009 eliminou o acento nos ditongos EI e OI em paroxítonas."}', 'V', 'EF07LP01', 3),

-- Bloco 4
('acentuacao', 12, 'A', 4, 'CT', false, '{"text": "Meu avo e minha avo vieram de onibus para a minha formatura. Eles trouxeram um trofeu de musica classica que pertenceu ao meu bisavo, um musico famoso.", "error_count": 8}', 'Meu AVÔ e minha AVÓ vieram de ÔNIBUS para a minha formatura. Eles trouxeram um TROFÉU de MÚSICA CLÁSSICA que pertenceu ao meu BISAVÔ, um MÚSICO famoso.', 'EF04LP01', 3),
('acentuacao', 12, 'A', 4, 'MC', false, '{"stem": "Qual conjunto tem APENAS palavras corretamente acentuadas?", "options": ["A) médico, saída, chapéu, rainha, também", "B) medico, saida, chapeu, rainha, tambem", "C) médico, saída, chapéu, raínha, também"]}', 'A', 'EF04LP01', 3),
('acentuacao', 12, 'A', 4, 'RF', false, '{"stem": "Corrija todos os erros: MUSICO FAMOSO TOCA VIOLAO NO ESPACO PUBLICO ALEM DO HORARIO ESTABELECIDO."}', 'MÚSICO FAMOSO TOCA VIOLÃO NO ESPAÇO PÚBLICO ALÉM DO HORÁRIO ESTABELECIDO.', 'EF04LP01', 3),
('acentuacao', 12, 'A', 4, 'VF', false, '{"stem": "IDEIA, PLATEIA e ASSEMBLEIA voltaram a ter acento no EI após 2015."}', 'F', 'EF07LP01', 3),
('acentuacao', 12, 'A', 4, 'AS', false, '{"column_a": ["proparoxítona", "oxítona terminada em A", "paroxítona terminada em L", "hiato I/U", "ditongo aberto ÉU"], "column_b": ["chapéu", "fácil", "pássaro", "sofá", "saída"]}', 'proparoxítona→pássaro, oxítona terminada em A→sofá, paroxítona terminada em L→fácil, hiato I/U→saída, ditongo aberto ÉU→chapéu', 'EF04LP01', 3),
('acentuacao', 12, 'A', 4, 'PG', false, '{"instruction": "Corrija TODOS os erros de acentuação no texto: ''O medico publico trabalha no hospital alem de atender em sua clinica. O publico o considera um heroi da saude.''", "word_bank": []}', 'O MÉDICO PÚBLICO trabalha no hospital ALÉM de atender em sua CLÍNICA. O PÚBLICO o considera um HERÓI da SAÚDE.', 'EF04LP01', 3);

-- ── NÍVEL 12-B — Revisão Acentuação II (acumulativa) ────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- Bloco 1
('acentuacao', 12, 'B', 1, 'CT', false, '{"text": "O onibus rapido passou pelo centro historico da cidade.", "error_count": 3}', 'O ÔNIBUS RÁPIDO passou pelo centro HISTÓRICO da cidade.', 'EF04LP01', 2),
('acentuacao', 12, 'B', 1, 'MC', false, '{"stem": "PERIÓDICO é:", "options": ["A) Oxítona", "B) Paroxítona", "C) Proparoxítona"]}', 'C', 'EF04LP01', 2),
('acentuacao', 12, 'B', 1, 'VF', false, '{"stem": "CHAPÉU perdeu o acento após 2009."}', 'F', 'EF07LP01', 2),
('acentuacao', 12, 'B', 1, 'RF', false, '{"stem": "Corrija: O ATLETICO PUBLICO e o melhor."}', 'O ATLÉTICO PÚBLICO é o melhor.', 'EF04LP01', 2),

-- Bloco 3
('acentuacao', 12, 'B', 3, 'CT', true, '{"text": "O heroi recebeu o trofeu de campeao na frente do publico entusiasmado. O medico que estava la disse que ele tinha saude de atleta.", "error_count": 6}', 'O HERÓI recebeu o TROFÉU de CAMPEÃO na frente do PÚBLICO entusiasmado. O MÉDICO que estava lá disse que ele tinha SAÚDE de atleta.', 'EF04LP01', 3),
('acentuacao', 12, 'B', 3, 'AS', true, '{"column_a": ["CHAPÉU", "MÉDICO", "TAMBÉM", "FÁCIL", "SAÍDA"], "column_b": ["paroxítona terminada em L", "hiato I tônico", "ditongo aberto ÉU", "proparoxítona", "oxítona terminada em EM"]}', 'CHAPÉU→ditongo aberto ÉU, MÉDICO→proparoxítona, TAMBÉM→oxítona terminada em EM, FÁCIL→paroxítona terminada em L, SAÍDA→hiato I tônico', 'EF04LP01', 3),
('acentuacao', 12, 'B', 3, 'VF', true, '{"stem": "O Acordo de 2009 eliminou o acento diferencial de pôde/pode mas manteve pôr/por."}', 'V', 'EF07LP01', 3),

-- Bloco 4
('acentuacao', 12, 'B', 4, 'CT', false, '{"text": "A musica classica e considerada um patrimonio cultural da humanidade. Os musicos que a interpretam precisam de muita tecnica e dedicacao para alcançar o nivel de excelencia exigido pelo publico especializado.", "error_count": 9}', 'A MÚSICA CLÁSSICA é considerada um PATRIMÔNIO cultural da humanidade. Os MÚSICOS que a interpretam precisam de muita TÉCNICA e DEDICAÇÃO para alcançar o NÍVEL de EXCELÊNCIA exigido pelo PÚBLICO especializado.', 'EF04LP01', 3),
('acentuacao', 12, 'B', 4, 'MC', false, '{"stem": "Qual linha tem TODOS os acentos corretos?", "options": ["A) herói, troféu, médico, saída, rainha, também", "B) heroi, trofeu, medico, saida, rainha, tambem", "C) heroí, troféu, médico, saída, raínha, también"]}', 'A', 'EF04LP01', 3),
('acentuacao', 12, 'B', 4, 'RF', false, '{"stem": "Corrija o parágrafo: Meu AVO materno era um MEDICO famoso que tocava MUSICA CLASSICA nas horas vagas. Ele era um HEROI para toda a FAMILIA."}', 'Meu AVÔ materno era um MÉDICO famoso que tocava MÚSICA CLÁSSICA nas horas vagas. Ele era um HERÓI para toda a FAMÍLIA.', 'EF04LP01', 3),
('acentuacao', 12, 'B', 4, 'VF', false, '{"stem": "PLATEIA, IDEIA e ASSEMBLEIA ganharam acento de volta em 2015."}', 'F', 'EF07LP01', 3),
('acentuacao', 12, 'B', 4, 'PG', false, '{"instruction": "Escreva um texto de 4–5 frases sobre qualquer tema, usando pelo menos: 2 proparoxítonas, 2 oxítonas com acento, 1 hiato acentuado, 1 ditongo aberto.", "word_bank": ["médico", "música", "café", "saída", "herói", "chapéu", "pássaro", "também"]}', 'Respostas variadas — verificar uso e acentuação corretos de todas as categorias pedidas', 'EF04LP01', 3);
