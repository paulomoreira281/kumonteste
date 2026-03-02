-- ============================================================
-- GeraFicha — Seed: Módulo Acentuação (Níveis 13–24)
-- Séries A e B | Blocos 1, 3 e 4
-- ============================================================

-- ── NÍVEL 13-A — Acento diferencial ─────────────────────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('acentuacao', 13, 'A', 1, 'MC', false, '{"stem": "Qual é a diferença entre POR e PÔR?", "options": ["A) POR é preposição; PÔR é verbo", "B) São a mesma palavra", "C) PÔR é preposição; POR é verbo"]}', 'A', 'EF07LP01', 2),
('acentuacao', 13, 'A', 1, 'VF', false, '{"stem": "PODE (presente) e PÔDE (passado) são diferenciados pelo acento."}', 'V', 'EF07LP01', 2),
('acentuacao', 13, 'A', 1, 'CL', false, '{"stem": "Vou ___ o livro na mesa. (POR / PÔR)"}', 'PÔR', 'EF07LP01', 2),
('acentuacao', 13, 'A', 1, 'CL', false, '{"stem": "Ele ___ resolver o problema ontem. (PODE / PÔDE)"}', 'PÔDE', 'EF07LP01', 2),
('acentuacao', 13, 'A', 3, 'MC', true, '{"stem": "O acento diferencial serve para:", "options": ["A) enfeitar a palavra", "B) distinguir palavras iguais com significados diferentes", "C) indicar sílaba tônica sempre"]}', 'B', 'EF07LP01', 2),
('acentuacao', 13, 'A', 3, 'VF', true, '{"stem": "Desde 2009, ELE e ÊLE não se diferenciam mais pelo acento."}', 'V', 'EF07LP01', 3),
('acentuacao', 13, 'A', 3, 'CL', true, '{"stem": "PÔR (verbo) leva acento para diferenciar da preposição ___."}', 'POR', 'EF07LP01', 2),
('acentuacao', 13, 'A', 4, 'MC', false, '{"stem": "Qual uso de POR/PÔR está correto?", "options": ["A) Vou por o casaco.", "B) Vou pôr o casaco.", "C) Vou pôr por aqui."]}', 'B', 'EF07LP01', 2),
('acentuacao', 13, 'A', 4, 'RF', false, '{"stem": "Corrija: Ele pode resolver ontem, mas hoje nao pode mais."}', 'Ele PÔDE resolver ontem, mas hoje não PODE mais.', 'EF07LP01', 2),
('acentuacao', 13, 'A', 4, 'CL', false, '{"stem": "Eu vou ___ o prato ___ cima da mesa. (POR/PÔR)"}', 'PÔR / POR', 'EF07LP01', 2),
('acentuacao', 13, 'A', 4, 'VF', false, '{"stem": "PARA (verbo parar, 3ª pessoa) e PARA (preposição) já não se diferenciam por acento."}', 'V', 'EF07LP01', 3),
('acentuacao', 13, 'A', 4, 'MC', false, '{"stem": "Qual frase usa PÔR corretamente?", "options": ["A) Por favor, pôr aqui.", "B) Ele vai pôr o chapéu.", "C) Vou por isso por aqui."]}', 'B', 'EF07LP01', 2),
('acentuacao', 13, 'A', 4, 'RF', false, '{"stem": "Complete com POR ou PÔR: Ele não ___ resistir. Vou ___ o livro lá."}', 'PÔDE / PÔR', 'EF07LP01', 2),
('acentuacao', 13, 'A', 4, 'PG', false, '{"instruction": "Escreva duas frases: uma com POR (preposição) e outra com PÔR (verbo).", "word_bank": []}', 'Ex.: Saí por aqui. / Vou pôr o livro na mesa.', 'EF07LP01', 2);

-- ── NÍVEL 13-B — Acento diferencial ─────────────────────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('acentuacao', 13, 'B', 1, 'MC', false, '{"stem": "PÔDE é:", "options": ["A) presente do indicativo", "B) pretérito perfeito", "C) futuro"]}', 'B', 'EF07LP01', 2),
('acentuacao', 13, 'B', 1, 'VF', false, '{"stem": "PÔR é verbo e precisa de acento para não ser confundido com a preposição POR."}', 'V', 'EF07LP01', 2),
('acentuacao', 13, 'B', 1, 'CL', false, '{"stem": "Ontem ele ___ chegar cedo. (PODE / PÔDE)"}', 'PÔDE', 'EF07LP01', 2),
('acentuacao', 13, 'B', 1, 'RF', false, '{"stem": "Corrija: Vou por o sapato por aqui."}', 'Vou PÔR o sapato por aqui.', 'EF07LP01', 2),
('acentuacao', 13, 'B', 3, 'MC', true, '{"stem": "Qual par ainda mantém acento diferencial no português atual?", "options": ["A) ele/êle", "B) por/pôr", "C) este/êste"]}', 'B', 'EF07LP01', 3),
('acentuacao', 13, 'B', 3, 'RF', true, '{"stem": "Corrija: Hoje ele pode ir, mas ontem ele pode tambem."}', 'Hoje ele PODE ir, mas ontem ele PÔDE também.', 'EF07LP01', 2),
('acentuacao', 13, 'B', 3, 'VF', true, '{"stem": "O acento diferencial em PÔDE/PODE é um dos poucos mantidos após o Acordo de 2009."}', 'V', 'EF07LP01', 3),
('acentuacao', 13, 'B', 4, 'CT', false, '{"text": "Ele nao pode vir ontem, mas hoje ele pode tentar por o chapeu e sair por aqui.", "error_count": 3}', 'Ele não PÔDE vir ontem, mas hoje ele PODE tentar PÔR o chapéu e sair por aqui.', 'EF07LP01', 3),
('acentuacao', 13, 'B', 4, 'MC', false, '{"stem": "Qual é a única forma correta?", "options": ["A) Ele pode vir ontem.", "B) Ele pôde vir ontem.", "C) Ele pôde vir hoje."]}', 'B', 'EF07LP01', 2),
('acentuacao', 13, 'B', 4, 'RF', false, '{"stem": "Corrija: Por favor, por o lixo por fora."}', 'Por favor, PÔR o lixo por fora.', 'EF07LP01', 2),
('acentuacao', 13, 'B', 4, 'CL', false, '{"stem": "Hoje ele ___ (pode/pôde) ir; ontem ele não ___ (pode/pôde)."}', 'PODE / PÔDE', 'EF07LP01', 2),
('acentuacao', 13, 'B', 4, 'VF', false, '{"stem": "MANDE e MANDÊ se diferenciam por acento no português atual."}', 'F', 'EF07LP01', 3),
('acentuacao', 13, 'B', 4, 'DS', false, '{"word": "diferencial"}', 'di-fe-ren-ci-al', 'EF07LP01', 2),
('acentuacao', 13, 'B', 4, 'PG', false, '{"instruction": "Escreva um pequeno diálogo usando POR, PÔR, PODE e PÔDE corretamente.", "word_bank": []}', 'Respostas variadas — verificar uso correto dos 4 vocábulos', 'EF07LP01', 3);

-- ── NÍVEL 14-A — Acordo Ortográfico 2009: mudanças ──────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('acentuacao', 14, 'A', 1, 'MC', false, '{"stem": "O Acordo Ortográfico de 2009 eliminou o acento em qual caso?", "options": ["A) Proparoxítonas", "B) Ditongos EI e OI em paroxítonas", "C) Oxítonas terminadas em EM"]}', 'B', 'EF07LP01', 2),
('acentuacao', 14, 'A', 1, 'VF', false, '{"stem": "Desde 2009, IDEIA não tem mais acento no EI."}', 'V', 'EF07LP01', 2),
('acentuacao', 14, 'A', 1, 'CL', false, '{"stem": "Antes de 2009 escrevia-se ASSEMBLÉIA; agora escreve-se ___."}', 'ASSEMBLEIA', 'EF07LP01', 2),
('acentuacao', 14, 'A', 1, 'RF', false, '{"stem": "Corrija para o acordo atual: JIBÓIA, APÓIO, IDÉIA"}', 'JIBOIA, APOIO, IDEIA', 'EF07LP01', 2),
('acentuacao', 14, 'A', 3, 'MC', true, '{"stem": "Qual palavra perdeu o acento com o Acordo de 2009?", "options": ["A) chapéu", "B) ideia", "C) herói"]}', 'B', 'EF07LP01', 2),
('acentuacao', 14, 'A', 3, 'VF', true, '{"stem": "HEROÍ perdeu o acento após 2009. (Correto?)"}', 'F', 'EF07LP01', 3),
('acentuacao', 14, 'A', 3, 'CL', true, '{"stem": "Ditongos EI e OI perdem acento apenas em palavras ___ (oxítonas/paroxítonas)."}', 'paroxítonas', 'EF07LP01', 3),
('acentuacao', 14, 'A', 4, 'MC', false, '{"stem": "Qual forma está CORRETA após 2009?", "options": ["A) assembléia", "B) assembleia", "C) assémbleia"]}', 'B', 'EF07LP01', 2),
('acentuacao', 14, 'A', 4, 'RF', false, '{"stem": "Atualize para o acordo atual: PLATÉIA, IDÉIA, JIBÓIA, APÓIA"}', 'PLATEIA, IDEIA, JIBOIA, APOIA', 'EF07LP01', 2),
('acentuacao', 14, 'A', 4, 'VF', false, '{"stem": "HERÓI (oxítona) mantém o acento mesmo após 2009."}', 'V', 'EF07LP01', 2),
('acentuacao', 14, 'A', 4, 'CL', false, '{"stem": "GELEIA está ___ (correto/errado) após 2009. Antes escrevia-se ___."}', 'correto / GELÉIA', 'EF07LP01', 2),
('acentuacao', 14, 'A', 4, 'MC', false, '{"stem": "CHAPÉU mantém acento porque:", "options": ["A) É oxítona com ditongo aberto ÉU", "B) É paroxítona", "C) O acordo não mudou"]}', 'A', 'EF07LP01', 3),
('acentuacao', 14, 'A', 4, 'AS', false, '{"column_a": ["IDEIA", "HERÓI", "ASSEMBLEIA", "CHAPÉU", "PLATEIA"], "column_b": ["mantém acento (oxítona ÉU)", "perdeu acento EI (paroxítona)", "mantém acento OI (oxítona)", "perdeu acento EI (paroxítona)", "perdeu acento EI (paroxítona)"]}', 'IDEIA→perdeu EI (paroxítona), HERÓI→mantém OI (oxítona), ASSEMBLEIA→perdeu EI (paroxítona), CHAPÉU→mantém ÉU (oxítona), PLATEIA→perdeu EI (paroxítona)', 'EF07LP01', 3),
('acentuacao', 14, 'A', 4, 'PG', false, '{"instruction": "Liste 4 palavras que perderam o acento com o Acordo de 2009 e 2 que mantiveram.", "word_bank": []}', 'Perderam: ideia, plateia, assembleia, geleia, jiboia. Mantiveram: chapéu, herói', 'EF07LP01', 3);

