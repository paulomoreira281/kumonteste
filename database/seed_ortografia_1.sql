-- ============================================================
-- GeraFicha — Seed: Módulo Ortografia (Níveis 25–36)
-- Séries A e B | Blocos 1, 3 e 4
-- ============================================================

-- ── NÍVEL 25-A — S ou Z ──────────────────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 25, 'A', 1, 'MC', false, '{"stem": "Qual é a grafia correta?", "options": ["A) beleza", "B) belesa", "C) belleza"]}', 'A', 'EF04LP02', 1),
('ortografia', 25, 'A', 1, 'VF', false, '{"stem": "Palavras com sufixo -EZA derivadas de adjetivos usam Z: beleza, riqueza, pobreza."}', 'V', 'EF04LP02', 1),
('ortografia', 25, 'A', 1, 'CL', false, '{"stem": "RIQUEZA usa Z porque deriva do adjetivo ___."}', 'rico', 'EF04LP02', 1),
('ortografia', 25, 'A', 1, 'RF', false, '{"stem": "Corrija: A belesa da naturesa é incrivel."}', 'A BELEZA da NATUREZA é incrível.', 'EF04LP02', 1),
('ortografia', 25, 'A', 3, 'MC', true, '{"stem": "Verbos terminados em -ISAR ou -IZAR: como saber qual usar?", "options": ["A) Sempre IZAR", "B) Se o substantivo/adjetivo base termina em S, usa ISAR; senão, usa IZAR", "C) Sempre ISAR"]}', 'B', 'EF04LP02', 2),
('ortografia', 25, 'A', 3, 'VF', true, '{"stem": "PESQUISA → PESQUISAR (com S, pois a base tem S). ANALISAR: base ANÁLISE tem S."}', 'V', 'EF04LP02', 2),
('ortografia', 25, 'A', 3, 'CL', true, '{"stem": "ORGANIZAR usa Z porque a base ORGANI___ não termina em S."}', 'ZAR', 'EF04LP02', 2),
('ortografia', 25, 'A', 4, 'RF', false, '{"stem": "Corrija: A belesa da naturesa é incrivel. Vou analisar e organisar os dados."}', 'A BELEZA da NATUREZA é incrível. Vou ANALISAR e ORGANIZAR os dados.', 'EF04LP02', 2),
('ortografia', 25, 'A', 4, 'MC', false, '{"stem": "Qual grafia está CORRETA?", "options": ["A) riquesa, pobresa", "B) riqueza, pobreza", "C) riqueza, pobresa"]}', 'B', 'EF04LP02', 1),
('ortografia', 25, 'A', 4, 'CL', false, '{"stem": "CERTEZA usa Z porque deriva do adjetivo ___."}', 'certo', 'EF04LP02', 1),
('ortografia', 25, 'A', 4, 'VF', false, '{"stem": "PESQUISAR usa S porque a base PESQUISA já tem S."}', 'V', 'EF04LP02', 2),
('ortografia', 25, 'A', 4, 'MC', false, '{"stem": "Qual verbo usa S?", "options": ["A) organizar", "B) analisar", "C) realizar"]}', 'B', 'EF04LP02', 2),
('ortografia', 25, 'A', 4, 'RF', false, '{"stem": "Corrija: A pesquisa mostra a beleza e a riquesa do projeto."}', 'A pesquisa mostra a BELEZA e a RIQUEZA do projeto.', 'EF04LP02', 2),
('ortografia', 25, 'A', 4, 'PG', false, '{"instruction": "Escreva 4 palavras com -EZA (sufixo) e 2 verbos com -IZAR.", "word_bank": []}', 'EZA: beleza, riqueza, pobreza, certeza | IZAR: organizar, realizar, fertilizar', 'EF04LP02', 2);

-- ── NÍVEL 25-B — S ou Z ──────────────────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 25, 'B', 1, 'MC', false, '{"stem": "TRISTEZA usa Z ou S?", "options": ["A) S — tristesa", "B) Z — tristeza", "C) Depende"]}', 'B', 'EF04LP02', 1),
('ortografia', 25, 'B', 1, 'VF', false, '{"stem": "LEVEZA, FIRMEZA e DELICADEZA usam Z por serem derivadas de adjetivos."}', 'V', 'EF04LP02', 1),
('ortografia', 25, 'B', 1, 'RF', false, '{"stem": "Corrija: A tristesa e a dureza da vida real."}', 'A TRISTEZA e a DUREZA da vida real.', 'EF04LP02', 1),
('ortografia', 25, 'B', 1, 'CL', false, '{"stem": "DUREZA deriva do adjetivo ___ e usa Z."}', 'duro', 'EF04LP02', 1),
('ortografia', 25, 'B', 3, 'MC', true, '{"stem": "FISCALIZAR usa Z porque:", "options": ["A) A base FISCAL não termina em S", "B) A base FISCAL termina em S", "C) Todos os verbos usam Z"]}', 'A', 'EF04LP02', 2),
('ortografia', 25, 'B', 3, 'RF', true, '{"stem": "Corrija: O governo vai fiscalisar e organisar o sistema."}', 'O governo vai FISCALIZAR e ORGANIZAR o sistema.', 'EF04LP02', 2),
('ortografia', 25, 'B', 3, 'VF', true, '{"stem": "IMPROVIZAR usa Z porque a base IMPROVIS não é uma palavra com S final."}', 'V', 'EF04LP02', 3),
('ortografia', 25, 'B', 4, 'CT', false, '{"text": "A belesa e a tristesa da vida mostram a dureza e a grandesa do ser humano.", "error_count": 4}', 'A BELEZA e a TRISTEZA da vida mostram a DUREZA e a GRANDEZA do ser humano.', 'EF04LP02', 2),
('ortografia', 25, 'B', 4, 'MC', false, '{"stem": "Qual verbo usa S?", "options": ["A) improvizar", "B) fertilizar", "C) analisar"]}', 'C', 'EF04LP02', 2),
('ortografia', 25, 'B', 4, 'RF', false, '{"stem": "Corrija: Preciso organisar, analisar e fiscalisar os dados com precisão."}', 'Preciso ORGANIZAR, analisar e FISCALIZAR os dados com precisão.', 'EF04LP02', 2),
('ortografia', 25, 'B', 4, 'VF', false, '{"stem": "GRANDEZA e DELICADEZA usam Z por serem derivadas de adjetivos."}', 'V', 'EF04LP02', 1),
('ortografia', 25, 'B', 4, 'CL', false, '{"stem": "SUAVIZAR usa Z porque a base SUAVE não termina em ___."}', 'S', 'EF04LP02', 2),
('ortografia', 25, 'B', 4, 'DS', false, '{"word": "delicadeza"}', 'de-li-ca-de-za', 'EF04LP02', 2),
('ortografia', 25, 'B', 4, 'PG', false, '{"instruction": "Escreva um parágrafo usando: beleza, tristeza, grandeza, analisar, organizar, fiscalizar.", "word_bank": []}', 'Respostas variadas', 'EF04LP02', 2);