-- ── NÍVEL 14-B — Acordo Ortográfico 2009: mudanças ──────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('acentuacao', 14, 'B', 1, 'MC', false, '{"stem": "APOIA (verbo apoiar) tem acento?", "options": ["A) Sim, APÓIA", "B) Não, APOIA (após 2009)", "C) Depende do contexto"]}', 'B', 'EF07LP01', 2),
('acentuacao', 14, 'B', 1, 'VF', false, '{"stem": "PLATEIA está correta sem acento após 2009."}', 'V', 'EF07LP01', 2),
('acentuacao', 14, 'B', 1, 'RF', false, '{"stem": "Atualize: GELÉIA, APÓIA, BOCÉJO"}', 'GELEIA, APOIA, BOCEJO', 'EF07LP01', 2),
('acentuacao', 14, 'B', 1, 'CL', false, '{"stem": "O Acordo de 2009 eliminou o acento em ditongos EI e OI de palavras ___."}', 'paroxítonas', 'EF07LP01', 2),
('acentuacao', 14, 'B', 3, 'MC', true, '{"stem": "Qual está ERRADO após 2009?", "options": ["A) ideia", "B) herói", "C) assembléia"]}', 'C', 'EF07LP01', 2),
('acentuacao', 14, 'B', 3, 'RF', true, '{"stem": "Corrija para o acordo atual: A PLATÉIA aplaudiu a JIBÓIA no palco."}', 'A PLATEIA aplaudiu a JIBOIA no palco.', 'EF07LP01', 2),
('acentuacao', 14, 'B', 3, 'VF', true, '{"stem": "EUROPEIO, BOCEJAR e BEIJO não têm mais acento nas formas paroxítonas após 2009."}', 'V', 'EF07LP01', 3),
('acentuacao', 14, 'B', 4, 'CT', false, '{"text": "A platéia aplaudiu a idéia do herói de criar uma assembléia para discutir a geléia de jibóia.", "error_count": 4}', 'A PLATEIA aplaudiu a IDEIA do herói de criar uma ASSEMBLEIA para discutir a GELEIA de jiboia.', 'EF07LP01', 3),
('acentuacao', 14, 'B', 4, 'MC', false, '{"stem": "Qual conjunto está todo correto após 2009?", "options": ["A) ideia, plateia, herói, chapéu", "B) idéia, platéia, heróí, chapéu", "C) ideia, plateia, heroí, chapeu"]}', 'A', 'EF07LP01', 2),
('acentuacao', 14, 'B', 4, 'RF', false, '{"stem": "Corrija: A ASSEMBLÉIA votou pela IDÉIA do HERÓI."}', 'A ASSEMBLEIA votou pela IDEIA do HERÓI.', 'EF07LP01', 2),
('acentuacao', 14, 'B', 4, 'VF', false, '{"stem": "Após 2009, TROFÉU perdeu o acento."}', 'F', 'EF07LP01', 2),
('acentuacao', 14, 'B', 4, 'CL', false, '{"stem": "HERÓI mantém acento porque é ___ com ditongo aberto ___."}', 'oxítona / ÓI', 'EF07LP01', 2),
('acentuacao', 14, 'B', 4, 'DS', false, '{"word": "assembleia"}', 'as-sem-bleia', 'EF07LP01', 2),
('acentuacao', 14, 'B', 4, 'PG', false, '{"instruction": "Explique com suas palavras a principal mudança do Acordo de 2009 em relação a ditongos.", "word_b ank": []}', 'O Acordo de 2009 eliminou o acento agudo dos ditongos EI e OI em palavras paroxítonas (ex.: ideia, plateia, geleia). Oxítonas como herói e chapéu mantiveram o acento.', 'EF07LP01', 3);

-- ── NÍVEL 15-A — Trema: extinção e exceções ──────────────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('acentuacao', 15, 'A', 1, 'MC', false, '{"stem": "O trema (¨) foi eliminado do português em qual situação?", "options": ["A) Em todas as palavras", "B) Em palavras de origem portuguesa (exceto nomes próprios)", "C) Apenas em verbos"]}', 'B', 'EF07LP01', 2),
('acentuacao', 15, 'A', 1, 'VF', false, '{"stem": "Antes de 2009 escrevia-se TRANQÜILO; agora escreve-se TRANQUILO."}', 'V', 'EF07LP01', 2),
('acentuacao', 15, 'A', 1, 'RF', false, '{"stem": "Atualize: FREQÜENTE, TRANQÜILO, SEQÜÊNCIA"}', 'FREQUENTE, TRANQUILO, SEQUÊNCIA', 'EF07LP01', 2),
('acentuacao', 15, 'A', 1, 'CL', false, '{"stem": "Após 2009, o trema foi eliminado de palavras de origem ___."}', 'portuguesa', 'EF07LP01', 2),
('acentuacao', 15, 'A', 3, 'MC', true, '{"stem": "Em nomes estrangeiros ou de origem estrangeira, o trema:", "options": ["A) foi eliminado", "B) pode ser mantido", "C) é obrigatório"]}', 'B', 'EF07LP01', 2),
('acentuacao', 15, 'A', 3, 'VF', true, '{"stem": "MÜLLER e BÜNDCHEN mantêm o trema por serem sobrenomes de origem germânica."}', 'V', 'EF07LP01', 3),
('acentuacao', 15, 'A', 3, 'CL', true, '{"stem": "TRANQUILO perdeu o trema; agora o QU soa como ___ (KW / K)."}', 'KW', 'EF07LP01', 3),
('acentuacao', 15, 'A', 4, 'MC', false, '{"stem": "Qual forma está CORRETA após 2009?", "options": ["A) tranqüilo", "B) tranquilo", "C) trânquilo"]}', 'B', 'EF07LP01', 1),
('acentuacao', 15, 'A', 4, 'RF', false, '{"stem": "Corrija: É FREQÜENTE e CONSEQÜENTE ser TRANQÜILO."}', 'É FREQUENTE e CONSEQUENTE ser TRANQUILO.', 'EF07LP01', 2),
('acentuacao', 15, 'A', 4, 'VF', false, '{"stem": "CINQUENTA perdeu o trema e agora se escreve sem ¨."}', 'V', 'EF07LP01', 2),
('acentuacao', 15, 'A', 4, 'CL', false, '{"stem": "ELOQUENTE: antes tinha trema no ___, hoje se escreve sem ___."}', 'U / trema', 'EF07LP01', 2),
('acentuacao', 15, 'A', 4, 'MC', false, '{"stem": "Qual conjunto usa corretamente as regras de 2009?", "options": ["A) tranquilo, frequente, sequência", "B) tranqüilo, freqüente, seqüência", "C) tranquillo, frequente, seqüência"]}', 'A', 'EF07LP01', 2),
('acentuacao', 15, 'A', 4, 'AS', false, '{"column_a": ["TRANQUILO", "FREQUENTE", "SEQUÊNCIA", "MÜLLER", "CINQUENTA"], "column_b": ["mantém trema (nome estrangeiro)", "perdeu trema (sequência)", "perdeu trema (frequente)", "perdeu trema (tranquilo)", "perdeu trema (cinquenta)"]}', 'TRANQUILO→perdeu trema, FREQUENTE→perdeu trema, SEQUÊNCIA→perdeu trema, MÜLLER→mantém trema (estrangeiro), CINQUENTA→perdeu trema', 'EF07LP01', 3),
('acentuacao', 15, 'A', 4, 'PG', false, '{"instruction": "Reescreva o trecho atualizando para o Acordo de 2009: ''Era freqüente que o tranqüilo aluno fosse eloqüente nas aulas de seqüência lógica.''", "word_bank": []}', 'Era FREQUENTE que o TRANQUILO aluno fosse ELOQUENTE nas aulas de SEQUÊNCIA lógica.', 'EF07LP01', 2);

-- ── NÍVEL 15-B — Trema: extinção e exceções ──────────────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('acentuacao', 15, 'B', 1, 'MC', false, '{"stem": "ELOQUENTE tem trema após 2009?", "options": ["A) Sim", "B) Não"]}', 'B', 'EF07LP01', 2),
('acentuacao', 15, 'B', 1, 'VF', false, '{"stem": "CINQUENTA se escreve sem trema após 2009."}', 'V', 'EF07LP01', 2),
('acentuacao', 15, 'B', 1, 'RF', false, '{"stem": "Atualize: DELINQÜENTE, EQÜESTRE, QÜINZE"}', 'DELINQUENTE, EQUESTRE, QUINZE', 'EF07LP01', 2),
('acentuacao', 15, 'B', 1, 'CL', false, '{"stem": "QUINZE e CINQUENTA perderam o ___ após 2009."}', 'trema', 'EF07LP01', 1),
('acentuacao', 15, 'B', 3, 'MC', true, '{"stem": "Qual palavra MANTÉM o trema por ser de origem estrangeira?", "options": ["A) tranquilo", "B) frequente", "C) Müller"]}', 'C', 'EF07LP01', 2),
('acentuacao', 15, 'B', 3, 'RF', true, '{"stem": "Atualize: O DELINQÜENTE era FREQÜENTE no QÜINTAL."}', 'O DELINQUENTE era FREQUENTE no QUINTAL.', 'EF07LP01', 2),
('acentuacao', 15, 'B', 3, 'VF', true, '{"stem": "Nomes próprios estrangeiros como BÜNDCHEN podem manter o trema."}', 'V', 'EF07LP01', 3),
('acentuacao', 15, 'B', 4, 'CT', false, '{"text": "É freqüente que o delinqüente seja eloqüente. Contudo, o juiz Müller não se deixa enganar.", "error_count": 3}', 'É FREQUENTE que o DELINQUENTE seja ELOQUENTE. Contudo, o juiz Müller não se deixa enganar.', 'EF07LP01', 2),
('acentuacao', 15, 'B', 4, 'MC', false, '{"stem": "Qual conjunto está todo correto?", "options": ["A) tranquilo, frequente, delinquente", "B) tranqüilo, freqüente, delinqüente", "C) tranquilo, freqüente, delinquente"]}', 'A', 'EF07LP01', 2),
('acentuacao', 15, 'B', 4, 'RF', false, '{"stem": "Corrija: A SEQÜÊNCIA dos eventos foi EQÜÂNIME e FREQÜENTE."}', 'A SEQUÊNCIA dos eventos foi EQUÂNIME e FREQUENTE.', 'EF07LP01', 2),
('acentuacao', 15, 'B', 4, 'VF', false, '{"stem": "Após 2009, o trema foi totalmente eliminado do português, sem exceção."}', 'F', 'EF07LP01', 2),
('acentuacao', 15, 'B', 4, 'CL', false, '{"stem": "O trema pode ser mantido em nomes ___ de origem ___."}', 'próprios / estrangeira', 'EF07LP01', 2),
('acentuacao', 15, 'B', 4, 'DS', false, '{"word": "sequência"}', 'se-quên-cia', 'EF07LP01', 2),
('acentuacao', 15, 'B', 4, 'PG', false, '{"instruction": "Liste 5 palavras que perderam o trema em 2009 e use-as em uma frase.", "word_bank": []}', 'Ex.: tranquilo, frequente, sequência, delinquente, eloquente. ''Era frequente que o delinquente fosse eloquente, mas o juiz era tranquilo e seguia a sequência legal.''', 'EF07LP01', 3);

-- ── NÍVEL 16-A — Revisão completa: todos os casos ───────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('acentuacao', 16, 'A', 1, 'MC', false, '{"stem": "Qual regra se aplica a MÉDICO?", "options": ["A) Oxítona terminada em O", "B) Proparoxítona", "C) Paroxítona terminada em L"]}', 'B', 'EF04LP01', 1),
('acentuacao', 16, 'A', 1, 'VF', false, '{"stem": "TRANQUILO perdeu o trema; TAMBÉM mantém acento; IDEIA perdeu acento."}', 'V', 'EF07LP01', 2),
('acentuacao', 16, 'A', 1, 'RF', false, '{"stem": "Corrija: O MEDICO tranquilo sabia que o HEROI poderia ter saida."}', 'O MÉDICO tranquilo sabia que o HERÓI poderia ter SAÍDA.', 'EF04LP01', 2),
('acentuacao', 16, 'A', 1, 'CL', false, '{"stem": "CHAPÉU (oxítona com ditongo ÉU), FÁCIL (paroxítona terminada em L) e MÚSICA (proparoxítona) — todas ___ recebem acento."}', 'recebem', 'EF04LP01', 1),
('acentuacao', 16, 'A', 3, 'AS', true, '{"column_a": ["CAFÉ", "FÁCIL", "MÚSICA", "SAÍDA", "TRANQUILO", "IDEIA"], "column_b": ["perdeu acento EI (2009)", "perdeu trema (2009)", "hiato I/U tônico", "proparoxítona", "paroxítona com L", "oxítona terminada em E"]}', 'CAFÉ→oxítona E, FÁCIL→paroxítona L, MÚSICA→proparoxítona, SAÍDA→hiato, TRANQUILO→perdeu trema, IDEIA→perdeu acento EI', 'EF07LP01', 3),
('acentuacao', 16, 'A', 3, 'CT', true, '{"text": "O medico tranquilo usou os oculos para ler a ideia do heroi sobre a saude publica.", "error_count": 6}', 'O MÉDICO tranquilo usou os ÓCULOS para ler a IDEIA do HERÓI sobre a SAÚDE PÚBLICA.', 'EF04LP01', 3),
('acentuacao', 16, 'A', 3, 'VF', true, '{"stem": "PÔR (verbo) e PÔDE (pretérito) são os principais acentos diferenciais mantidos após 2009."}', 'V', 'EF07LP01', 3),
('acentuacao', 16, 'A', 4, 'CT', false, '{"text": "O publico assistiu a plateia com os oculos novos. A musica classica e frequente no festival. O heroi recebeu um trofeu e um chapeu de presente.", "error_count": 8}', 'O PÚBLICO assistiu a PLATEIA com os ÓCULOS novos. A MÚSICA clássica é FREQUENTE no festival. O HERÓI recebeu um TROFÉU e um CHAPÉU de presente.', 'EF04LP01', 3),
('acentuacao', 16, 'A', 4, 'RF', false, '{"stem": "Corrija TODOS: ONIBUS, FACIL, SAIDA, IDEIA (errada), HEROI, MEDICO, TAMBEM, TRANQUILO (com trema)"}', 'ÔNIBUS, FÁCIL, SAÍDA, IDEIA (já correta), HERÓI, MÉDICO, TAMBÉM, TRANQUILO', 'EF04LP01', 3),
('acentuacao', 16, 'A', 4, 'MC', false, '{"stem": "Qual frase está 100% correta?", "options": ["A) O médico tranquilo leu a ideia do herói com óculos.", "B) O médico tranqüilo leu a idéia do heróí com óculos.", "C) O medico tranquilo leu a ideia do heroi com oculos."]}', 'A', 'EF07LP01', 3),
('acentuacao', 16, 'A', 4, 'VF', false, '{"stem": "PÔDE (pretérito), PÔR (verbo), CHAPÉU e HERÓI mantêm acento mesmo após 2009."}', 'V', 'EF07LP01', 2),
('acentuacao', 16, 'A', 4, 'CL', false, '{"stem": "ELOQUENTE perdeu o ___ ; IDEIA perdeu o ___; MÉDICO sempre teve ___."}', 'trema / acento no EI / acento (proparoxítona)', 'EF07LP01', 3),
('acentuacao', 16, 'A', 4, 'PG', false, '{"instruction": "Escreva um parágrafo de 5 frases usando corretamente pelo menos: 1 proparoxítona, 1 oxítona com acento, 1 paroxítona com acento, 1 hiato, 1 palavra corrigida pelo acordo 2009.", "word_bank": ["médico", "café", "fácil", "saída", "ideia", "herói", "tranquilo", "pôr", "chapéu"]}', 'Respostas variadas — verificar uso e acentuação corretos', 'EF07LP01', 3);