-- ── NÍVEL 26-A — SS, S, Ç, C ─────────────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 26, 'A', 1, 'MC', false, '{"stem": "Qual usa Ç?", "options": ["A) sidade", "B) cidade", "C) cidae"]}', 'B', 'EF04LP02', 1),
('ortografia', 26, 'A', 1, 'VF', false, '{"stem": "O Ç aparece antes de A, O, U para representar o som de S."}', 'V', 'EF04LP02', 1),
('ortografia', 26, 'A', 1, 'RF', false, '{"stem": "Corrija: O garço trouxe a sopa para a mesa."}', 'O GARÇOM trouxe a sopa para a mesa.', 'EF04LP02', 1),
('ortografia', 26, 'A', 1, 'CL', false, '{"stem": "Ç aparece antes de ___, ___ e ___."}', 'A, O, U', 'EF04LP02', 1),
('ortografia', 26, 'A', 3, 'MC', true, '{"stem": "SS aparece entre:", "options": ["A) consoante e vogal", "B) duas vogais", "C) duas consoantes"]}', 'B', 'EF04LP02', 2),
('ortografia', 26, 'A', 3, 'VF', true, '{"stem": "MASSA, PASSO e OSSO têm SS entre duas vogais."}', 'V', 'EF04LP02', 1),
('ortografia', 26, 'A', 3, 'CL', true, '{"stem": "PASSAGEM usa SS porque está entre duas ___."}', 'vogais', 'EF04LP02', 1),
('ortografia', 26, 'A', 4, 'RF', false, '{"stem": "Corrija: A nasão precisa de atenção especial."}', 'A NAÇÃO precisa de atenção especial.', 'EF04LP02', 1),
('ortografia', 26, 'A', 4, 'MC', false, '{"stem": "Qual está CORRETA?", "options": ["A) pesado, passagem, caçador", "B) pesado, passajem, casador", "C) peçado, passagem, caçador"]}', 'A', 'EF04LP02', 2),
('ortografia', 26, 'A', 4, 'CL', false, '{"stem": "CAÇADOR usa Ç porque o som de S vem antes de ___."}', 'A', 'EF04LP02', 1),
('ortografia', 26, 'A', 4, 'VF', false, '{"stem": "PROCESSO usa SS entre duas vogais."}', 'V', 'EF04LP02', 2),
('ortografia', 26, 'A', 4, 'CT', false, '{"text": "A nasão passou por um prosesso difisil de transsformação.", "error_count": 4}', 'A NAÇÃO passou por um PROCESSO difícil de TRANSFORMAÇÃO.', 'EF04LP02', 2),
('ortografia', 26, 'A', 4, 'DS', false, '{"word": "caçador"}', 'ca-ça-dor', 'EF04LP02', 1),
('ortografia', 26, 'A', 4, 'PG', false, '{"instruction": "Escreva 3 palavras com SS, 3 com Ç e 3 com S simples (som de S).", "word_bank": []}', 'SS: massa, passo, processo | Ç: caçador, nação, almoço | S: casa, mesa, piso', 'EF04LP02', 2);

-- ── NÍVEL 26-B — SS, S, Ç, C ─────────────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 26, 'B', 1, 'MC', false, '{"stem": "ALMOÇO usa Ç porque:", "options": ["A) vem antes de O", "B) é verbo", "C) tem dois ss"]}', 'A', 'EF04LP02', 1),
('ortografia', 26, 'B', 1, 'VF', false, '{"stem": "ROSCA, MOSCA e FRESCA usam SC sem valor fonético separado."}', 'V', 'EF04LP02', 2),
('ortografia', 26, 'B', 1, 'RF', false, '{"stem": "Corrija: O almoço foi serrvido na terrasça da casa."}', 'O almoço foi servido na TERRAÇA da casa.', 'EF04LP02', 2),
('ortografia', 26, 'B', 1, 'CL', false, '{"stem": "ACESSO usa SS porque está entre duas ___."}', 'vogais', 'EF04LP02', 1),
('ortografia', 26, 'B', 3, 'MC', true, '{"stem": "Qual par usa as grafias corretas?", "options": ["A) processo, naçao", "B) prosesso, nação", "C) processo, nação"]}', 'C', 'EF04LP02', 2),
('ortografia', 26, 'B', 3, 'RF', true, '{"stem": "Corrija: O prosesso de seleção da nasão brasileira."}', 'O PROCESSO de SELEÇÃO da NAÇÃO brasileira.', 'EF04LP02', 2),
('ortografia', 26, 'B', 3, 'VF', true, '{"stem": "ACESSO, PROCESSO e EXCESSO têm SS entre vogais."}', 'V', 'EF04LP02', 2),
('ortografia', 26, 'B', 4, 'CT', false, '{"text": "O prosesso de selesão causou diskuçao na nasão. O acsesso foi negado.", "error_count": 5}', 'O PROCESSO de SELEÇÃO causou DISCUSSÃO na NAÇÃO. O ACESSO foi negado.', 'EF04LP02', 3),
('ortografia', 26, 'B', 4, 'MC', false, '{"stem": "Qual está TODO correto?", "options": ["A) acesso, processo, nação, caçador", "B) acsesso, prosesso, nasão, caçador", "C) acesso, processo, nação, cazador"]}', 'A', 'EF04LP02', 2),
('ortografia', 26, 'B', 4, 'RF', false, '{"stem": "Corrija: NASÃO, PROSESSO, ACSESSO, DISCUSSÃO (correto?)"}', 'NAÇÃO, PROCESSO, ACESSO, DISCUSSÃO', 'EF04LP02', 2),
('ortografia', 26, 'B', 4, 'VF', false, '{"stem": "CAÇADOR (Ç antes de A) e PROCESSO (SS entre vogais) estão corretos."}', 'V', 'EF04LP02', 2),
('ortografia', 26, 'B', 4, 'CL', false, '{"stem": "AÇÃO usa Ç; ACESSO usa SS; SELEÇÃO usa ___."}', 'Ç', 'EF04LP02', 2),
('ortografia', 26, 'B', 4, 'DS', false, '{"word": "discussão"}', 'dis-cus-são', 'EF04LP02', 2),
('ortografia', 26, 'B', 4, 'PG', false, '{"instruction": "Escreva uma frase usando: processo, nação, acesso, caçador.", "word_bank": []}', 'Respostas variadas', 'EF04LP02', 2);