-- ── NÍVEL 16-B — Revisão completa: todos os casos ───────────

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('acentuacao', 16, 'B', 1, 'CT', false, '{"text": "O atleta publico recebeu o trofeu de campeao alem do chapeu de heroi.", "error_count": 5}', 'O ATLETA PÚBLICO recebeu o TROFÉU de CAMPEÃO ALÉM do CHAPÉU de HERÓI.', 'EF04LP01', 3),
('acentuacao', 16, 'B', 1, 'VF', false, '{"stem": "TRANQUILO (sem trema), IDEIA (sem acento) e HERÓI (com acento) estão todos corretos após 2009."}', 'V', 'EF07LP01', 2),
('acentuacao', 16, 'B', 1, 'RF', false, '{"stem": "Corrija: O PUBLICO applaudiu a PLATEIA com o TROFEU do HEROI."}', 'O PÚBLICO aplaudiu a PLATEIA com o TROFÉU do HERÓI.', 'EF04LP01', 2),
('acentuacao', 16, 'B', 1, 'CL', false, '{"stem": "PÔDE (pretérito perfeito) × PODE (presente): o acento ___ os diferencia."}', 'diferencial', 'EF07LP01', 2),
('acentuacao', 16, 'B', 3, 'CT', true, '{"text": "Era freqüente que o medico usasse os oculos para ler a ideia do heroi sobre saude publica.", "error_count": 6}', 'Era FREQUENTE que o MÉDICO usasse os ÓCULOS para ler a IDEIA do HERÓI sobre SAÚDE PÚBLICA.', 'EF07LP01', 3),
('acentuacao', 16, 'B', 3, 'AS', true, '{"column_a": ["TROFÉU", "MÉDICO", "FÁCIL", "SAÍDA", "TRANQUILO", "PÔDE"], "column_b": ["acento diferencial (pretérito)", "perdeu trema", "hiato I tônico", "paroxítona terminada em L", "proparoxítona", "oxítona com ditongo ÉU"]}', 'TROFÉU→ÉU oxítona, MÉDICO→proparoxítona, FÁCIL→paroxítona L, SAÍDA→hiato, TRANQUILO→perdeu trema, PÔDE→acento diferencial', 'EF07LP01', 3),
('acentuacao', 16, 'B', 3, 'VF', true, '{"stem": "RAINHA (sem acento, regra NH) e MOINHO (sem acento, regra NH) estão corretos."}', 'V', 'EF05LP01', 2),
('acentuacao', 16, 'B', 4, 'CT', false, '{"text": "O medico freqüente usou os oculos de titanio para ler a idéia do herói sobre a saude publica. Ele tambem pôde ver o chapeu de seu colega.", "error_count": 7}', 'O MÉDICO frequente usou os ÓCULOS de titânio para ler a IDEIA do herói sobre a SAÚDE PÚBLICA. Ele TAMBÉM PÔDE ver o CHAPÉU de seu colega.', 'EF07LP01', 3),
('acentuacao', 16, 'B', 4, 'MC', false, '{"stem": "Qual linha tem APENAS palavras corretas após 2009?", "options": ["A) médico, tranquilo, herói, ideia, chapéu, também", "B) médico, tranqüilo, heróí, idéia, chapéu, tambem", "C) medico, tranquilo, heroi, ideia, chapeu, tambem"]}', 'A', 'EF07LP01', 3),
('acentuacao', 16, 'B', 4, 'RF', false, '{"stem": "Reescreva atualizando: ''O ATLÉTICO publico, FREQÜENTE na platéia, aplaudiu o HERÓI com o CHAPEU de TRANQÜILO observador.''"}', 'O ATLÉTICO público, FREQUENTE na PLATEIA, aplaudiu o HERÓI com o CHAPÉU de TRANQUILO observador.', 'EF07LP01', 3),
('acentuacao', 16, 'B', 4, 'VF', false, '{"stem": "Após 2009, o Acordo eliminou o acento diferencial de PÔDE/PODE."}', 'F', 'EF07LP01', 3),
('acentuacao', 16, 'B', 4, 'CL', false, '{"stem": "As 3 grandes mudanças do Acordo de 2009 foram: eliminar o ___, eliminar acento em ditongos ___ de paroxítonas, e eliminar alguns ___ diferenciais."}', 'trema / EI e OI / acentos', 'EF07LP01', 3),
('acentuacao', 16, 'B', 4, 'PG', false, '{"instruction": "Escreva um resumo de 4–5 frases explicando as principais mudanças do Acordo Ortográfico de 2009 em relação à acentuação.", "word_bank": []}', 'O Acordo de 2009 fez três grandes mudanças: 1) eliminou o trema em palavras de origem portuguesa; 2) eliminou o acento em ditongos EI e OI de paroxítonas (ideia, plateia); 3) eliminou alguns acentos diferenciais. Foram mantidos: acentos em oxítonas com EI e OI (herói, chapéu), o acento diferencial pôr/por e pôde/pode, e o trema em nomes estrangeiros.', 'EF07LP01', 3);

-- ── NÍVEIS 17–24: Revisões e consolidação ────────────────────
-- Nível 17-A: Classificação silábica em texto
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('acentuacao', 17, 'A', 1, 'MC', false, '{"stem": "Classifique ÁVIDO:", "options": ["A) Oxítona", "B) Paroxítona", "C) Proparoxítona"]}', 'C', 'EF04LP01', 2),
('acentuacao', 17, 'A', 1, 'VF', false, '{"stem": "INÚTIL é paroxítona terminada em L e leva acento."}', 'V', 'EF04LP01', 2),
('acentuacao', 17, 'A', 1, 'DS', false, '{"word": "glóbulo"}', 'gló-bu-lo', 'EF04LP01', 2),
('acentuacao', 17, 'A', 1, 'RF', false, '{"stem": "Acentue: UTIL, IMOVEL, CARATER, FENIX"}', 'ÚTIL, IMÓVEL, CARÁTER, FÊNIX', 'EF04LP01', 2),
('acentuacao', 17, 'A', 3, 'CT', true, '{"text": "O nivel de dificuldade do exercicio era consideravel para os alunos.", "error_count": 4}', 'O NÍVEL de dificuldade do EXERCÍCIO era CONSIDERÁVEL para os alunos.', 'EF04LP01', 3),
('acentuacao', 17, 'A', 3, 'AS', true, '{"column_a": ["ÚTIL", "IMÓVEL", "CARÁTER", "FÊNIX", "ÁVIDO"], "column_b": ["proparoxítona", "paroxítona terminada em X", "paroxítona terminada em R", "paroxítona terminada em L", "paroxítona terminada em L"]}', 'ÚTIL→paroxítona L, IMÓVEL→paroxítona L, CARÁTER→paroxítona R, FÊNIX→paroxítona X, ÁVIDO→proparoxítona', 'EF04LP01', 3),
('acentuacao', 17, 'A', 3, 'VF', true, '{"stem": "ÍMPAR é paroxítona terminada em R e leva acento."}', 'V', 'EF04LP01', 2),
('acentuacao', 17, 'A', 4, 'CT', false, '{"text": "O nivel de saude da populacao e consideravel. O medico utilizou um metodo util e eficaz no tratamento.", "error_count": 6}', 'O NÍVEL de SAÚDE da POPULAÇÃO é CONSIDERÁVEL. O MÉDICO utilizou um MÉTODO ÚTIL e eficaz no tratamento.', 'EF04LP01', 3),
('acentuacao', 17, 'A', 4, 'RF', false, '{"stem": "Acentue: IMOVEL, CARATER, UTIL, NIVEL, AMAVEL, FACIL"}', 'IMÓVEL, CARÁTER, ÚTIL, NÍVEL, AMÁVEL, FÁCIL', 'EF04LP01', 2),
('acentuacao', 17, 'A', 4, 'MC', false, '{"stem": "Qual grupo tem paroxítonas que levam acento?", "options": ["A) fácil, útil, nível, caráter", "B) mesa, caderno, escola, bonito", "C) café, avó, chapéu, herói"]}', 'A', 'EF04LP01', 2),
('acentuacao', 17, 'A', 4, 'VF', false, '{"stem": "JOVEM não leva acento por ser paroxítona terminada em EM."}', 'V', 'EF04LP01', 2),
('acentuacao', 17, 'A', 4, 'CL', false, '{"stem": "AMÁVEL leva acento por ser paroxítona terminada em ___."}', 'L', 'EF04LP01', 2),
('acentuacao', 17, 'A', 4, 'DS', false, '{"word": "considerável"}', 'con-si-de-rá-vel', 'EF04LP01', 3),
('acentuacao', 17, 'A', 4, 'PG', false, '{"instruction": "Escreva 6 paroxítonas com acento, 2 para cada terminação: L, R, X.", "word_bank": []}', 'L: fácil, útil | R: caráter, impar | X: fênix, látex', 'EF04LP01', 3);

-- 17-B
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('acentuacao', 17, 'B', 1, 'MC', false, '{"stem": "LÁTEX é paroxítona terminada em:", "options": ["A) L", "B) X", "C) S"]}', 'B', 'EF04LP01', 2),
('acentuacao', 17, 'B', 1, 'VF', false, '{"stem": "ÍMPAR é paroxítona com acento por terminar em R."}', 'V', 'EF04LP01', 2),
('acentuacao', 17, 'B', 1, 'RF', false, '{"stem": "Acentue: AMAVEL, POSSIVEL, LATÉX, IMÓVEL (já correto?)"}', 'AMÁVEL, POSSÍVEL, LÁTEX, IMÓVEL (correto)', 'EF04LP01', 2),
('acentuacao', 17, 'B', 1, 'CL', false, '{"stem": "FÓSSIL é paroxítona terminada em ___ e leva acento."}', 'L', 'EF04LP01', 2),
('acentuacao', 17, 'B', 3, 'CT', true, '{"text": "O nivel amavel do aluno era consideravel. Seu carater util o tornava especial.", "error_count": 5}', 'O NÍVEL AMÁVEL do aluno era CONSIDERÁVEL. Seu CARÁTER ÚTIL o tornava especial.', 'EF04LP01', 3),
('acentuacao', 17, 'B', 3, 'AS', true, '{"column_a": ["FÓSSIL", "CARÁTER", "LÁTEX", "POSSÍVEL", "AMÁVEL"], "column_b": ["paroxítona terminada em L", "paroxítona terminada em R", "paroxítona terminada em X", "paroxítona terminada em L", "paroxítona terminada em L"]}', 'FÓSSIL→L, CARÁTER→R, LÁTEX→X, POSSÍVEL→L, AMÁVEL→L', 'EF04LP01', 3),
('acentuacao', 17, 'B', 3, 'VF', true, '{"stem": "Todas as paroxítonas terminadas em L, R ou X recebem acento."}', 'V', 'EF04LP01', 2),
('acentuacao', 17, 'B', 4, 'CT', false, '{"text": "O carater amavel e util do medico era consideravel. Seu nivel de saude era possivel de manter com exercicios.", "error_count": 7}', 'O CARÁTER AMÁVEL e ÚTIL do MÉDICO era CONSIDERÁVEL. Seu NÍVEL de saúde era POSSÍVEL de manter com exercícios.', 'EF04LP01', 3),
('acentuacao', 17, 'B', 4, 'RF', false, '{"stem": "Corrija: AMAVEL, CARATER, UTIL, NIVEL, FOSSIL, POSSIVEL"}', 'AMÁVEL, CARÁTER, ÚTIL, NÍVEL, FÓSSIL, POSSÍVEL', 'EF04LP01', 2),
('acentuacao', 17, 'B', 4, 'MC', false, '{"stem": "Qual grupo tem APENAS paroxítonas com acento?", "options": ["A) fácil, amável, nível, caráter, látex", "B) mesa, livro, bonito, escola", "C) café, avó, também, herói"]}', 'A', 'EF04LP01', 2),
('acentuacao', 17, 'B', 4, 'VF', false, '{"stem": "VOLÁTIL é paroxítona terminada em L e recebe acento."}', 'V', 'EF04LP01', 2),
('acentuacao', 17, 'B', 4, 'CL', false, '{"stem": "TÊXTIL leva acento por ser paroxítona terminada em ___."}', 'L', 'EF04LP01', 2),
('acentuacao', 17, 'B', 4, 'DS', false, '{"word": "possível"}', 'pos-sí-vel', 'EF04LP01', 2),
('acentuacao', 17, 'B', 4, 'PG', false, '{"instruction": "Escreva frases usando: AMÁVEL, CARÁTER, ÚTIL, NÍVEL, FÓSSIL, POSSÍVEL.", "word_bank": []}', 'Respostas variadas usando as 6 palavras', 'EF04LP01', 3);