-- ── NÍVEL 27-A — G ou J ──────────────────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 27, 'A', 1, 'MC', false, '{"stem": "GENTE usa G ou J?", "options": ["A) J — jente", "B) G — gente", "C) Ambos"]}', 'B', 'EF04LP02', 1),
('ortografia', 27, 'A', 1, 'VF', false, '{"stem": "G antes de E e I tem som de J: gente, girafa."}', 'V', 'EF04LP02', 1),
('ortografia', 27, 'A', 1, 'RF', false, '{"stem": "Corrija: A jente foi ver a jirafa no jardim."}', 'A GENTE foi ver a GIRAFA no jardim.', 'EF04LP02', 1),
('ortografia', 27, 'A', 1, 'CL', false, '{"stem": "G antes de E e I tem som de ___; J tem som de J antes de qualquer vogal."}', 'J', 'EF04LP02', 1),
('ortografia', 27, 'A', 3, 'MC', true, '{"stem": "Palavras de origem árabe ou africana geralmente usam:", "options": ["A) G", "B) J", "C) Ambos"]}', 'B', 'EF04LP02', 2),
('ortografia', 27, 'A', 3, 'VF', true, '{"stem": "JEITO, HOJE e JANELA usam J (não G)."}', 'V', 'EF04LP02', 1),
('ortografia', 27, 'A', 3, 'CL', true, '{"stem": "VIAGEM usa G; GARAGEM usa G; mas LAJE usa ___."}', 'J', 'EF04LP02', 2),
('ortografia', 27, 'A', 4, 'RF', false, '{"stem": "Corrija: A jente do jardim cuida das jirafa com jentileza."}', 'A GENTE do JARDIM cuida das GIRAFAS com GENTILEZA.', 'EF04LP02', 2),
('ortografia', 27, 'A', 4, 'MC', false, '{"stem": "Qual par usa G e J corretamente?", "options": ["A) gente e jeito", "B) jente e geito", "C) gente e geito"]}', 'A', 'EF04LP02', 1),
('ortografia', 27, 'A', 4, 'CL', false, '{"stem": "VIAGEM termina em GEM; GARAGEM termina em GEM. Mas LAJE termina em ___."}', 'JE', 'EF04LP02', 2),
('ortografia', 27, 'A', 4, 'VF', false, '{"stem": "HOJE, JEITO e JANELA usam J mesmo antes de vogais diferentes de E e I."}', 'V', 'EF04LP02', 2),
('ortografia', 27, 'A', 4, 'CT', false, '{"text": "A jente do jardim cuida das jirafa e das ajes com jentileza e coragem.", "error_count": 5}', 'A GENTE do JARDIM cuida das GIRAFAS e das AVES com GENTILEZA e coragem.', 'EF04LP02', 2),
('ortografia', 27, 'A', 4, 'DS', false, '{"word": "gentileza"}', 'gen-ti-le-za', 'EF04LP02', 2),
('ortografia', 27, 'A', 4, 'PG', false, '{"instruction": "Escreva 4 palavras com G (som de J) e 4 palavras com J.", "word_bank": []}', 'G: gente, girafa, gênero, agente | J: jeito, hoje, janela, jardim', 'EF04LP02', 2);

-- ── NÍVEL 27-B — G ou J ──────────────────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 27, 'B', 1, 'MC', false, '{"stem": "JANELA usa J ou G?", "options": ["A) G — ganela", "B) J — janela", "C) Ambos"]}', 'B', 'EF04LP02', 1),
('ortografia', 27, 'B', 1, 'VF', false, '{"stem": "VIAGEM e GARAGEM terminam em GEM (com G)."}', 'V', 'EF04LP02', 1),
('ortografia', 27, 'B', 1, 'RF', false, '{"stem": "Corrija: Hoje fui ao jardim ver as jirafas com jentileza."}', 'Hoje fui ao jardim ver as GIRAFAS com GENTILEZA.', 'EF04LP02', 1),
('ortografia', 27, 'B', 1, 'CL', false, '{"stem": "Palavras terminadas em -AGEM usam ___ (G/J)."}', 'G', 'EF04LP02', 2),
('ortografia', 27, 'B', 3, 'MC', true, '{"stem": "LAJE usa J porque:", "options": ["A) Não segue a regra de -AGEM", "B) É exceção — não é sufixo -AGEM", "C) Ambas"]}', 'C', 'EF04LP02', 2),
('ortografia', 27, 'B', 3, 'RF', true, '{"stem": "Corrija: A garagem e a viagem foram ótimas jeito."}', 'A garagem e a viagem foram de ÓTIMO jeito.', 'EF04LP02', 2),
('ortografia', 27, 'B', 3, 'VF', true, '{"stem": "PASSAGEM, CORAGEM e VANTAGEM terminam em -AGEM com G."}', 'V', 'EF04LP02', 1),
('ortografia', 27, 'B', 4, 'CT', false, '{"text": "A viagem de jenero foi com coragem e jentileza. A garagem da laje ficou aberta.", "error_count": 3}', 'A viagem de JANEIRO foi com coragem e GENTILEZA. A garagem da laje ficou aberta.', 'EF04LP02', 2),
('ortografia', 27, 'B', 4, 'MC', false, '{"stem": "Qual conjunto usa G e J corretamente?", "options": ["A) gente, jeito, viagem, laje", "B) jente, geito, viagem, laje", "C) gente, jeito, viagem, lage"]}', 'A', 'EF04LP02', 2),
('ortografia', 27, 'B', 4, 'RF', false, '{"stem": "Corrija: A jente tem coragem na viagem e jentileza no jardim."}', 'A GENTE tem coragem na viagem e GENTILEZA no jardim.', 'EF04LP02', 2),
('ortografia', 27, 'B', 4, 'VF', false, '{"stem": "LAJE é exceção e usa J, não G."}', 'V', 'EF04LP02', 2),
('ortografia', 27, 'B', 4, 'CL', false, '{"stem": "CORAGEM, VANTAGEM e PASSAGEM terminam em ___ com G."}', '-AGEM', 'EF04LP02', 1),
('ortografia', 27, 'B', 4, 'DS', false, '{"word": "passagem"}', 'pas-sa-gem', 'EF04LP02', 2),
('ortografia', 27, 'B', 4, 'PG', false, '{"instruction": "Escreva uma frase com 3 palavras terminadas em -AGEM e 2 com J.", "word_bank": ["viagem", "coragem", "passagem", "jeito", "jardim"]}', 'Respostas variadas', 'EF04LP02', 2);

-- ── NÍVEL 28-A — X ou CH ─────────────────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 28, 'A', 1, 'MC', false, '{"stem": "CHUVA usa CH ou X?", "options": ["A) X — xuva", "B) CH — chuva", "C) Ambos"]}', 'B', 'EF04LP02', 1),
('ortografia', 28, 'A', 1, 'VF', false, '{"stem": "Após ditongos (AU, EI, OU) usa-se X: caixa, feixe, frouxo."}', 'V', 'EF04LP02', 2),
('ortografia', 28, 'A', 1, 'RF', false, '{"stem": "Corrija: A chuva caiu na caisha de madeira."}', 'A chuva caiu na CAIXA de madeira.', 'EF04LP02', 1),
('ortografia', 28, 'A', 1, 'CL', false, '{"stem": "Após ditongos como AI, EI, OU usa-se ___."}', 'X', 'EF04LP02', 2),
('ortografia', 28, 'A', 3, 'MC', true, '{"stem": "Palavras de origem indígena ou africana geralmente usam:", "options": ["A) CH", "B) X", "C) Ambos"]}', 'B', 'EF04LP02', 2),
('ortografia', 28, 'A', 3, 'VF', true, '{"stem": "XIQUE-XIQUE, XARÁ e XERIFE têm X de origem indígena/africana."}', 'V', 'EF04LP02', 2),
('ortografia', 28, 'A', 3, 'CL', true, '{"stem": "CAIXA usa X porque vem depois do ditongo ___."}', 'AI', 'EF04LP02', 2),
('ortografia', 28, 'A', 4, 'RF', false, '{"stem": "Corrija: A chave da caisha fica na prateleira."}', 'A chave da CAIXA fica na prateleira.', 'EF04LP02', 1),
('ortografia', 28, 'A', 4, 'MC', false, '{"stem": "Qual usa CH corretamente?", "options": ["A) chuva, chave, chinelo", "B) xuva, xave, xinelo", "C) chuva, xave, chinelo"]}', 'A', 'EF04LP02', 1),
('ortografia', 28, 'A', 4, 'CL', false, '{"stem": "FROUXO usa X porque vem depois do ditongo ___."}', 'OU', 'EF04LP02', 2),
('ortografia', 28, 'A', 4, 'VF', false, '{"stem": "FEIXE usa X porque vem depois do ditongo EI."}', 'V', 'EF04LP02', 2),
('ortografia', 28, 'A', 4, 'CT', false, '{"text": "A chuva caiu na caisha de madeira perto da chave e do chinelo.", "error_count": 1}', 'A chuva caiu na CAIXA de madeira perto da chave e do chinelo.', 'EF04LP02', 1),
('ortografia', 28, 'A', 4, 'DS', false, '{"word": "chinelo"}', 'chi-ne-lo', 'EF04LP02', 1),
('ortografia', 28, 'A', 4, 'PG', false, '{"instruction": "Escreva 4 palavras com X e 4 com CH, explicando por que cada uma usa X ou CH.", "word_bank": []}', 'X: caixa (após AI), feixe (após EI), frouxo (após OU), xará (origem indígena) | CH: chuva, chave, chinelo, chocolate', 'EF04LP02', 2);

-- ── NÍVEL 28-B — X ou CH ─────────────────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 28, 'B', 1, 'MC', false, '{"stem": "FEIXE usa X ou CH?", "options": ["A) CH — feiche", "B) X — feixe", "C) Ambos"]}', 'B', 'EF04LP02', 1),
('ortografia', 28, 'B', 1, 'VF', false, '{"stem": "CHOCOLATE e CHEIRO usam CH."}', 'V', 'EF04LP02', 1),
('ortografia', 28, 'B', 1, 'RF', false, '{"stem": "Corrija: O xocolate e o cheque estão na caisha."}', 'O CHOCOLATE e o cheque estão na CAIXA.', 'EF04LP02', 1),
('ortografia', 28, 'B', 1, 'CL', false, '{"stem": "BAIXO usa X porque vem depois do ditongo ___."}', 'AI', 'EF04LP02', 1),
('ortografia', 28, 'B', 3, 'MC', true, '{"stem": "ENXADA usa X porque:", "options": ["A) origem indígena", "B) vem após EN", "C) é exceção"]}', 'B', 'EF04LP02', 2),
('ortografia', 28, 'B', 3, 'RF', true, '{"stem": "Corrija: A enxada e a charrua são ferramentas do campo."}', 'A enxada e a CHARRUA são ferramentas do campo.', 'EF04LP02', 2),
('ortografia', 28, 'B', 3, 'VF', true, '{"stem": "ENXAME, ENXADA e ENXUGAR usam X depois de EN."}', 'V', 'EF04LP02', 2),
('ortografia', 28, 'B', 4, 'CT', false, '{"text": "O chocolate, a chaave e o cheque estão na caisha perto do feixe e do xinelo.", "error_count": 3}', 'O chocolate, a CHAVE e o cheque estão na CAIXA perto do feixe e do CHINELO.', 'EF04LP02', 2),
('ortografia', 28, 'B', 4, 'MC', false, '{"stem": "Qual grupo usa X e CH corretamente?", "options": ["A) caixa, feixe, chocolate, chave", "B) caixa, feiche, xocolate, xave", "C) caisha, feixe, chocolate, chave"]}', 'A', 'EF04LP02', 2),
('ortografia', 28, 'B', 4, 'RF', false, '{"stem": "Corrija: A enxada caiu na caisha perto do feixe e do xinelo."}', 'A enxada caiu na CAIXA perto do feixe e do CHINELO.', 'EF04LP02', 2),
('ortografia', 28, 'B', 4, 'VF', false, '{"stem": "ENXAME usa X porque vem depois de EN."}', 'V', 'EF04LP02', 2),
('ortografia', 28, 'B', 4, 'CL', false, '{"stem": "CAIXOTE usa X porque vem depois do ditongo ___."}', 'AI', 'EF04LP02', 2),
('ortografia', 28, 'B', 4, 'DS', false, '{"word": "enxame"}', 'en-xa-me', 'EF04LP02', 2),
('ortografia', 28, 'B', 4, 'PG', false, '{"instruction": "Escreva uma frase com: caixa, feixe, chocolate, enxada, chinelo.", "word_bank": []}', 'Respostas variadas', 'EF04LP02', 2);