-- Níveis 18–24: inserção sintética para completar o módulo
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- 18-A Revisão geral I
('acentuacao', 18, 'A', 1, 'MC', false, '{"stem": "Qual é a regra para acentuar paroxítonas terminadas em UM?", "options": ["A) Não se acentua", "B) Sempre se acentua", "C) Depende da vogal"]}', 'B', 'EF04LP01', 2),
('acentuacao', 18, 'A', 1, 'VF', false, '{"stem": "FÓRUM é paroxítona terminada em UM e leva acento."}', 'V', 'EF04LP01', 2),
('acentuacao', 18, 'A', 1, 'RF', false, '{"stem": "Acentue: FORUM, ALBUM, VACUUM"}', 'FÓRUM, ÁLBUM, VÁCUO', 'EF04LP01', 2),
('acentuacao', 18, 'A', 1, 'DS', false, '{"word": "fórum"}', 'fó-rum', 'EF04LP01', 2),
('acentuacao', 18, 'A', 3, 'MC', true, '{"stem": "ÁLBUM leva acento porque é paroxítona terminada em:", "options": ["A) M", "B) UM", "C) A"]}', 'B', 'EF04LP01', 2),
('acentuacao', 18, 'A', 3, 'VF', true, '{"stem": "QUORUM e FORUM levam acento por serem paroxítonas terminadas em UM."}', 'V', 'EF04LP01', 2),
('acentuacao', 18, 'A', 3, 'CL', true, '{"stem": "Paroxítonas terminadas em UM e UNS ___ (recebem / não recebem) acento."}', 'recebem', 'EF04LP01', 2),
('acentuacao', 18, 'A', 4, 'CT', false, '{"text": "No forum de discussao, o album de musica foi apresentado. O medico falou sobre o vacuum da saude publica.", "error_count": 5}', 'No FÓRUM de discussão, o ÁLBUM de MÚSICA foi apresentado. O MÉDICO falou sobre o vácuo da SAÚDE pública.', 'EF04LP01', 3),
('acentuacao', 18, 'A', 4, 'RF', false, '{"stem": "Acentue: FORUM, ALBUM, JEJUM, COMUM"}', 'FÓRUM, ÁLBUM, JEJUM (não acentua), COMUM (não acentua)', 'EF04LP01', 3),
('acentuacao', 18, 'A', 4, 'VF', false, '{"stem": "JEJUM e COMUM não levam acento por serem oxítonas terminadas em UM (regra diferente das paroxítonas)."}', 'V', 'EF04LP01', 3),
('acentuacao', 18, 'A', 4, 'MC', false, '{"stem": "Qual paroxítona em UM leva acento?", "options": ["A) jejum", "B) fórum", "C) comum"]}', 'B', 'EF04LP01', 2),
('acentuacao', 18, 'A', 4, 'CL', false, '{"stem": "FÓRUM leva acento; JEJUM não leva porque JEJUM é ___ (oxítona / paroxítona)."}', 'oxítona', 'EF04LP01', 3),
('acentuacao', 18, 'A', 4, 'DS', false, '{"word": "álbum"}', 'ál-bum', 'EF04LP01', 2),
('acentuacao', 18, 'A', 4, 'PG', false, '{"instruction": "Explique por que FÓRUM leva acento mas JEJUM não leva, mesmo ambos terminando em UM.", "word_bank": []}', 'FÓRUM é paroxítona (tônica em FÓ) terminada em UM → leva acento. JEJUM é oxítona (tônica em JUM) → não leva acento pela regra das oxítonas (UM não está na lista).', 'EF04LP01', 3);

INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- 18-B
('acentuacao', 18, 'B', 1, 'MC', false, '{"stem": "ÁLBUM é paroxítona terminada em:", "options": ["A) M", "B) UM", "C) BUM"]}', 'B', 'EF04LP01', 2),
('acentuacao', 18, 'B', 1, 'VF', false, '{"stem": "FÓRUM e ÁLBUM são paroxítonas acentuadas terminadas em UM."}', 'V', 'EF04LP01', 2),
('acentuacao', 18, 'B', 1, 'RF', false, '{"stem": "Corrija: No FORUM discutimos o ALBUM do MEDICO."}', 'No FÓRUM discutimos o ÁLBUM do MÉDICO.', 'EF04LP01', 2),
('acentuacao', 18, 'B', 1, 'CL', false, '{"stem": "JEJUM não leva acento porque é ___, não paroxítona."}', 'oxítona', 'EF04LP01', 2),
('acentuacao', 18, 'B', 3, 'MC', true, '{"stem": "Qual é paroxítona terminada em UM com acento?", "options": ["A) jejum", "B) comum", "C) fórum"]}', 'C', 'EF04LP01', 2),
('acentuacao', 18, 'B', 3, 'RF', true, '{"stem": "Acentue onde necessário: FORUM, ALBUM, JEJUM, COMUM, VACUUM"}', 'FÓRUM, ÁLBUM, JEJUM, COMUM, VÁCUO', 'EF04LP01', 3),
('acentuacao', 18, 'B', 3, 'VF', true, '{"stem": "Paroxítonas terminadas em UM sempre levam acento."}', 'V', 'EF04LP01', 2),
('acentuacao', 18, 'B', 4, 'CT', false, '{"text": "O forum de musica apresentou o album classico. O medico falou sobre o jejum e o forum de saude.", "error_count": 4}', 'O FÓRUM de MÚSICA apresentou o ÁLBUM clássico. O MÉDICO falou sobre o jejum e o FÓRUM de saúde.', 'EF04LP01', 3),
('acentuacao', 18, 'B', 4, 'RF', false, '{"stem": "Corrija: O ALBUM do FORUM foi discutido no QUORUM especial."}', 'O ÁLBUM do FÓRUM foi discutido no QUÓRUM especial.', 'EF04LP01', 2),
('acentuacao', 18, 'B', 4, 'MC', false, '{"stem": "Qual conjunto tem APENAS paroxítonas em UM com acento?", "options": ["A) fórum e álbum", "B) jejum e comum", "C) fórum e jejum"]}', 'A', 'EF04LP01', 2),
('acentuacao', 18, 'B', 4, 'VF', false, '{"stem": "QUÓRUM é paroxítona terminada em UM e leva acento."}', 'V', 'EF04LP01', 2),
('acentuacao', 18, 'B', 4, 'CL', false, '{"stem": "A regra: paroxítonas terminadas em UM ___ levam acento."}', 'sempre', 'EF04LP01', 2),
('acentuacao', 18, 'B', 4, 'DS', false, '{"word": "quórum"}', 'quó-rum', 'EF04LP01', 2),
('acentuacao', 18, 'B', 4, 'PG', false, '{"instruction": "Crie 3 frases usando FÓRUM, ÁLBUM e QUÓRUM.", "word_bank": []}', 'Respostas variadas', 'EF04LP01', 2);

-- Níveis 19–24: revisões de alto nível
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('acentuacao', 19, 'A', 1, 'CT', false, '{"text": "O medico atletico leu o album do musico no forum de saude publica.", "error_count": 5}', 'O MÉDICO ATLÉTICO leu o ÁLBUM do MÚSICO no FÓRUM de saúde pública.', 'EF04LP01', 3),
('acentuacao', 19, 'A', 1, 'MC', false, '{"stem": "Qual acento é DIFERENCIAL (para distinguir palavras)?", "options": ["A) MÉDICO", "B) PÔR/POR", "C) FÁCIL"]}', 'B', 'EF07LP01', 2),
('acentuacao', 19, 'A', 1, 'VF', false, '{"stem": "Todas as proparoxítonas levam acento obrigatoriamente."}', 'V', 'EF04LP01', 1),
('acentuacao', 19, 'A', 1, 'RF', false, '{"stem": "Corrija: ATLETICO MEDICO MUSICO PUBLICO"}', 'ATLÉTICO MÉDICO MÚSICO PÚBLICO', 'EF04LP01', 2),
('acentuacao', 19, 'A', 3, 'AS', true, '{"column_a": ["CAFÉ", "FÁCIL", "MÚSICA", "SAÍDA", "TRANQUILO", "PÔR"], "column_b": ["acento diferencial", "perdeu trema", "hiato", "proparoxítona", "paroxítona L", "oxítona E"]}', 'CAFÉ→oxítona E, FÁCIL→paroxítona L, MÚSICA→proparoxítona, SAÍDA→hiato, TRANQUILO→perdeu trema, PÔR→acento diferencial', 'EF07LP01', 3),
('acentuacao', 19, 'A', 3, 'CT', true, '{"text": "Era freqüente que o medico atletico freqüentasse o forum de saude. O heroi usava oculos e chapeu.", "error_count": 6}', 'Era FREQUENTE que o MÉDICO ATLÉTICO frequentasse o FÓRUM de saúde. O HERÓI usava ÓCULOS e CHAPÉU.', 'EF07LP01', 3),
('acentuacao', 19, 'A', 3, 'VF', true, '{"stem": "O Acordo de 2009 manteve o acento diferencial apenas em PÔR/POR e PÔDE/PODE."}', 'V', 'EF07LP01', 3),
('acentuacao', 19, 'A', 4, 'CT', false, '{"text": "O atletico medico recebeu o trofeu de heroi no forum de musica classica. O publico aplaudiu a plateia e a assembleia votou pelo album.", "error_count": 9}', 'O ATLÉTICO MÉDICO recebeu o TROFÉU de HERÓI no FÓRUM de MÚSICA clássica. O PÚBLICO aplaudiu a PLATEIA e a ASSEMBLEIA votou pelo ÁLBUM.', 'EF07LP01', 3),
('acentuacao', 19, 'A', 4, 'MC', false, '{"stem": "Qual é o grupo CORRETO após 2009?", "options": ["A) médico, chapéu, ideia, tranquilo, fórum", "B) medico, chapeu, idéia, tranquïlo, forum", "C) médico, chapéu, idéia, tranquilo, fórum"]}', 'A', 'EF07LP01', 3),
('acentuacao', 19, 'A', 4, 'RF', false, '{"stem": "Corrija tudo: O PUBLICO aplaudiu o ATLETICO HEROI que recebeu o TROFEU e o CHAPEU."}', 'O PÚBLICO aplaudiu o ATLÉTICO HERÓI que recebeu o TROFÉU e o CHAPÉU.', 'EF04LP01', 3),
('acentuacao', 19, 'A', 4, 'VF', false, '{"stem": "IDEIA, PLATEIA e ASSEMBLEIA são escritas sem acento após 2009."}', 'V', 'EF07LP01', 2),
('acentuacao', 19, 'A', 4, 'CL', false, '{"stem": "As 3 mudanças do Acordo 2009: eliminar ___, eliminar acento em ___ de paroxítonas, eliminar alguns ___ diferenciais."}', 'trema / EI e OI / acentos', 'EF07LP01', 3),
('acentuacao', 19, 'A', 4, 'DS', false, '{"word": "patrimônio"}', 'pa-tri-mô-nio', 'EF07LP01', 3),
('acentuacao', 19, 'A', 4, 'PG', false, '{"instruction": "Escreva um texto de 6 frases usando corretamente pelo menos 10 palavras com diferentes regras de acentuação.", "word_bank": ["médico", "café", "fácil", "saída", "herói", "chapéu", "música", "tranquilo", "ideia", "pôr", "fórum"]}', 'Respostas variadas — verificar uso correto das 10 palavras', 'EF07LP01', 3);