-- ── NÍVEL 29-A — L ou U (lh/nh) ──────────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 29, 'A', 1, 'MC', false, '{"stem": "GALHO usa LH ou LU?", "options": ["A) LU — galuo", "B) LH — galho", "C) Ambos"]}', 'B', 'EF04LP02', 1),
('ortografia', 29, 'A', 1, 'VF', false, '{"stem": "LH representa um único som: palatal lateral."}', 'V', 'EF04LP02', 1),
('ortografia', 29, 'A', 1, 'RF', false, '{"stem": "Corrija: O galuo da árvore caiu no telado."}', 'O GALHO da árvore caiu no TELHADO.', 'EF04LP02', 1),
('ortografia', 29, 'A', 1, 'CL', false, '{"stem": "OLHO, FILHO e FOLHA usam ___ para representar o som palatal."}', 'LH', 'EF04LP02', 1),
('ortografia', 29, 'A', 3, 'MC', true, '{"stem": "NH representa qual som?", "options": ["A) N+H separados", "B) nasal palatal (como em espanhol ñ)", "C) H aspirado"]}', 'B', 'EF04LP02', 2),
('ortografia', 29, 'A', 3, 'VF', true, '{"stem": "BANHO, SONHO e LINHA usam NH para o som nasal palatal."}', 'V', 'EF04LP02', 1),
('ortografia', 29, 'A', 3, 'CL', true, '{"stem": "PALINHA usa NH; GALHO usa ___; ambos são sons ___."}', 'LH / palatais', 'EF04LP02', 2),
('ortografia', 29, 'A', 4, 'RF', false, '{"stem": "Corrija: O filuo dormiu no banuo com a tolua molhada."}', 'O FILHO dormiu no BANHO com a TOALHA molhada.', 'EF04LP02', 2),
('ortografia', 29, 'A', 4, 'MC', false, '{"stem": "Qual está CORRETO?", "options": ["A) galho, sonho, linha, folha", "B) galuo, sonuo, linua, folua", "C) galho, sonho, linua, folha"]}', 'A', 'EF04LP02', 1),
('ortografia', 29, 'A', 4, 'CT', false, '{"text": "O filuo sonuou que o galuo da arvore caiu no telado da linua.", "error_count": 5}', 'O FILHO SONHOU que o GALHO da árvore caiu no TELHADO da LINHA.', 'EF04LP02', 2),
('ortografia', 29, 'A', 4, 'VF', false, '{"stem": "TOALHA usa LH e BANHO usa NH — ambos palatais."}', 'V', 'EF04LP02', 1),
('ortografia', 29, 'A', 4, 'CL', false, '{"stem": "OLHEI usa LH; MINHOCA usa ___."}', 'NH', 'EF04LP02', 2),
('ortografia', 29, 'A', 4, 'DS', false, '{"word": "minhoca"}', 'mi-nho-ca', 'EF04LP02', 2),
('ortografia', 29, 'A', 4, 'PG', false, '{"instruction": "Escreva 4 palavras com LH e 4 com NH.", "word_bank": []}', 'LH: galho, filho, olho, folha | NH: banho, sonho, linha, minhoca', 'EF04LP02', 2);

-- ── NÍVEL 29-B — L ou U (lh/nh) ──────────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 29, 'B', 1, 'MC', false, '{"stem": "SONHO usa NH ou NU?", "options": ["A) NU — sônuo", "B) NH — sonho", "C) Ambos"]}', 'B', 'EF04LP02', 1),
('ortografia', 29, 'B', 1, 'VF', false, '{"stem": "MALHADO e VELHICE usam LH."}', 'V', 'EF04LP02', 1),
('ortografia', 29, 'B', 1, 'RF', false, '{"stem": "Corrija: A minuoca molhuada saiu do banuo."}', 'A MINHOCA MOLHADA saiu do BANHO.', 'EF04LP02', 2),
('ortografia', 29, 'B', 1, 'CL', false, '{"stem": "VINHETA usa NH; BRILHO usa ___."}', 'LH', 'EF04LP02', 1),
('ortografia', 29, 'B', 3, 'MC', true, '{"stem": "MALHADO usa LH porque:", "options": ["A) vem do verbo malhar", "B) é exceção", "C) origem indígena"]}', 'A', 'EF04LP02', 2),
('ortografia', 29, 'B', 3, 'RF', true, '{"stem": "Corrija: O filuo sonuou com a minuoca no banuo."}', 'O FILHO SONHOU com a MINHOCA no BANHO.', 'EF04LP02', 2),
('ortografia', 29, 'B', 3, 'VF', true, '{"stem": "BRILHO, TRILHO e ORGULHO usam LH."}', 'V', 'EF04LP02', 1),
('ortografia', 29, 'B', 4, 'CT', false, '{"text": "O filuo brigueloso sonuou com a minuoca no banuo da toluia molhada.", "error_count": 5}', 'O FILHO brigão SONHOU com a MINHOCA no BANHO da TOALHA molhada.', 'EF04LP02', 2),
('ortografia', 29, 'B', 4, 'MC', false, '{"stem": "Qual grupo está TODO correto?", "options": ["A) galho, sonho, minhoca, toalha, brilho", "B) galuo, sonuo, minuoca, toualia, briluo", "C) galho, sonho, minuoca, toalha, brilho"]}', 'A', 'EF04LP02', 2),
('ortografia', 29, 'B', 4, 'RF', false, '{"stem": "Corrija: GALUO, SONUO, MINUOCA, TOUALIA, BRILUO"}', 'GALHO, SONHO, MINHOCA, TOALHA, BRILHO', 'EF04LP02', 2),
('ortografia', 29, 'B', 4, 'VF', false, '{"stem": "TRILHA usa LH e VINHETA usa NH — ambos palatais."}', 'V', 'EF04LP02', 2),
('ortografia', 29, 'B', 4, 'CL', false, '{"stem": "ORGULHO usa ___ e CAMPINHO usa ___."}', 'LH / NH', 'EF04LP02', 2),
('ortografia', 29, 'B', 4, 'DS', false, '{"word": "orgulho"}', 'or-gu-lho', 'EF04LP02', 2),
('ortografia', 29, 'B', 4, 'PG', false, '{"instruction": "Escreva um parágrafo com 3 palavras com LH e 3 com NH.", "word_bank": ["galho", "sonho", "filho", "banho", "toalha", "minhoca"]}', 'Respostas variadas', 'EF04LP02', 2);

-- ── NÍVEL 30-A — M antes de P e B ────────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 30, 'A', 1, 'MC', false, '{"stem": "CAMPO usa M ou N?", "options": ["A) N — canpo", "B) M — campo", "C) Ambos"]}', 'B', 'EF04LP02', 1),
('ortografia', 30, 'A', 1, 'VF', false, '{"stem": "Antes de P e B usa-se sempre M (nunca N)."}', 'V', 'EF04LP02', 1),
('ortografia', 30, 'A', 1, 'RF', false, '{"stem": "Corrija: O conpanheiro fez a conpra no canpo."}', 'O COMPANHEIRO fez a COMPRA no CAMPO.', 'EF04LP02', 1),
('ortografia', 30, 'A', 1, 'CL', false, '{"stem": "Antes de P e B usa-se ___, nunca N."}', 'M', 'EF04LP02', 1),
('ortografia', 30, 'A', 3, 'MC', true, '{"stem": "TAMBOR usa M porque:", "options": ["A) vem antes de B", "B) é exceção", "C) vem antes de P"]}', 'A', 'EF04LP02', 1),
('ortografia', 30, 'A', 3, 'VF', true, '{"stem": "EMPRESA, EMBORA e TAMBÉM usam M antes de P ou B."}', 'V', 'EF04LP02', 1),
('ortografia', 30, 'A', 3, 'CL', true, '{"stem": "EMBRULHO usa M antes de ___."}', 'B', 'EF04LP02', 1),
('ortografia', 30, 'A', 4, 'RF', false, '{"stem": "Corrija: Tenho canpanha no conpartimento da enpresa."}', 'Tenho CAMPANHA no COMPARTIMENTO da EMPRESA.', 'EF04LP02', 2),
('ortografia', 30, 'A', 4, 'MC', false, '{"stem": "Qual está CORRETO?", "options": ["A) campo, tambor, empresa", "B) canpo, tanbor, enpresa", "C) campo, tanbor, empresa"]}', 'A', 'EF04LP02', 1),
('ortografia', 30, 'A', 4, 'CT', false, '{"text": "A enpresa canpanhou o conpanheiro no canpo com enbrulho e tanbor.", "error_count": 5}', 'A EMPRESA ACOMPANHOU o COMPANHEIRO no CAMPO com EMBRULHO e TAMBOR.', 'EF04LP02', 2),
('ortografia', 30, 'A', 4, 'VF', false, '{"stem": "SEMPRE e EMBRULHO usam M antes de P e B respectivamente."}', 'V', 'EF04LP02', 1),
('ortografia', 30, 'A', 4, 'CL', false, '{"stem": "COMPRA usa M porque vem antes de ___."}', 'P', 'EF04LP02', 1),
('ortografia', 30, 'A', 4, 'DS', false, '{"word": "companheiro"}', 'com-pa-nhei-ro', 'EF04LP02', 2),
('ortografia', 30, 'A', 4, 'PG', false, '{"instruction": "Escreva 6 palavras com M antes de P ou B.", "word_bank": []}', 'campo, tambor, empresa, embrulho, compra, também, sempre, campanha', 'EF04LP02', 1);