-- Síntese dos níveis 20-24 (A e B)
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('acentuacao', 20, 'A', 1, 'CT', false, '{"text": "O nivel de dificuldade do exercicio era consideravel. O medico disse que a saude do atletico heroi estava otima.", "error_count": 7}', 'O NÍVEL de dificuldade do EXERCÍCIO era CONSIDERÁVEL. O MÉDICO disse que a SAÚDE do ATLÉTICO HERÓI estava ÓTIMA.', 'EF04LP01', 3),
('acentuacao', 20, 'A', 1, 'RF', false, '{"stem": "Acertar todos os acentos: MUSICA CLASSICA E OTIMA PARA A SAUDE PUBLICA"}', 'MÚSICA CLÁSSICA É ÓTIMA PARA A SAÚDE PÚBLICA', 'EF04LP01', 2),
('acentuacao', 20, 'A', 1, 'VF', false, '{"stem": "CLÁSSICA, MÚSICA e PÚBLICA são proparoxítonas."}', 'V', 'EF04LP01', 2),
('acentuacao', 20, 'A', 1, 'DS', false, '{"word": "clássica"}', 'clás-si-ca', 'EF04LP01', 2),
('acentuacao', 20, 'A', 3, 'CT', true, '{"text": "A musica classica e considerada otima para o cerebro. O medico atletico confirma essa ideia.", "error_count": 6}', 'A MÚSICA CLÁSSICA é considerada ÓTIMA para o CÉREBRO. O MÉDICO ATLÉTICO confirma essa ideia.', 'EF04LP01', 3),
('acentuacao', 20, 'A', 3, 'AS', true, '{"column_a": ["CLÁSSICA", "ÓTIMA", "MÉDICO", "CÉREBRO", "ATLÉTICO"], "column_b": ["proparoxítona", "proparoxítona", "proparoxítona", "proparoxítona", "proparoxítona"]}', 'Todas são proparoxítonas', 'EF04LP01', 2),
('acentuacao', 20, 'A', 3, 'VF', true, '{"stem": "CÉREBRO, CLÁSSICA, ÓTIMA, MÉDICO e ATLÉTICO são todas proparoxítonas."}', 'V', 'EF04LP01', 2),
('acentuacao', 20, 'A', 4, 'CT', false, '{"text": "A musica classica e otima para o cerebro humano, segundo o medico atletico que pesquisou o assunto. O publico interessado aplaudiu a ideia.", "error_count": 8}', 'A MÚSICA CLÁSSICA é ÓTIMA para o CÉREBRO humano, segundo o MÉDICO ATLÉTICO que pesquisou o assunto. O PÚBLICO interessado aplaudiu a ideia.', 'EF04LP01', 3),
('acentuacao', 20, 'A', 4, 'RF', false, '{"stem": "Corrija: CLASSICA MUSICA E OTIMA PARA O CEREBRO DO ATLETICO MEDICO"}', 'CLÁSSICA MÚSICA É ÓTIMA PARA O CÉREBRO DO ATLÉTICO MÉDICO', 'EF04LP01', 2),
('acentuacao', 20, 'A', 4, 'MC', false, '{"stem": "Quantas proparoxítonas há: ''O médico atlético toca música clássica''?", "options": ["A) 2", "B) 3", "C) 4"]}', 'C', 'EF04LP01', 3),
('acentuacao', 20, 'A', 4, 'VF', false, '{"stem": "PÚBLICO, MÚSICA, CLÁSSICA e MÉDICO são 4 proparoxítonas."}', 'V', 'EF04LP01', 2),
('acentuacao', 20, 'A', 4, 'CL', false, '{"stem": "Proparoxítonas têm acento na ___ sílaba e ___ levam acento gráfico."}', 'antepenúltima / sempre', 'EF04LP01', 2),
('acentuacao', 20, 'A', 4, 'DS', false, '{"word": "cérebro"}', 'cé-re-bro', 'EF04LP01', 2),
('acentuacao', 20, 'A', 4, 'PG', false, '{"instruction": "Escreva um parágrafo com o máximo de proparoxítonas possível (mínimo 5).", "word_bank": ["médico", "música", "clássica", "ótima", "cérebro", "atlético", "público", "científico", "técnico", "matemática"]}', 'Respostas variadas — verificar proparoxítonas corretamente acentuadas', 'EF04LP01', 3);

-- Níveis 21-24 (resumo/consolidação final)
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('acentuacao', 21, 'A', 1, 'CT', false, '{"text": "Era frequente que o medico publico usasse os oculos para ler o forum de saude.", "error_count": 5}', 'Era frequente que o MÉDICO PÚBLICO usasse os ÓCULOS para ler o FÓRUM de saúde.', 'EF07LP01', 3),
('acentuacao', 21, 'A', 1, 'RF', false, '{"stem": "Corrija: SAIDA RAINHA MOINHO BAU"}', 'SAÍDA RAINHA MOINHO BAÚ', 'EF05LP01', 2),
('acentuacao', 21, 'A', 1, 'VF', false, '{"stem": "RAINHA e MOINHO não têm acento; SAÍDA e BAÚ têm acento."}', 'V', 'EF05LP01', 2),
('acentuacao', 21, 'A', 1, 'DS', false, '{"word": "científico"}', 'ci-en-tí-fi-co', 'EF07LP01', 3),
('acentuacao', 21, 'A', 3, 'CT', true, '{"text": "O heroi tranquilo recebeu o trofeu na plateia. O medico aplaudiu com o chapeu na mao.", "error_count": 5}', 'O HERÓI tranquilo recebeu o TROFÉU na PLATEIA. O MÉDICO aplaudiu com o CHAPÉU na mão.', 'EF07LP01', 3),
('acentuacao', 21, 'A', 3, 'AS', true, '{"column_a": ["SAÍDA", "RAINHA", "BAÚ", "MOINHO", "FAÍSCA"], "column_b": ["hiato sem acento (NH)", "hiato com acento (I sozinho)", "hiato com acento (U)", "hiato sem acento (NH)", "hiato com acento (I)"]}', 'SAÍDA→I sozinho, RAINHA→NH, BAÚ→U, MOINHO→NH, FAÍSCA→I', 'EF05LP01', 3),
('acentuacao', 21, 'A', 3, 'VF', true, '{"stem": "I e U formam hiato acentuado quando estão sozinhos na sílaba, exceto antes de NH."}', 'V', 'EF05LP01', 2),
('acentuacao', 21, 'A', 4, 'CT', false, '{"text": "A saida da rainha pelo moinho foi rapida. O medico tranquilo usou a faísca de ideias para criar o forum publico.", "error_count": 7}', 'A SAÍDA da rainha pelo moinho foi RÁPIDA. O MÉDICO tranquilo usou a faísca de ideias para criar o FÓRUM PÚBLICO.', 'EF07LP01', 3),
('acentuacao', 21, 'A', 4, 'RF', false, '{"stem": "Corrija TUDO: SAIDA RAINHA MOINHO BAU FAÍSCA MEDICO FORUM PUBLICO RAPIDO"}', 'SAÍDA RAINHA MOINHO BAÚ FAÍSCA MÉDICO FÓRUM PÚBLICO RÁPIDO', 'EF04LP01', 3),
('acentuacao', 21, 'A', 4, 'MC', false, '{"stem": "Qual grupo mistura corretamente hiatos COM e SEM acento?", "options": ["A) saída, rainha, baú, moinho", "B) saída, raínha, baú, moínho", "C) saida, rainha, bau, moinho"]}', 'A', 'EF05LP01', 3),
('acentuacao', 21, 'A', 4, 'VF', false, '{"stem": "CAMPAINHA e BAINHA perdem o acento do I por causa do NH seguinte."}', 'V', 'EF05LP01', 2),
('acentuacao', 21, 'A', 4, 'CL', false, '{"stem": "A regra do hiato: I e U tônicos recebem acento, EXCETO quando vêm antes de ___."}', 'NH', 'EF05LP01', 2),
('acentuacao', 21, 'A', 4, 'DS', false, '{"word": "faísca"}', 'fa-ís-ca', 'EF05LP01', 2),
('acentuacao', 21, 'A', 4, 'PG', false, '{"instruction": "Escreva 3 pares de palavras mostrando a diferença: hiato COM acento × hiato SEM acento (regra NH).", "word_bank": []}', 'saída × rainha | baú × moinho | faísca × campainha', 'EF05LP01', 3);