-- ── NÍVEL 30-B — M antes de P e B ────────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 30, 'B', 1, 'MC', false, '{"stem": "TAMBÉM usa M ou N antes de B?", "options": ["A) N — tanbém", "B) M — também", "C) Ambos"]}', 'B', 'EF04LP02', 1),
('ortografia', 30, 'B', 1, 'VF', false, '{"stem": "SEMPRE e TEMPLO usam M antes de P."}', 'V', 'EF04LP02', 1),
('ortografia', 30, 'B', 1, 'RF', false, '{"stem": "Corrija: A enpresa tanbém fez a conpra no canpo."}', 'A EMPRESA TAMBÉM fez a COMPRA no CAMPO.', 'EF04LP02', 1),
('ortografia', 30, 'B', 1, 'CL', false, '{"stem": "TEMPLO usa M porque vem antes de ___."}', 'P', 'EF04LP02', 1),
('ortografia', 30, 'B', 3, 'MC', true, '{"stem": "EMBALAGEM usa M porque:", "options": ["A) vem antes de B", "B) é sufixo -AGEM", "C) vem antes de P"]}', 'A', 'EF04LP02', 1),
('ortografia', 30, 'B', 3, 'RF', true, '{"stem": "Corrija: A enpresa enviou o enbrulho e o tanbor."}', 'A EMPRESA enviou o EMBRULHO e o TAMBOR.', 'EF04LP02', 1),
('ortografia', 30, 'B', 3, 'VF', true, '{"stem": "EMBRULHO (M antes de B) e COMPRA (M antes de P) seguem a mesma regra."}', 'V', 'EF04LP02', 1),
('ortografia', 30, 'B', 4, 'CT', false, '{"text": "A enpresa tanbém envolve o enbrulho no conpartimento do canpo.", "error_count": 5}', 'A EMPRESA TAMBÉM envolve o EMBRULHO no COMPARTIMENTO do CAMPO.', 'EF04LP02', 2),
('ortografia', 30, 'B', 4, 'MC', false, '{"stem": "Qual grupo está TODO correto?", "options": ["A) campo, também, empresa, embrulho, compra", "B) canpo, tanbém, enpresa, enbrulho, conpra", "C) campo, tambem, empresa, embrulho, compra"]}', 'A', 'EF04LP02', 2),
('ortografia', 30, 'B', 4, 'RF', false, '{"stem": "Corrija: CANPO, TANBOR, CONPANHEIRO, ENBRULHO, SEMPRE"}', 'CAMPO, TAMBOR, COMPANHEIRO, EMBRULHO, SEMPRE', 'EF04LP02', 1),
('ortografia', 30, 'B', 4, 'VF', false, '{"stem": "EMBALAGEM e EMBRULHO usam M antes de B por causa da regra."}', 'V', 'EF04LP02', 1),
('ortografia', 30, 'B', 4, 'CL', false, '{"stem": "A regra: antes de P e B usa-se sempre ___, nunca N."}', 'M', 'EF04LP02', 1),
('ortografia', 30, 'B', 4, 'DS', false, '{"word": "compartimento"}', 'com-par-ti-men-to', 'EF04LP02', 2),
('ortografia', 30, 'B', 4, 'PG', false, '{"instruction": "Escreva um parágrafo usando 5 palavras com M antes de P ou B.", "word_bank": ["campo", "também", "empresa", "embrulho", "compra", "tambor", "sempre"]}', 'Respostas variadas', 'EF04LP02', 2);

-- ── NÍVEL 31-A — Uso do H ─────────────────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 31, 'A', 1, 'MC', false, '{"stem": "O H no início de palavras tem valor fonético?", "options": ["A) Sim, representa aspiração", "B) Não, é mudo", "C) Depende da palavra"]}', 'B', 'EF04LP02', 1),
('ortografia', 31, 'A', 1, 'VF', false, '{"stem": "HOJE, HORA e HOMEM têm H mudo no início."}', 'V', 'EF04LP02', 1),
('ortografia', 31, 'A', 1, 'RF', false, '{"stem": "Corrija: O omen de ontem foi onesto."}', 'O HOMEM de ontem foi HONESTO.', 'EF04LP02', 1),
('ortografia', 31, 'A', 1, 'CL', false, '{"stem": "CH, LH e NH são dígrafos onde o H ___ (tem / não tem) som próprio."}', 'não tem', 'EF04LP02', 1),
('ortografia', 31, 'A', 3, 'MC', true, '{"stem": "O H entre vogais (como em VEÍCULO) aparece em:", "options": ["A) palavras compostas", "B) palavras estrangeiras", "C) sempre"]}', 'A', 'EF04LP02', 2),
('ortografia', 31, 'A', 3, 'VF', true, '{"stem": "O H é obrigatório em palavras como HOTEL, HERÓI e HISTÓRIA por tradição ortográfica."}', 'V', 'EF04LP02', 1),
('ortografia', 31, 'A', 3, 'CL', true, '{"stem": "DESONRA usa H porque o prefixo DES+ se junta a HONRA, que começa com ___."}', 'H', 'EF04LP02', 2),
('ortografia', 31, 'A', 4, 'RF', false, '{"stem": "Corrija: O omen foi ao ospital com o eroi da istoria."}', 'O HOMEM foi ao HOSPITAL com o HERÓI da HISTÓRIA.', 'EF04LP02', 1),
('ortografia', 31, 'A', 4, 'MC', false, '{"stem": "Qual usa H corretamente?", "options": ["A) hoje, homem, honesto, história", "B) oje, omen, onesto, istoria", "C) hojê, homen, honêsto, histtoria"]}', 'A', 'EF04LP02', 1),
('ortografia', 31, 'A', 4, 'CT', false, '{"text": "O omen de ontem foi ao ospital. O eroi da istoria foi onesto com a iena.", "error_count": 6}', 'O HOMEM de ontem foi ao HOSPITAL. O HERÓI da HISTÓRIA foi HONESTO com a HIENA.', 'EF04LP02', 2),
('ortografia', 31, 'A', 4, 'VF', false, '{"stem": "HIENA e HIPOPÓTAMO têm H por tradição ortográfica."}', 'V', 'EF04LP02', 1),
('ortografia', 31, 'A', 4, 'CL', false, '{"stem": "DESONRA: DES + HONRA. O H se mantém porque pertence à palavra ___."}', 'honra', 'EF04LP02', 2),
('ortografia', 31, 'A', 4, 'DS', false, '{"word": "hipopótamo"}', 'hi-po-pó-ta-mo', 'EF04LP02', 2),
('ortografia', 31, 'A', 4, 'PG', false, '{"instruction": "Escreva 6 palavras que começam com H mudo.", "word_bank": []}', 'hoje, homem, honesto, hospital, herói, história, hipopótamo, hiena, hora, hábito', 'EF04LP02', 1);