-- Níveis 22-24 (série A e B, revisão final do módulo)
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('acentuacao', 22, 'A', 1, 'CT', false, '{"text": "O publico atletico e medico aplaudiu o musico classico. O heroi recebeu trofeu e chapeu.", "error_count": 7}', 'O PÚBLICO ATLÉTICO e MÉDICO aplaudiu o MÚSICO CLÁSSICO. O HERÓI recebeu TROFÉU e CHAPÉU.', 'EF04LP01', 3),
('acentuacao', 22, 'A', 1, 'RF', false, '{"stem": "Corrija: FREQUENTE TRANQUILO IDEIA PLATEIA HEROI CHAPEU FORUM ALBUM"}', 'FREQUENTE TRANQUILO IDEIA PLATEIA HERÓI CHAPÉU FÓRUM ÁLBUM', 'EF07LP01', 3),
('acentuacao', 22, 'A', 1, 'VF', false, '{"stem": "Após 2009: FREQUENTE (sem trema), IDEIA (sem acento), HERÓI (com acento), CHAPÉU (com acento)."}', 'V', 'EF07LP01', 2),
('acentuacao', 22, 'A', 1, 'DS', false, '{"word": "elétrico"}', 'e-lé-tri-co', 'EF04LP01', 3),
('acentuacao', 22, 'A', 3, 'CT', true, '{"text": "Era freqüente que o medico atletico e o musico classico frequentassem o forum de saude publica com seus oculos.", "error_count": 8}', 'Era FREQUENTE que o MÉDICO ATLÉTICO e o MÚSICO CLÁSSICO frequentassem o FÓRUM de SAÚDE PÚBLICA com seus ÓCULOS.', 'EF07LP01', 3),
('acentuacao', 22, 'A', 3, 'AS', true, '{"column_a": ["FREQUENTE", "MÉDICO", "HERÓI", "IDEIA", "FÓRUM", "SAÍDA"], "column_b": ["hiato I", "paroxítona UM", "paroxítona EI perdeu acento", "ditongo aberto OI oxítona", "proparoxítona", "perdeu trema"]}', 'FREQUENTE→perdeu trema, MÉDICO→proparoxítona, HERÓI→ditongo OI oxítona, IDEIA→EI perdeu acento, FÓRUM→paroxítona UM, SAÍDA→hiato I', 'EF07LP01', 3),
('acentuacao', 22, 'A', 3, 'VF', true, '{"stem": "O módulo de acentuação cobre: proparoxítonas, oxítonas, paroxítonas, hiatos, ditongos, trema e acentos diferenciais."}', 'V', 'EF07LP01', 2),
('acentuacao', 22, 'A', 4, 'CT', false, '{"text": "A musica classica e otima para o cerebro. O medico atletico, freqüente no forum, usou os oculos para ler o album de saude publica. O heroi recebeu o trofeu e o chapeu de campeao.", "error_count": 12}', 'A MÚSICA CLÁSSICA é ÓTIMA para o CÉREBRO. O MÉDICO ATLÉTICO, FREQUENTE no FÓRUM, usou os ÓCULOS para ler o ÁLBUM de SAÚDE PÚBLICA. O HERÓI recebeu o TROFÉU e o CHAPÉU de CAMPEÃO.', 'EF07LP01', 3),
('acentuacao', 22, 'A', 4, 'MC', false, '{"stem": "Qual é o conjunto 100% correto após 2009?", "options": ["A) médico, frequente, herói, ideia, chapéu, fórum, saída, tranquilo", "B) médico, freqüente, heroí, idéia, chapéu, forum, saída, tranquïlo", "C) medico, frequente, heroi, ideia, chapeu, forum, saida, tranquilo"]}', 'A', 'EF07LP01', 3),
('acentuacao', 22, 'A', 4, 'RF', false, '{"stem": "Corrija: O ATLETICO PUBLICO FREQUENTE no FORUM de MUSICA CLASSICA aplaudiu o HEROI que recebeu o TROFEU de CAMPEAO."}', 'O ATLÉTICO PÚBLICO FREQUENTE no FÓRUM de MÚSICA CLÁSSICA aplaudiu o HERÓI que recebeu o TROFÉU de CAMPEÃO.', 'EF07LP01', 3),
('acentuacao', 22, 'A', 4, 'VF', false, '{"stem": "PÔR (verbo), PÔDE (pretérito), CHAPÉU e HERÓI mantêm acentos após 2009."}', 'V', 'EF07LP01', 2),
('acentuacao', 22, 'A', 4, 'CL', false, '{"stem": "No Acordo de 2009, o trema foi eliminado em palavras de origem ___; ditongos ___ e ___ perderam acento em paroxítonas."}', 'portuguesa / EI / OI', 'EF07LP01', 3),
('acentuacao', 22, 'A', 4, 'DS', false, '{"word": "científico"}', 'ci-en-tí-fi-co', 'EF07LP01', 3),
('acentuacao', 22, 'A', 4, 'PG', false, '{"instruction": "Escreva um texto-dissertação de 6–8 frases sobre acentuação em português, usando pelo menos 12 palavras com diferentes regras de acento.", "word_bank": ["médico", "música", "herói", "chapéu", "saída", "rainha", "frequente", "ideia", "fórum", "tranquilo", "pôr", "óculos"]}', 'Respostas variadas — verificar uso e acentuação de pelo menos 12 palavras das categorias estudadas', 'EF07LP01', 3);

-- Níveis 23 e 24 (séries A e B — revisão final acumulativa)
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('acentuacao', 23, 'A', 1, 'CT', false, '{"text": "O medico freqüente usou oculos para ler o forum. O heroi recebeu trofeu e chapeu.", "error_count": 6}', 'O MÉDICO frequente usou ÓCULOS para ler o FÓRUM. O HERÓI recebeu TROFÉU e CHAPÉU.', 'EF07LP01', 3),
('acentuacao', 23, 'A', 3, 'CT', true, '{"text": "A saida da rainha pelo moinho foi rapida. O atleta publico e medico usou a ideia do forum.", "error_count": 7}', 'A SAÍDA da rainha pelo moinho foi RÁPIDA. O ATLETA PÚBLICO e MÉDICO usou a ideia do FÓRUM.', 'EF07LP01', 3),
('acentuacao', 23, 'A', 4, 'CT', false, '{"text": "O publico atletico e medico aplaudiu o musico classico. O heroi freqüente recebeu trofeu, chapeu e album no forum de saude publica. A saida do forum ocorreu pelo moinho.", "error_count": 12}', 'O PÚBLICO ATLÉTICO e MÉDICO aplaudiu o MÚSICO CLÁSSICO. O HERÓI frequente recebeu TROFÉU, CHAPÉU e ÁLBUM no FÓRUM de SAÚDE PÚBLICA. A SAÍDA do FÓRUM ocorreu pelo moinho.', 'EF07LP01', 3),
('acentuacao', 23, 'A', 4, 'PG', false, '{"instruction": "Redija um texto de revisão completa sobre acentuação usando no mínimo 15 palavras de diferentes categorias estudadas.", "word_bank": []}', 'Respostas variadas — revisar todas as categorias: proparoxítonas, oxítonas, paroxítonas, hiatos, ditongos, trema, acento diferencial', 'EF07LP01', 3),
('acentuacao', 24, 'A', 1, 'CT', false, '{"text": "O atletico medico freqüente usou oculos para o forum de musica classica.", "error_count": 6}', 'O ATLÉTICO MÉDICO frequente usou ÓCULOS para o FÓRUM de MÚSICA CLÁSSICA.', 'EF07LP01', 3),
('acentuacao', 24, 'A', 3, 'CT', true, '{"text": "A saida da rainha e do heroi pelo moinho foi publica e classica.", "error_count": 5}', 'A SAÍDA da rainha e do HERÓI pelo moinho foi PÚBLICA e CLÁSSICA.', 'EF07LP01', 3),
('acentuacao', 24, 'A', 4, 'CT', false, '{"text": "Era freqüente que o medico atletico e o musico classico frequentassem o forum de saude publica. O heroi usava oculos, chapeu e recebia trofeus. A saida era sempre pelo moinho da rainha.", "error_count": 12}', 'Era FREQUENTE que o MÉDICO ATLÉTICO e o MÚSICO CLÁSSICO frequentassem o FÓRUM de SAÚDE PÚBLICA. O HERÓI usava ÓCULOS, CHAPÉU e recebia TROFÉUS. A SAÍDA era sempre pelo moinho da rainha.', 'EF07LP01', 3),
('acentuacao', 24, 'A', 4, 'PG', false, '{"instruction": "DESAFIO FINAL: Escreva um texto-ensaio de 8–10 frases sobre qualquer tema, incorporando corretamente: 3 proparoxítonas, 3 oxítonas com acento, 3 paroxítonas com acento, 2 hiatos, 1 ditongo aberto, 1 palavra sem trema (Acordo 2009), 1 acento diferencial.", "word_bank": []}', 'Respostas variadas — verificar todas as categorias solicitadas', 'EF07LP01', 3);

-- Séries B dos níveis 19–24 (consolidação)
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('acentuacao', 19, 'B', 1, 'CT', false, '{"text": "O forum atletico e medico discutiu o album de musica classica e publica.", "error_count": 6}', 'O FÓRUM ATLÉTICO e MÉDICO discutiu o ÁLBUM de MÚSICA CLÁSSICA e PÚBLICA.', 'EF07LP01', 3),
('acentuacao', 19, 'B', 3, 'CT', true, '{"text": "O heroi freqüente recebeu o trofeu de campeao. O medico usou os oculos.", "error_count": 5}', 'O HERÓI frequente recebeu o TROFÉU de CAMPEÃO. O MÉDICO usou os ÓCULOS.', 'EF07LP01', 3),
('acentuacao', 19, 'B', 4, 'CT', false, '{"text": "Era freqüente que o atletico heroi e o musico classico frequentassem o forum de saude publica. A saida era pelo moinho da rainha.", "error_count": 9}', 'Era FREQUENTE que o ATLÉTICO HERÓI e o MÚSICO CLÁSSICO frequentassem o FÓRUM de SAÚDE PÚBLICA. A SAÍDA era pelo moinho da rainha.', 'EF07LP01', 3),
('acentuacao', 19, 'B', 4, 'PG', false, '{"instruction": "Escreva 5 frases usando corretamente: PÔR/POR, PÔDE/PODE, HERÓI, CHAPÉU, TRANQUILO.", "word_bank": []}', 'Respostas variadas', 'EF07LP01', 3),
('acentuacao', 20, 'B', 1, 'CT', false, '{"text": "O publico atletico aplaudiu a musica classica. O medico usou oculos para ler o forum.", "error_count": 6}', 'O PÚBLICO ATLÉTICO aplaudiu a MÚSICA CLÁSSICA. O MÉDICO usou ÓCULOS para ler o FÓRUM.', 'EF04LP01', 3),
('acentuacao', 20, 'B', 3, 'CT', true, '{"text": "A saida da rainha foi publica e otima. O heroi atletico e classico recebeu o trofeu.", "error_count": 6}', 'A SAÍDA da rainha foi PÚBLICA e ÓTIMA. O HERÓI ATLÉTICO e CLÁSSICO recebeu o TROFÉU.', 'EF07LP01', 3),
('acentuacao', 20, 'B', 4, 'CT', false, '{"text": "O medico atletico freqüente usou oculos para ler o forum de musica classica e otima. O heroi publico recebeu trofeu, chapeu e album.", "error_count": 11}', 'O MÉDICO ATLÉTICO frequente usou ÓCULOS para ler o FÓRUM de MÚSICA CLÁSSICA e ÓTIMA. O HERÓI PÚBLICO recebeu TROFÉU, CHAPÉU e ÁLBUM.', 'EF07LP01', 3),
('acentuacao', 20, 'B', 4, 'PG', false, '{"instruction": "Texto de revisão: use 10 palavras com regras diferentes de acentuação em 5–6 frases coerentes.", "word_bank": []}', 'Respostas variadas', 'EF07LP01', 3),
('acentuacao', 21, 'B', 1, 'CT', false, '{"text": "O forum publico e atletico discutiu a ideia do heroi sobre saude.", "error_count": 5}', 'O FÓRUM PÚBLICO e ATLÉTICO discutiu a ideia do HERÓI sobre SAÚDE.', 'EF07LP01', 3),
('acentuacao', 21, 'B', 3, 'CT', true, '{"text": "A saida da rainha e do heroi foi pelo moinho. O medico atletico usou oculos.", "error_count": 5}', 'A SAÍDA da rainha e do HERÓI foi pelo moinho. O MÉDICO ATLÉTICO usou ÓCULOS.', 'EF07LP01', 3),
('acentuacao', 21, 'B', 4, 'CT', false, '{"text": "Era freqüente que o medico atletico e o musico classico frequentassem o forum de saude publica. A saida era pelo moinho da rainha. O heroi recebeu trofeu e chapeu.", "error_count": 11}', 'Era FREQUENTE que o MÉDICO ATLÉTICO e o MÚSICO CLÁSSICO frequentassem o FÓRUM de SAÚDE PÚBLICA. A SAÍDA era pelo moinho da rainha. O HERÓI recebeu TROFÉU e CHAPÉU.', 'EF07LP01', 3),
('acentuacao', 21, 'B', 4, 'PG', false, '{"instruction": "Crie um diálogo de 6 falas usando pelo menos 10 palavras com acentuação estudada.", "word_bank": []}', 'Respostas variadas', 'EF07LP01', 3),
('acentuacao', 22, 'B', 1, 'CT', false, '{"text": "O atleta freqüente usou oculos para o forum. O heroi recebeu trofeu.", "error_count": 4}', 'O ATLETA frequente usou ÓCULOS para o FÓRUM. O HERÓI recebeu TROFÉU.', 'EF07LP01', 3),
('acentuacao', 22, 'B', 3, 'CT', true, '{"text": "O medico publico freqüente usou oculos de titanio para ler o forum de musica.", "error_count": 5}', 'O MÉDICO PÚBLICO frequente usou ÓCULOS de titânio para ler o FÓRUM de música.', 'EF07LP01', 3),
('acentuacao', 22, 'B', 4, 'CT', false, '{"text": "Era freqüente que o atletico medico musico classico publico frequentassem o forum de saude. O heroi usava oculos chapeu e recebia trofeus e albums.", "error_count": 12}', 'Era FREQUENTE que o ATLÉTICO MÉDICO MÚSICO CLÁSSICO PÚBLICO frequentassem o FÓRUM de SAÚDE. O HERÓI usava ÓCULOS, CHAPÉU e recebia TROFÉUS e ÁLBUNS.', 'EF07LP01', 3),
('acentuacao', 22, 'B', 4, 'PG', false, '{"instruction": "DESAFIO: Reescreva o texto abaixo corrigindo todos os erros de acentuação e justifique cada correção: ''O medico atletico freqüente usou oculos para o forum de musica classica. O heroi recebeu trofeu e chapeu de campeao. A saida foi pelo moinho da rainha.''", "word_bank": []}', 'Texto correto: ''O MÉDICO (proparoxítona) ATLÉTICO (proparoxítona) frequente (perdeu trema) usou ÓCULOS (proparoxítona) para o FÓRUM (paroxítona UM) de MÚSICA (proparoxítona) CLÁSSICA (proparoxítona). O HERÓI (oxítona OI) recebeu TROFÉU (oxítona ÉU) e CHAPÉU (oxítona ÉU) de CAMPEÃO (oxítona ÃO). A SAÍDA (hiato I) foi pelo moinho (NH - sem acento) da rainha (NH - sem acento).''', 'EF07LP01', 3),
('acentuacao', 23, 'B', 1, 'CT', false, '{"text": "O heroi atletico freqüente usou oculos no forum de musica.", "error_count": 5}', 'O HERÓI ATLÉTICO frequente usou ÓCULOS no FÓRUM de MÚSICA.', 'EF07LP01', 3),
('acentuacao', 23, 'B', 3, 'CT', true, '{"text": "A saida da rainha pelo moinho era publica e classica.", "error_count": 4}', 'A SAÍDA da rainha pelo moinho era PÚBLICA e CLÁSSICA.', 'EF07LP01', 3),
('acentuacao', 23, 'B', 4, 'CT', false, '{"text": "O publico atletico e medico freqüente aplaudiu o musico classico. O heroi recebeu trofeu chapeu e album no forum de saude publica. A saida foi pelo moinho da rainha.", "error_count": 12}', 'O PÚBLICO ATLÉTICO e MÉDICO frequente aplaudiu o MÚSICO CLÁSSICO. O HERÓI recebeu TROFÉU, CHAPÉU e ÁLBUM no FÓRUM de SAÚDE PÚBLICA. A SAÍDA foi pelo moinho da rainha.', 'EF07LP01', 3),
('acentuacao', 23, 'B', 4, 'PG', false, '{"instruction": "Produção final: Escreva uma redação de 8–10 frases aplicando TODAS as regras de acentuação estudadas.", "word_bank": []}', 'Respostas variadas — avaliação aberta', 'EF07LP01', 3),
('acentuacao', 24, 'B', 1, 'CT', false, '{"text": "O atletico medico freqüente usou oculos para o forum de musica classica.", "error_count": 6}', 'O ATLÉTICO MÉDICO frequente usou ÓCULOS para o FÓRUM de MÚSICA CLÁSSICA.', 'EF07LP01', 3),
('acentuacao', 24, 'B', 3, 'CT', true, '{"text": "A saida publica e classica do heroi atletico ocorreu pelo moinho da rainha.", "error_count": 4}', 'A SAÍDA PÚBLICA e CLÁSSICA do HERÓI ATLÉTICO ocorreu pelo moinho da rainha.', 'EF07LP01', 3),
('acentuacao', 24, 'B', 4, 'CT', false, '{"text": "Era freqüente que o atletico medico e o musico classico publico frequentassem o forum de saude. O heroi usava oculos chapeu e album. A saida era pelo moinho da rainha. Ele pode ir ontem, mas hoje nao pode.", "error_count": 13}', 'Era FREQUENTE que o ATLÉTICO MÉDICO e o MÚSICO CLÁSSICO PÚBLICO frequentassem o FÓRUM de SAÚDE. O HERÓI usava ÓCULOS, CHAPÉU e ÁLBUM. A SAÍDA era pelo moinho da rainha. Ele PÔDE ir ontem, mas hoje não PODE.', 'EF07LP01', 3),
('acentuacao', 24, 'B', 4, 'PG', false, '{"instruction": "PROVA FINAL DO MÓDULO: Escreva um texto completo de 10–12 frases sobre qualquer tema, incorporando todas as regras de acentuação. Depois, liste abaixo de cada palavra acentuada a regra que a justifica.", "word_bank": []}', 'Respostas variadas — avaliação completa de todas as regras do módulo', 'EF07LP01', 3);