-- ── NÍVEL 31-B — Uso do H ─────────────────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 31, 'B', 1, 'MC', false, '{"stem": "HIPOPÓTAMO começa com H por quê?", "options": ["A) Som aspirado", "B) Tradição ortográfica / etimologia", "C) É exceção"]}', 'B', 'EF04LP02', 1),
('ortografia', 31, 'B', 1, 'VF', false, '{"stem": "DESONRAR usa H porque a base HONRA tem H inicial."}', 'V', 'EF04LP02', 2),
('ortografia', 31, 'B', 1, 'RF', false, '{"stem": "Corrija: O ipopotamo e a iena vivem em abitats diferentes."}', 'O HIPOPÓTAMO e a HIENA vivem em HABITATS diferentes.', 'EF04LP02', 2),
('ortografia', 31, 'B', 1, 'CL', false, '{"stem": "No dígrafo CH, o H ___ tem som próprio."}', 'não', 'EF04LP02', 1),
('ortografia', 31, 'B', 3, 'MC', true, '{"stem": "INUMANO ou INUMANO? (prefixo IN + HUMANO)", "options": ["A) INUMANO (H some)", "B) IN-HUMANO (H permanece)", "C) INHUMANO"]}', 'B', 'EF04LP02', 3),
('ortografia', 31, 'B', 3, 'RF', true, '{"stem": "Corrija: O omen onesto foi ao ospital com o eroi da istoria."}', 'O HOMEM HONESTO foi ao HOSPITAL com o HERÓI da HISTÓRIA.', 'EF04LP02', 2),
('ortografia', 31, 'B', 3, 'VF', true, '{"stem": "Palavras compostas que juntam com base em H mantêm o H: DESONRA, IN-HUMANO."}', 'V', 'EF04LP02', 2),
('ortografia', 31, 'B', 4, 'CT', false, '{"text": "O ipopotamo, a iena e o ipocrita vivem em abitatos diferentes. O omen onesto foi ao ospital.", "error_count": 7}', 'O HIPOPÓTAMO, a HIENA e o HIPÓCRITA vivem em HABITATS diferentes. O HOMEM HONESTO foi ao HOSPITAL.', 'EF04LP02', 2),
('ortografia', 31, 'B', 4, 'MC', false, '{"stem": "Qual está TODO correto?", "options": ["A) hoje, homem, hospital, herói, história", "B) oje, omen, ospital, eroi, istoria", "C) hoje, homen, ospital, herói, história"]}', 'A', 'EF04LP02', 1),
('ortografia', 31, 'B', 4, 'RF', false, '{"stem": "Corrija: IPOPOTAMO, OMENA, OSPITAL, EROI, ISTORIA, IENA"}', 'HIPOPÓTAMO, HOMEM, HOSPITAL, HERÓI, HISTÓRIA, HIENA', 'EF04LP02', 2),
('ortografia', 31, 'B', 4, 'VF', false, '{"stem": "O H em HORA, HOJE e HONESTO é sempre mudo."}', 'V', 'EF04LP02', 1),
('ortografia', 31, 'B', 4, 'CL', false, '{"stem": "HOTEL começa com H por ___ ortográfica e o H é ___."}', 'tradição / mudo', 'EF04LP02', 2),
('ortografia', 31, 'B', 4, 'DS', false, '{"word": "honesto"}', 'ho-nes-to', 'EF04LP02', 1),
('ortografia', 31, 'B', 4, 'PG', false, '{"instruction": "Escreva uma frase usando: homem, hospital, herói, história, honesto.", "word_bank": []}', 'Respostas variadas', 'EF04LP02', 2);

-- ── NÍVEL 32-A — Revisão Ortografia I (Níveis 25–31) ─────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 32, 'A', 1, 'CT', false, '{"text": "A belesa da naturesa e incrivel. O omen onesto foi ao canpo com o conpanheiro.", "error_count": 6}', 'A BELEZA da NATUREZA é incrível. O HOMEM HONESTO foi ao CAMPO com o COMPANHEIRO.', 'EF04LP02', 2),
('ortografia', 32, 'A', 1, 'RF', false, '{"stem": "Corrija: BELESA, ORGANISAR, JENTE, CAISHA, GALUO, CANPO, OMEN"}', 'BELEZA, ORGANIZAR, GENTE, CAIXA, GALHO, CAMPO, HOMEM', 'EF04LP02', 2),
('ortografia', 32, 'A', 1, 'VF', false, '{"stem": "M antes de P e B; Z em palavras com sufixo -EZA; CH em palavras de origem portuguesa."}', 'V', 'EF04LP02', 2),
('ortografia', 32, 'A', 1, 'DS', false, '{"word": "companheiro"}', 'com-pa-nhei-ro', 'EF04LP02', 2),
('ortografia', 32, 'A', 3, 'AS', true, '{"column_a": ["BELEZA", "CAIXA", "GENTE", "GALHO", "CAMPO", "HOMEM"], "column_b": ["H mudo inicial", "M antes de P", "LH palatal", "G antes de E (som J)", "X após ditongo AI", "sufixo -EZA"]}', 'BELEZA→-EZA, CAIXA→X após AI, GENTE→G antes de E, GALHO→LH, CAMPO→M antes de P, HOMEM→H mudo', 'EF04LP02', 3),
('ortografia', 32, 'A', 3, 'CT', true, '{"text": "A jente do jardim cuida dos galuo e das jirafas com jentileza e conpanheirismo.", "error_count": 5}', 'A GENTE do jardim cuida dos GALHOS e das GIRAFAS com GENTILEZA e COMPANHEIRISMO.', 'EF04LP02', 3),
('ortografia', 32, 'A', 3, 'VF', true, '{"stem": "SS entre vogais, Ç antes de A/O/U, G antes de E/I (som J)."}', 'V', 'EF04LP02', 2),
('ortografia', 32, 'A', 4, 'CT', false, '{"text": "A belesa da naturesa e incrivel. A jente do jardim cuida dos galuo. O omen onesto foi ao canpo com o conpanheiro. A caisha de madeira ficou na laje.", "error_count": 10}', 'A BELEZA da NATUREZA é incrível. A GENTE do jardim cuida dos GALHOS. O HOMEM HONESTO foi ao CAMPO com o COMPANHEIRO. A CAIXA de madeira ficou na laje.', 'EF04LP02', 3),
('ortografia', 32, 'A', 4, 'MC', false, '{"stem": "Qual frase está 100% correta?", "options": ["A) A gente do jardim cuida das girafas com gentileza.", "B) A jente do jardim cuida das jirafas com jentileza.", "C) A gente do járdim cuida das girafas com jentileza."]}', 'A', 'EF04LP02', 2),
('ortografia', 32, 'A', 4, 'RF', false, '{"stem": "Corrija tudo: BELESA NATURESA OMEN CANPO CAISHA GALUO JENTE JIRAFAS JENTILEZA CONPANHEIRO"}', 'BELEZA NATUREZA HOMEM CAMPO CAIXA GALHO GENTE GIRAFAS GENTILEZA COMPANHEIRO', 'EF04LP02', 3),
('ortografia', 32, 'A', 4, 'VF', false, '{"stem": "Ç, SS, S, G/J, CH/X, LH/NH e H são os principais pontos de ortografia estudados."}', 'V', 'EF04LP02', 2),
('ortografia', 32, 'A', 4, 'CL', false, '{"stem": "M antes de P e B; ___ entre vogais para som de S; H ___ no início de palavras."}', 'SS / mudo', 'EF04LP02', 2),
('ortografia', 32, 'A', 4, 'DS', false, '{"word": "gentileza"}', 'gen-ti-le-za', 'EF04LP02', 2),
('ortografia', 32, 'A', 4, 'PG', false, '{"instruction": "Escreva um parágrafo usando pelo menos: 2 palavras com Z/S, 2 com G/J, 2 com CH/X, 2 com LH/NH, 2 com M antes de P/B, 2 com H.", "word_bank": ["beleza", "gente", "caixa", "galho", "campo", "homem", "gentileza", "também", "sonho", "história"]}', 'Respostas variadas', 'EF04LP02', 3);

-- ── NÍVEL 32-B — Revisão Ortografia I ────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 32, 'B', 1, 'CT', false, '{"text": "A tristesa e a dureza da vida mostram a grandesa e a belesa do ser umano.", "error_count": 5}', 'A TRISTEZA e a DUREZA da vida mostram a GRANDEZA e a BELEZA do ser HUMANO.', 'EF04LP02', 2),
('ortografia', 32, 'B', 1, 'RF', false, '{"stem": "Corrija: TRISTESA, DUREZA (correto?), GRANDESA, BELESA, UMANO"}', 'TRISTEZA, DUREZA (correto), GRANDEZA, BELEZA, HUMANO', 'EF04LP02', 2),
('ortografia', 32, 'B', 1, 'VF', false, '{"stem": "HOMEM (H mudo), CAMPO (M antes de P), GALHO (LH), GENTE (G antes de E) estão todos corretos."}', 'V', 'EF04LP02', 2),
('ortografia', 32, 'B', 1, 'DS', false, '{"word": "grandeza"}', 'gran-de-za', 'EF04LP02', 2),
('ortografia', 32, 'B', 3, 'CT', true, '{"text": "O omen onesto foi ao canpo com o conpanheiro. A caisha de madeira ficou na laje perto do galuo.", "error_count": 6}', 'O HOMEM HONESTO foi ao CAMPO com o COMPANHEIRO. A CAIXA de madeira ficou na laje perto do GALHO.', 'EF04LP02', 3),
('ortografia', 32, 'B', 3, 'AS', true, '{"column_a": ["TRISTEZA", "GENTE", "CAIXA", "GALHO", "CAMPO", "HONESTO"], "column_b": ["H mudo", "M antes de P", "LH palatal", "G antes de E", "X após AI", "-EZA"]}', 'TRISTEZA→-EZA, GENTE→G antes de E, CAIXA→X após AI, GALHO→LH, CAMPO→M antes de P, HONESTO→H mudo', 'EF04LP02', 3),
('ortografia', 32, 'B', 3, 'VF', true, '{"stem": "As principais regras de ortografia são: S/Z, SS/Ç/C, G/J, X/CH, LH/NH, M antes de P/B, H."}', 'V', 'EF04LP02', 2),
('ortografia', 32, 'B', 4, 'CT', false, '{"text": "A tristesa e a belesa da naturesa são incriveis. O omen onesto cuida do conpanheiro no ospital com jentileza e conpaixão.", "error_count": 9}', 'A TRISTEZA e a BELEZA da NATUREZA são incríveis. O HOMEM HONESTO cuida do COMPANHEIRO no HOSPITAL com GENTILEZA e COMPAIXÃO.', 'EF04LP02', 3),
('ortografia', 32, 'B', 4, 'MC', false, '{"stem": "Qual está TODO correto?", "options": ["A) tristeza, homem, campo, galho, caixa, gente", "B) tristesa, omen, canpo, galuo, caisha, jente", "C) tristeza, omen, campo, galho, caixa, gente"]}', 'A', 'EF04LP02', 2),
('ortografia', 32, 'B', 4, 'RF', false, '{"stem": "Corrija tudo: TRISTESA OMEN OSPITAL JENTILEZA CANPO CAISHA GALUO SONUO DUREZA (correto?)"}', 'TRISTEZA HOMEM HOSPITAL GENTILEZA CAMPO CAIXA GALHO SONHO DUREZA (correto)', 'EF04LP02', 3),
('ortografia', 32, 'B', 4, 'VF', false, '{"stem": "COMPAIXÃO usa M antes de P e Ç antes de Ã."}', 'V', 'EF04LP02', 2),
('ortografia', 32, 'B', 4, 'CL', false, '{"stem": "As 7 regras revisadas: S/Z, SS/Ç, G/J, X/CH, ___, M/P-B, H."}', 'LH/NH', 'EF04LP02', 2),
('ortografia', 32, 'B', 4, 'DS', false, '{"word": "compaixão"}', 'com-pai-xão', 'EF04LP02', 2),
('ortografia', 32, 'B', 4, 'PG', false, '{"instruction": "Escreva um texto de 5 frases com: tristeza, homem, hospital, gentileza, campo, caixa, galho, companheiro.", "word_bank": []}', 'Respostas variadas', 'EF04LP02', 3);
