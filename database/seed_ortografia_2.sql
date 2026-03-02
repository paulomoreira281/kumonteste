-- ============================================================
-- GeraFicha — Seed: Módulo Ortografia (Níveis 33–48)
-- Séries A e B | Blocos 1, 3 e 4
-- ============================================================

-- ── NÍVEL 33-A — E/I átonos e O/U átonos ──────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 33, 'A', 1, 'MC', false, '{"stem": "MENINO usa E ou I na primeira sílaba?", "options": ["A) I — minino", "B) E — menino", "C) Ambos"]}', 'B', 'EF04LP02', 1),
('ortografia', 33, 'A', 1, 'VF', false, '{"stem": "Vogais átonas E e I podem causar confusão: MENINO vs MININO."}', 'V', 'EF04LP02', 1),
('ortografia', 33, 'A', 1, 'RF', false, '{"stem": "Corrija: O minino e a minina brincavam no jardim."}', 'O MENINO e a MENINA brincavam no jardim.', 'EF04LP02', 1),
('ortografia', 33, 'A', 1, 'CL', false, '{"stem": "MENINO: a vogal átona da primeira sílaba é ___, não I."}', 'E', 'EF04LP02', 1),
('ortografia', 33, 'A', 3, 'MC', true, '{"stem": "VIZINHO usa V+I ou V+E?", "options": ["A) VE — vezinho", "B) VI — vizinho", "C) Depende"]}', 'B', 'EF04LP02', 1),
('ortografia', 33, 'A', 3, 'VF', true, '{"stem": "TESOURA e TESOURAR usam E, não I na primeira sílaba."}', 'V', 'EF04LP02', 2),
('ortografia', 33, 'A', 3, 'CL', true, '{"stem": "BORRACHA usa O na primeira sílaba; BURACO usa ___."}', 'U', 'EF04LP02', 2),
('ortografia', 33, 'A', 4, 'CT', false, '{"text": "O minino visitou o vizinhu e encontrou uma buraca na purta.", "error_count": 4}', 'O MENINO visitou o vizinho e encontrou uma BURACO na PORTA.', 'EF04LP02', 2),
('ortografia', 33, 'A', 4, 'MC', false, '{"stem": "Qual está CORRETA?", "options": ["A) menino, vizinho, borracha", "B) minino, vezinho, burracha", "C) menino, vizinho, buracha"]}', 'A', 'EF04LP02', 2),
('ortografia', 33, 'A', 4, 'RF', false, '{"stem": "Corrija: O minino e a vizinha brincavam com a burracha na purta."}', 'O MENINO e a VIZINHA brincavam com a BORRACHA na PORTA.', 'EF04LP02', 2),
('ortografia', 33, 'A', 4, 'VF', false, '{"stem": "BURACO usa U; BORRACHA usa O — ambas com vogais átonas distintas."}', 'V', 'EF04LP02', 2),
('ortografia', 33, 'A', 4, 'CL', false, '{"stem": "A dificuldade das vogais átonas é que o som de E/I e O/U é parecido quando ___."}', 'átonos (sem acento)', 'EF04LP02', 2),
('ortografia', 33, 'A', 4, 'DS', false, '{"word": "vizinho"}', 'vi-zi-nho', 'EF04LP02', 2),
('ortografia', 33, 'A', 4, 'PG', false, '{"instruction": "Escreva 5 pares de palavras que se confundem por E/I ou O/U átonos.", "word_bank": []}', 'menino/minino, menina/minina, borracha/burracha, porta/purta, tesoura/tisoura', 'EF04LP02', 2);

-- ── NÍVEL 33-B — E/I átonos e O/U átonos ──────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 33, 'B', 1, 'MC', false, '{"stem": "TESOURA usa TE ou TI?", "options": ["A) TI — tisoura", "B) TE — tesoura", "C) Ambos"]}', 'B', 'EF04LP02', 1),
('ortografia', 33, 'B', 1, 'VF', false, '{"stem": "BORRACHA e BORRACHO usam O na sílaba inicial."}', 'V', 'EF04LP02', 1),
('ortografia', 33, 'B', 1, 'RF', false, '{"stem": "Corrija: A tisoura cortou a burracha da minina."}', 'A TESOURA cortou a BORRACHA da MENINA.', 'EF04LP02', 2),
('ortografia', 33, 'B', 1, 'CL', false, '{"stem": "MENINO começa com ME; VIZINHO começa com VI; BORRACHA começa com ___."}', 'BO', 'EF04LP02', 1),
('ortografia', 33, 'B', 3, 'MC', true, '{"stem": "Qual estratégia ajuda a não errar vogais átonas?", "options": ["A) Consultar palavras da mesma família", "B) Escrever como soa", "C) Usar sempre E e O"]}', 'A', 'EF04LP02', 2),
('ortografia', 33, 'B', 3, 'RF', true, '{"stem": "Corrija: O minino, a vezinha e a tisoura estão na purta da boraca."}', 'O MENINO, a VIZINHA e a TESOURA estão na PORTA do BURACO.', 'EF04LP02', 2),
('ortografia', 33, 'B', 3, 'VF', true, '{"stem": "Palavras da família ajudam: MENINO vem de MENOR (E claro); VIZINHO vem de VIZINHANÇA."}', 'V', 'EF04LP02', 2),
('ortografia', 33, 'B', 4, 'CT', false, '{"text": "O minino e a minina brincavam com a tisoura e a burracha na purta da casa do vezinho.", "error_count": 6}', 'O MENINO e a MENINA brincavam com a TESOURA e a BORRACHA na PORTA da casa do VIZINHO.', 'EF04LP02', 3),
('ortografia', 33, 'B', 4, 'MC', false, '{"stem": "Qual grupo está TODO correto?", "options": ["A) menino, tesoura, vizinho, borracha, porta", "B) minino, tisoura, vezinho, burracha, purta", "C) menino, tisoura, vizinho, borracha, porta"]}', 'A', 'EF04LP02', 2),
('ortografia', 33, 'B', 4, 'RF', false, '{"stem": "Corrija: MININO, TISOURA, VEZINHO, BURRACHA, PURTA"}', 'MENINO, TESOURA, VIZINHO, BORRACHA, PORTA', 'EF04LP02', 2),
('ortografia', 33, 'B', 4, 'VF', false, '{"stem": "BURACO (U) e BORRACHA (O) são exemplos de vogais átonas distintas."}', 'V', 'EF04LP02', 2),
('ortografia', 33, 'B', 4, 'CL', false, '{"stem": "Consultar a família de palavras: MENOR → MENINO (E); VIZI___ → VIZINHO."}', 'VIZI', 'EF04LP02', 2),
('ortografia', 33, 'B', 4, 'DS', false, '{"word": "tesoura"}', 'te-sou-ra', 'EF04LP02', 2),
('ortografia', 33, 'B', 4, 'PG', false, '{"instruction": "Escreva uma história curta (3-4 frases) usando: menino, tesoura, vizinho, borracha, porta.", "word_bank": []}', 'Respostas variadas', 'EF04LP02', 2);

-- ── NÍVEL 34-A — Palavras com R e RR ─────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 34, 'A', 1, 'MC', false, '{"stem": "CARRO usa R ou RR?", "options": ["A) R — caro", "B) RR — carro", "C) Ambos"]}', 'B', 'EF04LP02', 1),
('ortografia', 34, 'A', 1, 'VF', false, '{"stem": "RR aparece entre duas vogais para representar o R forte."}', 'V', 'EF04LP02', 1),
('ortografia', 34, 'A', 1, 'RF', false, '{"stem": "Corrija: O caro do Pedrinho é um caro muito caro."}', 'O CARRO do Pedrinho é um CARRO muito CARO.', 'EF04LP02', 1),
('ortografia', 34, 'A', 1, 'CL', false, '{"stem": "CARO (adjective) tem R simples; CARRO (veículo) tem ___."}', 'RR', 'EF04LP02', 1),
('ortografia', 34, 'A', 3, 'MC', true, '{"stem": "R no início de palavra ou após N, L, S, tem som:", "options": ["A) fraco", "B) forte (como RR)", "C) mudo"]}', 'B', 'EF04LP02', 2),
('ortografia', 34, 'A', 3, 'VF', true, '{"stem": "HONRA, ISRAELITA e MELRO têm R com som forte sem precisar de RR."}', 'V', 'EF04LP02', 2),
('ortografia', 34, 'A', 3, 'CL', true, '{"stem": "CARO = adj (R fraco); CARRO = substantivo (RR ___ entre vogais)."}', 'forte', 'EF04LP02', 2),
('ortografia', 34, 'A', 4, 'CT', false, '{"text": "O caro do meu caro amigo é muito caro. O enredo da novela é terivel.", "error_count": 2}', 'O CARRO do meu caro amigo é muito CARO. O enredo da novela é TERRÍVEL.', 'EF04LP02', 2),
('ortografia', 34, 'A', 4, 'MC', false, '{"stem": "Qual par usa R e RR corretamente?", "options": ["A) carro e caro", "B) caro e carro (invertidos)", "C) caro e caro"]}', 'A', 'EF04LP02', 1),
('ortografia', 34, 'A', 4, 'RF', false, '{"stem": "Corrija: O terivel enredo causou um tumulto na cidadde."}', 'O TERRÍVEL enredo causou um tumulto na cidade.', 'EF04LP02', 2),
('ortografia', 34, 'A', 4, 'VF', false, '{"stem": "TERRA, CARRO e GARRAFA usam RR entre vogais."}', 'V', 'EF04LP02', 1),
('ortografia', 34, 'A', 4, 'CL', false, '{"stem": "R após N, L, S tem som forte: HONRA, I_LHARGA, DE_SENHO."}', 'ÍSRAEL / DESORDEM', 'EF04LP02', 3),
('ortografia', 34, 'A', 4, 'DS', false, '{"word": "garrafa"}', 'gar-ra-fa', 'EF04LP02', 1),
('ortografia', 34, 'A', 4, 'PG', false, '{"instruction": "Escreva 5 pares de palavras diferenciadas por R/RR e explique o significado de cada uma.", "word_bank": []}', 'caro/carro, para/parra, moro/morro, coro/corro, era/erra', 'EF04LP02', 2);

-- ── NÍVEL 34-B — Palavras com R e RR ─────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 34, 'B', 1, 'MC', false, '{"stem": "MORRO (elevação) ou MORO (verbo morar)?", "options": ["A) MORO = elevação; MORRO = verbo", "B) MORRO = elevação; MORO = verbo", "C) São iguais"]}', 'B', 'EF04LP02', 1),
('ortografia', 34, 'B', 1, 'VF', false, '{"stem": "TERRA (solo) usa RR; TERA (unidade de dados) usa R simples."}', 'V', 'EF04LP02', 2),
('ortografia', 34, 'B', 1, 'RF', false, '{"stem": "Corrija: Eu moro no moro e meu caro é um caro."}', 'Eu MORO no MORRO e meu CARRO é um CARO (veículo valioso).', 'EF04LP02', 2),
('ortografia', 34, 'B', 1, 'CL', false, '{"stem": "PARA (preposição) tem R fraco; PARRA (videira) tem ___."}', 'RR', 'EF04LP02', 2),
('ortografia', 34, 'B', 3, 'MC', true, '{"stem": "Por que ENREDO usa R simples e não RR?", "options": ["A) Vem após consoante N (som forte sem RR)", "B) É exceção", "C) Vem entre vogais"]}', 'A', 'EF04LP02', 2),
('ortografia', 34, 'B', 3, 'RF', true, '{"stem": "Corrija: O enredo do caro do moro causou terivel comoção."}', 'O enredo do CARRO do MORRO causou TERRÍVEL comoção.', 'EF04LP02', 2),
('ortografia', 34, 'B', 3, 'VF', true, '{"stem": "R após N, L, S tem som forte naturalmente: ENREDO, MELRO, ISRAELITA."}', 'V', 'EF04LP02', 2),
('ortografia', 34, 'B', 4, 'CT', false, '{"text": "O caro do vizinho subiu o moro e quebrou a garrafa de terivel barro.", "error_count": 3}', 'O CARRO do vizinho subiu o MORRO e quebrou a garrafa de TERRÍVEL barro.', 'EF04LP02', 2),
('ortografia', 34, 'B', 4, 'MC', false, '{"stem": "Qual grupo usa R e RR corretamente?", "options": ["A) carro, morro, terra, garrafa, terrível", "B) caro, moro, tera, garafa, terivel", "C) carro, moro, terra, garrafa, terrível"]}', 'A', 'EF04LP02', 2),
('ortografia', 34, 'B', 4, 'RF', false, '{"stem": "Corrija: CARO (veículo), MORO (elevação), TERA (solo), GARAFA, TERIVEL"}', 'CARRO, MORRO, TERRA, GARRAFA, TERRÍVEL', 'EF04LP02', 2),
('ortografia', 34, 'B', 4, 'VF', false, '{"stem": "CARO (adj) tem R fraco; CARRO (veículo) tem R forte (RR)."}', 'V', 'EF04LP02', 1),
('ortografia', 34, 'B', 4, 'CL', false, '{"stem": "ENREDO usa R simples porque vem após ___, que já dá som forte."}', 'N', 'EF04LP02', 2),
('ortografia', 34, 'B', 4, 'DS', false, '{"word": "terrível"}', 'ter-rí-vel', 'EF04LP02', 2),
('ortografia', 34, 'B', 4, 'PG', false, '{"instruction": "Escreva um parágrafo usando: carro, morro, terra, garrafa, terrível.", "word_bank": []}', 'Respostas variadas', 'EF04LP02', 2);

-- ── NÍVEL 35-A — Palavras com QU e GU ────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 35, 'A', 1, 'MC', false, '{"stem": "GUERRA usa GU ou G?", "options": ["A) G simples — gera", "B) GU — guerra", "C) Ambos"]}', 'B', 'EF04LP02', 1),
('ortografia', 35, 'A', 1, 'VF', false, '{"stem": "QU antes de E e I: o U não é pronunciado (QUERO, QUILO)."}', 'V', 'EF04LP02', 1),
('ortografia', 35, 'A', 1, 'RF', false, '{"stem": "Corrija: Ele gosta de geso e de queijo."}', 'Ele gosta de QUEIJO e de GESSO.', 'EF04LP02', 1),
('ortografia', 35, 'A', 1, 'CL', false, '{"stem": "GU antes de E e I: o U é mudo (GUERRA, ___, GUILHERME)."}', 'GUITARRA', 'EF04LP02', 1),
('ortografia', 35, 'A', 3, 'MC', true, '{"stem": "Quando o U de QU é pronunciado?", "options": ["A) Antes de E e I", "B) Antes de A e O (QUANDO, QUÓRUM)", "C) Nunca"]}', 'B', 'EF04LP02', 2),
('ortografia', 35, 'A', 3, 'VF', true, '{"stem": "QUANDO e QUASE têm U pronunciado (KWA/KWA); QUERO e QUILO não."}', 'V', 'EF04LP02', 2),
('ortografia', 35, 'A', 3, 'CL', true, '{"stem": "GUERRA: GU+ER = G forte, U mudo. GUARDA: GU+AR = G forte, U ___."}', 'pronunciado', 'EF04LP02', 2),
('ortografia', 35, 'A', 4, 'CT', false, '{"text": "Gando gelo e gelo de gerra é gostoso para guinze pessoas.", "error_count": 4}', 'QUANDO QUEIJO e GELO de GUERRA é gostoso para QUINZE pessoas.', 'EF04LP02', 2),
('ortografia', 35, 'A', 4, 'MC', false, '{"stem": "Qual está CORRETO?", "options": ["A) guerra, queijo, quando, quilo", "B) gerra, geijo, gando, gilo", "C) guerra, geijo, quando, quilo"]}', 'A', 'EF04LP02', 1),
('ortografia', 35, 'A', 4, 'RF', false, '{"stem": "Corrija: Gando ele guer geso, ele pede gilo de guela."}', 'QUANDO ele QUER QUEIJO, ele pede QUILO de AQUELA.', 'EF04LP02', 2),
('ortografia', 35, 'A', 4, 'VF', false, '{"stem": "QUEIJO (U mudo) e QUANDO (U pronunciado) têm regras diferentes."}', 'V', 'EF04LP02', 2),
('ortografia', 35, 'A', 4, 'CL', false, '{"stem": "QU + E/I: U ___; QU + A/O: U pronunciado."}', 'mudo', 'EF04LP02', 2),
('ortografia', 35, 'A', 4, 'DS', false, '{"word": "guerra"}', 'guer-ra', 'EF04LP02', 1),
('ortografia', 35, 'A', 4, 'PG', false, '{"instruction": "Escreva 4 palavras com QU onde U é mudo e 2 onde U é pronunciado.", "word_bank": []}', 'U mudo: quero, queijo, quilo, quente | U pronunciado: quando, quanto', 'EF04LP02', 2);

-- ── NÍVEL 35-B — Palavras com QU e GU ────────────────────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 35, 'B', 1, 'MC', false, '{"stem": "GUITARRA usa GU porque:", "options": ["A) G forte antes de I exige U", "B) É exceção", "C) U é pronunciado"]}', 'A', 'EF04LP02', 1),
('ortografia', 35, 'B', 1, 'VF', false, '{"stem": "GUILHERME e GUITARRA têm U mudo; GUARDA e QUANDO têm U pronunciado."}', 'V', 'EF04LP02', 2),
('ortografia', 35, 'B', 1, 'RF', false, '{"stem": "Corrija: Gando ele toca gitar, guer gelo e geijo."}', 'QUANDO ele toca GUITARRA, QUER GELO e QUEIJO.', 'EF04LP02', 2),
('ortografia', 35, 'B', 1, 'CL', false, '{"stem": "GUARDA: GU+AR = G forte, U ___. GUERRA: GU+ER = G forte, U ___."}', 'pronunciado / mudo', 'EF04LP02', 2),
('ortografia', 35, 'B', 3, 'MC', true, '{"stem": "FREQUENTE perdeu o trema. Como era antes?", "options": ["A) FREQÜENTE (U pronunciado com trema)", "B) FREQUENTE (sempre assim)", "C) FRIQUENTE"]}', 'A', 'EF04LP02', 3),
('ortografia', 35, 'B', 3, 'RF', true, '{"stem": "Corrija: Gando ele ger geijo na gerra, guer gilo gente."}', 'QUANDO ele VER QUEIJO na GUERRA, QUER QUILO QUENTE.', 'EF04LP02', 2),
('ortografia', 35, 'B', 3, 'VF', true, '{"stem": "Antes de 2009: FREQÜENTE (U pronunciado com trema). Após 2009: FREQUENTE (sem trema, U ainda pronunciado)."}', 'V', 'EF04LP02', 3),
('ortografia', 35, 'B', 4, 'CT', false, '{"text": "Gando ele toca gitar e guer geijo, a gerra de gelo começa. Guiluerme e guarda.", "error_count": 5}', 'QUANDO ele toca GUITARRA e QUER QUEIJO, a GUERRA de gelo começa. GUILHERME é GUARDA.', 'EF04LP02', 3),
('ortografia', 35, 'B', 4, 'MC', false, '{"stem": "Qual grupo está TODO correto?", "options": ["A) guerra, guitarra, queijo, quando, guarda", "B) gerra, gitar, geijo, gando, guarda", "C) guerra, gitar, queijo, quando, guarda"]}', 'A', 'EF04LP02', 2),
('ortografia', 35, 'B', 4, 'RF', false, '{"stem": "Corrija: GERRA, GITAR, GEIJO, GANDO, GUILERME"}', 'GUERRA, GUITARRA, QUEIJO, QUANDO, GUILHERME', 'EF04LP02', 2),
('ortografia', 35, 'B', 4, 'VF', false, '{"stem": "GU antes de A/O: U pronunciado (GUARDA). GU antes de E/I: U mudo (GUERRA)."}', 'V', 'EF04LP02', 2),
('ortografia', 35, 'B', 4, 'CL', false, '{"stem": "QUEIJO: QU+EI = Q forte, U ___, I pronunciado."}', 'mudo', 'EF04LP02', 2),
('ortografia', 35, 'B', 4, 'DS', false, '{"word": "guitarra"}', 'gui-tar-ra', 'EF04LP02', 2),
('ortografia', 35, 'B', 4, 'PG', false, '{"instruction": "Escreva um parágrafo usando: guerra, guitarra, queijo, quando, guarda, Guilherme.", "word_bank": []}', 'Respostas variadas', 'EF04LP02', 2);

-- ── NÍVEL 36-A — Revisão Ortografia II (Níveis 33–35) ────────
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 36, 'A', 1, 'CT', false, '{"text": "O minino guer geso e a tisoura está no caro do moro. Gando o omen chega, pede gilo de geijo.", "error_count": 8}', 'O MENINO QUER QUEIJO e a TESOURA está no CARRO do MORRO. QUANDO o HOMEM chega, pede QUILO de QUEIJO.', 'EF04LP02', 3),
('ortografia', 36, 'A', 1, 'RF', false, '{"stem": "Corrija: MININO, GERO, TISOURA, CARO (veículo), MORO (elevação), GANDO, OMEN, GILO, GEIJO"}', 'MENINO, QUERO, TESOURA, CARRO, MORRO, QUANDO, HOMEM, QUILO, QUEIJO', 'EF04LP02', 3),
('ortografia', 36, 'A', 1, 'VF', false, '{"stem": "E/I e O/U átonos; R/RR entre vogais; QU/GU com U mudo ou pronunciado."}', 'V', 'EF04LP02', 2),
('ortografia', 36, 'A', 1, 'DS', false, '{"word": "tesoura"}', 'te-sou-ra', 'EF04LP02', 2),
('ortografia', 36, 'A', 3, 'AS', true, '{"column_a": ["MENINO", "CARRO", "QUEIJO", "QUANDO", "MORRO", "TESOURA"], "column_b": ["QU + A (U pronunciado)", "elevação (RR)", "QU + EI (U mudo)", "vogal átona O+U", "vogal átona E", "veículo (RR)"]}', 'MENINO→átona E, CARRO→veículo RR, QUEIJO→QU+EI, QUANDO→QU+A, MORRO→elevação RR, TESOURA→átona O+U', 'EF04LP02', 3),
('ortografia', 36, 'A', 3, 'CT', true, '{"text": "O minino com a tisoura subiu o moro no caro. Gando chegou, gero geso e gilo de guela.", "error_count": 8}', 'O MENINO com a TESOURA subiu o MORRO no CARRO. QUANDO chegou, QUERO QUEIJO e QUILO de AQUELA.', 'EF04LP02', 3),
('ortografia', 36, 'A', 3, 'VF', true, '{"stem": "CARO (adj) ≠ CARRO (veículo); MORO (verbo) ≠ MORRO (elevação)."}', 'V', 'EF04LP02', 2),
('ortografia', 36, 'A', 4, 'CT', false, '{"text": "O minino gostava de gero geso e tisoura. Ele subia o moro no caro gando geria gelo. O omen guar gilo de geijo na gerra.", "error_count": 12}', 'O MENINO gostava de QUERER QUEIJO e TESOURA. Ele subia o MORRO no CARRO QUANDO QUERIA GELO. O HOMEM GUARDA QUILO de QUEIJO na GUERRA.', 'EF04LP02', 3),
('ortografia', 36, 'A', 4, 'MC', false, '{"stem": "Qual frase está 100% correta?", "options": ["A) O menino quer queijo e a tesoura está no carro do morro.", "B) O minino guer geijo e a tisoura está no caro do moro.", "C) O menino quer geijo e a tesoura está no carro do morro."]}', 'A', 'EF04LP02', 3),
('ortografia', 36, 'A', 4, 'RF', false, '{"stem": "Corrija TUDO: MININO GERO TISOURA CARO(veículo) MORO(elevação) GANDO OMEN GILO GEIJO GERRA"}', 'MENINO QUERO TESOURA CARRO MORRO QUANDO HOMEM QUILO QUEIJO GUERRA', 'EF04LP02', 3),
('ortografia', 36, 'A', 4, 'VF', false, '{"stem": "R/RR, E/I e O/U átonos, QU/GU são os temas desta revisão."}', 'V', 'EF04LP02', 2),
('ortografia', 36, 'A', 4, 'CL', false, '{"stem": "QUEIJO (U mudo), QUANDO (U pronunciado), CARRO (RR forte), MENINO (E átono)."}', 'Todas corretas', 'EF04LP02', 2),
('ortografia', 36, 'A', 4, 'DS', false, '{"word": "vizinho"}', 'vi-zi-nho', 'EF04LP02', 2),
('ortografia', 36, 'A', 4, 'PG', false, '{"instruction": "Escreva 5 frases usando pelo menos: menino, carro, morro, queijo, quando, tesoura, guerra.", "word_bank": []}', 'Respostas variadas', 'EF04LP02', 3);

-- 36-B
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 36, 'B', 1, 'CT', false, '{"text": "O minino, a vezinha e a tisoura estão no caro. Gando o omen chega, gero gilo de geijo.", "error_count": 8}', 'O MENINO, a VIZINHA e a TESOURA estão no CARRO. QUANDO o HOMEM chega, QUERO QUILO de QUEIJO.', 'EF04LP02', 3),
('ortografia', 36, 'B', 1, 'RF', false, '{"stem": "Corrija: A gerra, o moro, o minino e a tisoura estão no gorredor."}', 'A GUERRA, o MORRO, o MENINO e a TESOURA estão no CORREDOR.', 'EF04LP02', 3),
('ortografia', 36, 'B', 1, 'VF', false, '{"stem": "VIZINHO (I átono), BORRACHA (O átono), TESOURA (E átono) — todos com vogais átonas."}', 'V', 'EF04LP02', 2),
('ortografia', 36, 'B', 1, 'DS', false, '{"word": "corredor"}', 'cor-re-dor', 'EF04LP02', 2),
('ortografia', 36, 'B', 3, 'CT', true, '{"text": "Gando o minino guer geso na gerra, a tisoura cai do caro do moro.", "error_count": 7}', 'QUANDO o MENINO QUER QUEIJO na GUERRA, a TESOURA cai do CARRO do MORRO.', 'EF04LP02', 3),
('ortografia', 36, 'B', 3, 'AS', true, '{"column_a": ["VIZINHO", "TERRÍVEL", "GUITARRA", "QUANDO", "MENINO", "BORRACHA"], "column_b": ["I átono", "O átono", "QU+A (U pronunciado)", "GU+I (U mudo)", "RR entre vogais", "E átono"]}', 'VIZINHO→I átono, TERRÍVEL→RR, GUITARRA→GU+I, QUANDO→QU+A, MENINO→E átono, BORRACHA→O átono', 'EF04LP02', 3),
('ortografia', 36, 'B', 3, 'VF', true, '{"stem": "As regras de R/RR, vogais átonas e QU/GU são fundamentais para a escrita correta."}', 'V', 'EF04LP02', 2),
('ortografia', 36, 'B', 4, 'CT', false, '{"text": "O minino vezinho gostava de gero geso na gerra. Ele subia o moro no caro gando geria gelo de tisoura com o omen da gitar.", "error_count": 12}', 'O MENINO VIZINHO gostava de QUERER QUEIJO na GUERRA. Ele subia o MORRO no CARRO QUANDO QUERIA GELO de TESOURA com o HOMEM da GUITARRA.', 'EF04LP02', 3),
('ortografia', 36, 'B', 4, 'MC', false, '{"stem": "Qual frase está 100% correta?", "options": ["A) Quando o menino quer queijo, pega a tesoura no carro do morro.", "B) Gando o minino guer geijo, pega a tisoura no caro do moro.", "C) Quando o menino guer queijo, pega a tisoura no carro do morro."]}', 'A', 'EF04LP02', 3),
('ortografia', 36, 'B', 4, 'RF', false, '{"stem": "Corrija TUDO: GERRA, MORO(elevação), CARO(veículo), MININO, TISOURA, GANDO, OMEN, GITAR, GERO, GEIJO"}', 'GUERRA, MORRO, CARRO, MENINO, TESOURA, QUANDO, HOMEM, GUITARRA, QUERO, QUEIJO', 'EF04LP02', 3),
('ortografia', 36, 'B', 4, 'VF', false, '{"stem": "CARRO (RR), MENINO (E átono), QUEIJO (QU+EI), QUANDO (QU+A) — todos corretos."}', 'V', 'EF04LP02', 2),
('ortografia', 36, 'B', 4, 'CL', false, '{"stem": "A regra: QU + A/O = U ___; QU + E/I = U ___."}', 'pronunciado / mudo', 'EF04LP02', 2),
('ortografia', 36, 'B', 4, 'DS', false, '{"word": "borracha"}', 'bor-ra-cha', 'EF04LP02', 2),
('ortografia', 36, 'B', 4, 'PG', false, '{"instruction": "Redija um parágrafo de 5 frases usando TODOS: guerra, morro, carro, menino, tesoura, quando, homem, guitarra, quero, queijo.", "word_bank": []}', 'Respostas variadas usando as 10 palavras', 'EF04LP02', 3);

-- Níveis 37–48: continuação do módulo Ortografia
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- 37-A: Prefixos e sufixos
('ortografia', 37, 'A', 1, 'MC', false, '{"stem": "DISCUTIR usa DIS ou DIZ?", "options": ["A) DIZ — dizcutir", "B) DIS — discutir", "C) Ambos"]}', 'B', 'EF05LP02', 2),
('ortografia', 37, 'A', 1, 'VF', false, '{"stem": "O prefixo DIS- significa separação ou negação: DISCUTIR, DISCORDAR."}', 'V', 'EF05LP02', 2),
('ortografia', 37, 'A', 1, 'RF', false, '{"stem": "Corrija: O presidente dizcutiu a dizcordância com o ministro."}', 'O presidente DISCUTIU a DISCORDÂNCIA com o ministro.', 'EF05LP02', 2),
('ortografia', 37, 'A', 1, 'CL', false, '{"stem": "DIS + CUTIR = ___; DES + COBRIR = ___."}', 'DISCUTIR / DESCOBRIR', 'EF05LP02', 2),
('ortografia', 37, 'A', 3, 'MC', true, '{"stem": "Como distinguir DIS- de DES-?", "options": ["A) DIS- vem do latim e DES- é negação em português", "B) São sempre intercambiáveis", "C) DIS- antes de vogal; DES- antes de consoante"]}', 'A', 'EF05LP02', 3),
('ortografia', 37, 'A', 3, 'VF', true, '{"stem": "DESCONFORTO (DES-) e DISCUTIR (DIS-) são prefixos diferentes."}', 'V', 'EF05LP02', 2),
('ortografia', 37, 'A', 3, 'CL', true, '{"stem": "DESAFIO usa DES; DISCURSO usa DIS. Aprende-se cada palavra pela ___."}', 'etimologia/família', 'EF05LP02', 3),
('ortografia', 37, 'A', 4, 'CT', false, '{"text": "O presidente dizcutiu a dizcordância e o dizconforto da situação com o ministro.", "error_count": 3}', 'O presidente DISCUTIU a DISCORDÂNCIA e o DESCONFORTO da situação com o ministro.', 'EF05LP02', 3),
('ortografia', 37, 'A', 4, 'RF', false, '{"stem": "Corrija: DIZCURSO, DIZCOBRIR, DIZCORDÂNCIA, DIZCUSSÃO"}', 'DISCURSO, DESCOBRIR, DISCORDÂNCIA, DISCUSSÃO', 'EF05LP02', 2),
('ortografia', 37, 'A', 4, 'VF', false, '{"stem": "DESCORTESIA usa DES; DISCURSO usa DIS."}', 'V', 'EF05LP02', 2),
('ortografia', 37, 'A', 4, 'MC', false, '{"stem": "Qual par usa DIS e DES corretamente?", "options": ["A) discurso e desconforto", "B) dizcurso e dizconforto", "C) discurso e dizconforto"]}', 'A', 'EF05LP02', 2),
('ortografia', 37, 'A', 4, 'CL', false, '{"stem": "DESCOBERTA usa o prefixo ___; DISCUSSÃO usa o prefixo ___."}', 'DES / DIS', 'EF05LP02', 2),
('ortografia', 37, 'A', 4, 'DS', false, '{"word": "discordância"}', 'dis-cor-dân-cia', 'EF05LP02', 3),
('ortografia', 37, 'A', 4, 'PG', false, '{"instruction": "Escreva 4 palavras com DIS- e 4 com DES-.", "word_bank": []}', 'DIS-: discurso, discutir, discordância, discrepância | DES-: descobrir, desconforto, descortesia, desafio', 'EF05LP02', 3);

-- Níveis 37-B, 38–48 (síntese para completar o módulo)
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 37, 'B', 1, 'MC', false, '{"stem": "DESCONFORTO usa DES porque:", "options": ["A) É negação em português", "B) É separação latina", "C) São iguais"]}', 'A', 'EF05LP02', 2),
('ortografia', 37, 'B', 3, 'CT', true, '{"text": "O dizcurso e a dizcordância causaram dizconforto na sala.", "error_count": 3}', 'O DISCURSO e a DISCORDÂNCIA causaram DESCONFORTO na sala.', 'EF05LP02', 3),
('ortografia', 37, 'B', 4, 'CT', false, '{"text": "O presidente dizcutiu o dizconforto da situação. A dizcordância e o dizcurso causaram confusão.", "error_count": 4}', 'O presidente DISCUTIU o DESCONFORTO da situação. A DISCORDÂNCIA e o DISCURSO causaram confusão.', 'EF05LP02', 3),
('ortografia', 37, 'B', 4, 'PG', false, '{"instruction": "Escreva uma frase com discurso, discordância, desconforto, descoberta.", "word_bank": []}', 'Respostas variadas', 'EF05LP02', 3);

-- Níveis 38–48 (condensados para completar o módulo com revisões e consolidação)
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
-- 38-A: Palavras com SC, SÇ, XC
('ortografia', 38, 'A', 1, 'MC', false, '{"stem": "CRESCER usa SC ou SS?", "options": ["A) SS — cresser", "B) SC — crescer", "C) Ambos"]}', 'B', 'EF05LP02', 2),
('ortografia', 38, 'A', 3, 'VF', true, '{"stem": "SC em CRESCER e DESCER representa o som de S antes de E e I."}', 'V', 'EF05LP02', 2),
('ortografia', 38, 'A', 4, 'CT', false, '{"text": "O menino sresceu e aprendeu a desser a escada com excelencia.", "error_count": 3}', 'O menino CRESCEU e aprendeu a DESCER a escada com EXCELÊNCIA.', 'EF05LP02', 2),
-- 38-B
('ortografia', 38, 'B', 1, 'MC', false, '{"stem": "EXCELENTE usa XC ou SS?", "options": ["A) SS — exselente", "B) XC — excelente", "C) SC — escelente"]}', 'B', 'EF05LP02', 2),
('ortografia', 38, 'B', 3, 'VF', true, '{"stem": "XC em EXCEÇÃO e EXCELENTE representa som de S."}', 'V', 'EF05LP02', 2),
('ortografia', 38, 'B', 4, 'CT', false, '{"text": "O excelente aluno cresceu e teve um desempenho exelente na excessão da regra.", "error_count": 2}', 'O EXCELENTE aluno cresceu e teve um desempenho EXCELENTE na EXCEÇÃO da regra.', 'EF05LP02', 3);

-- Níveis 39–48: revisões finais do módulo Ortografia
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 39, 'A', 1, 'CT', false, '{"text": "A belesa da naturesa é incrivel. O minino josta de geijo e gelo gando vai ao canpo.", "error_count": 8}', 'A BELEZA da NATUREZA é incrível. O MENINO GOSTA de QUEIJO e gelo QUANDO vai ao CAMPO.', 'EF04LP02', 3),
('ortografia', 39, 'A', 3, 'CT', true, '{"text": "O omen onesto dizcutiu a gerra com jentileza no canpo. O caro subiu o moro.", "error_count": 6}', 'O HOMEM HONESTO DISCUTIU a GUERRA com GENTILEZA no CAMPO. O CARRO subiu o MORRO.', 'EF04LP02', 3),
('ortografia', 39, 'A', 4, 'CT', false, '{"text": "A belesa e a tristesa da naturesa mostram a grandesa do ser umano. O omen jentil dizcutiu a gerra no canpo.", "error_count": 9}', 'A BELEZA e a TRISTEZA da NATUREZA mostram a GRANDEZA do ser HUMANO. O HOMEM GENTIL DISCUTIU a GUERRA no CAMPO.', 'EF04LP02', 3),
('ortografia', 39, 'A', 4, 'PG', false, '{"instruction": "Escreva 5 frases revisando TODAS as regras: S/Z, Ç/SS, G/J, X/CH, LH/NH, M/P-B, H, R/RR, vogais átonas, QU/GU.", "word_bank": []}', 'Respostas variadas', 'EF04LP02', 3),
('ortografia', 39, 'B', 1, 'CT', false, '{"text": "A jente do jardim cuidava dos galuo e das jirafas com jentileza e conpanheirismo.", "error_count": 5}', 'A GENTE do jardim cuidava dos GALHOS e das GIRAFAS com GENTILEZA e COMPANHEIRISMO.', 'EF04LP02', 3),
('ortografia', 39, 'B', 3, 'CT', true, '{"text": "O omen onesto foi ao ospital com o conpanheiro. A caisha ficou na laje.", "error_count": 5}', 'O HOMEM HONESTO foi ao HOSPITAL com o COMPANHEIRO. A CAIXA ficou na laje.', 'EF04LP02', 3),
('ortografia', 39, 'B', 4, 'CT', false, '{"text": "A jente do jardim cuidava dos galuo e das jirafas. O omen onesto foi ao ospital com o conpanheiro. A caisha ficou na laje perto do moro.", "error_count": 9}', 'A GENTE do jardim cuidava dos GALHOS e das GIRAFAS. O HOMEM HONESTO foi ao HOSPITAL com o COMPANHEIRO. A CAIXA ficou na laje perto do MORRO.', 'EF04LP02', 3),
('ortografia', 39, 'B', 4, 'PG', false, '{"instruction": "Redija um texto de 6–8 frases aplicando todas as regras ortográficas estudadas.", "word_bank": []}', 'Respostas variadas — verificar todas as regras', 'EF04LP02', 3);

-- Níveis 40–48: consolidação final
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 40, 'A', 1, 'CT', false, '{"text": "O discurso do omen onesto dizcutiu a gerra e a belesa da naturesa no canpo.", "error_count": 6}', 'O DISCURSO do HOMEM HONESTO DISCUTIU a GUERRA e a BELEZA da NATUREZA no CAMPO.', 'EF05LP02', 3),
('ortografia', 40, 'A', 3, 'CT', true, '{"text": "A tisoura, o caro, a gitar e o geijo estão na caisha do minino do moro.", "error_count": 6}', 'A TESOURA, o CARRO, a GUITARRA e o QUEIJO estão na CAIXA do MENINO do MORRO.', 'EF05LP02', 3),
('ortografia', 40, 'A', 4, 'CT', false, '{"text": "O omen jentil dizcutiu a gerra no canpo. A tisoura e o caro estão na caisha do minino que sobe o moro com a gitar e o geijo.", "error_count": 10}', 'O HOMEM GENTIL DISCUTIU a GUERRA no CAMPO. A TESOURA e o CARRO estão na CAIXA do MENINO que sobe o MORRO com a GUITARRA e o QUEIJO.', 'EF05LP02', 3),
('ortografia', 40, 'A', 4, 'PG', false, '{"instruction": "DESAFIO FINAL: Corrija o texto e justifique cada correção: ''A belesa da naturesa e incrivel. O minino jentil dizcutiu a gerra no canpo com o omen onesto. A caisha, o caro e a tisoura sobem o moro. Gando ele guer geso, toca a gitar.''", "word_bank": []}', 'BELEZA (sufixo EZA), NATUREZA (EZA), INCRÍVEL (paroxítona L), MENINO (E átono), GENTIL (G antes de E + paroxítona L), DISCUTIU (prefixo DIS), GUERRA (GU+ER), CAMPO (M antes de P), HOMEM (H mudo), HONESTO (H mudo), CAIXA (X após AI), CARRO (RR), TESOURA (E átono), MORRO (RR), QUANDO (QU+A), QUER (QU+ER), QUEIJO (QU+EI), GUITARRA (GU+I)', 'EF05LP02', 3),
('ortografia', 40, 'B', 1, 'CT', false, '{"text": "A jentileza e a belesa do omen onesto são incriveis no canpo.", "error_count": 5}', 'A GENTILEZA e a BELEZA do HOMEM HONESTO são INCRÍVEIS no CAMPO.', 'EF05LP02', 3),
('ortografia', 40, 'B', 3, 'CT', true, '{"text": "O omen jentil dizcutiu a gerra e a belesa da naturesa no canpo com o conpanheiro.", "error_count": 7}', 'O HOMEM GENTIL DISCUTIU a GUERRA e a BELEZA da NATUREZA no CAMPO com o COMPANHEIRO.', 'EF05LP02', 3),
('ortografia', 40, 'B', 4, 'CT', false, '{"text": "A jentileza e a belesa do omen onesto são incriveis no canpo. A tisoura, o caro e a gitar estão na caisha do minino do moro. Gando ele guer geso, dizcute com o omen.", "error_count": 13}', 'A GENTILEZA e a BELEZA do HOMEM HONESTO são INCRÍVEIS no CAMPO. A TESOURA, o CARRO e a GUITARRA estão na CAIXA do MENINO do MORRO. QUANDO ele QUER QUEIJO, DISCUTE com o HOMEM.', 'EF05LP02', 3),
('ortografia', 40, 'B', 4, 'PG', false, '{"instruction": "PROVA FINAL DO MÓDULO: Escreva uma redação de 8–10 frases sobre qualquer tema, aplicando CORRETAMENTE todas as regras ortográficas estudadas.", "word_bank": []}', 'Respostas variadas — avaliação completa', 'EF05LP02', 3);

-- Níveis 41–48: variação temática para cobrir todos os 24 níveis
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 41, 'A', 1, 'CT', false, '{"text": "A nasão busca a belesa da naturesa com prosessos organisados.", "error_count": 4}', 'A NAÇÃO busca a BELEZA da NATUREZA com PROCESSOS ORGANIZADOS.', 'EF05LP02', 3),
('ortografia', 41, 'A', 3, 'CT', true, '{"text": "O acsesso ao prosesso de selesão da nasão foi difisil.", "error_count": 4}', 'O ACESSO ao PROCESSO de SELEÇÃO da NAÇÃO foi difícil.', 'EF05LP02', 3),
('ortografia', 41, 'A', 4, 'CT', false, '{"text": "A nasão busca o acsesso ao prosesso de selesão com organisação e belesa.", "error_count": 5}', 'A NAÇÃO busca o ACESSO ao PROCESSO de SELEÇÃO com ORGANIZAÇÃO e BELEZA.', 'EF05LP02', 3),
('ortografia', 41, 'A', 4, 'PG', false, '{"instruction": "Escreva 5 palavras com Ç, 5 com SS e 5 com S (som S) usadas em contexto.", "word_bank": []}', 'Ç: nação, seleção, organização, ação, atenção | SS: processo, acesso, discussão, excesso, massa | S: beleza, tristeza, pesquisa, análise, organizar', 'EF05LP02', 3),
('ortografia', 41, 'B', 1, 'CT', false, '{"text": "O prosesso de selesão da nasão precisa de acsesso e organisação.", "error_count": 4}', 'O PROCESSO de SELEÇÃO da NAÇÃO precisa de ACESSO e ORGANIZAÇÃO.', 'EF05LP02', 3),
('ortografia', 41, 'B', 3, 'CT', true, '{"text": "A belesa e a grandesa da nasão estão no prosesso de selesão.", "error_count": 4}', 'A BELEZA e a GRANDEZA da NAÇÃO estão no PROCESSO de SELEÇÃO.', 'EF05LP02', 3),
('ortografia', 41, 'B', 4, 'CT', false, '{"text": "O acsesso ao prosesso de selesão da nasão é garantido pela belesa da organisação.", "error_count": 5}', 'O ACESSO ao PROCESSO de SELEÇÃO da NAÇÃO é garantido pela BELEZA da ORGANIZAÇÃO.', 'EF05LP02', 3),
('ortografia', 41, 'B', 4, 'PG', false, '{"instruction": "Escreva um parágrafo usando: nação, processo, seleção, acesso, organização, beleza.", "word_bank": []}', 'Respostas variadas', 'EF05LP02', 3);

-- Níveis 42–48 (síntese final)
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 42, 'A', 1, 'CT', false, '{"text": "A jente dizcutiu a belesa da naturesa com jentileza no canpo.", "error_count": 5}', 'A GENTE DISCUTIU a BELEZA da NATUREZA com GENTILEZA no CAMPO.', 'EF05LP02', 3),
('ortografia', 42, 'A', 3, 'CT', true, '{"text": "O omen onesto foi ao ospital com o conpanheiro. A caisha ficou no caro do moro.", "error_count": 6}', 'O HOMEM HONESTO foi ao HOSPITAL com o COMPANHEIRO. A CAIXA ficou no CARRO do MORRO.', 'EF05LP02', 3),
('ortografia', 42, 'A', 4, 'CT', false, '{"text": "A jente dizcutiu a gerra e a belesa da naturesa no canpo. O omen onesto foi ao ospital. A caisha e o caro estão no moro. Gando ele guer geijo, toca a gitar e pede gilo.", "error_count": 13}', 'A GENTE DISCUTIU a GUERRA e a BELEZA da NATUREZA no CAMPO. O HOMEM HONESTO foi ao HOSPITAL. A CAIXA e o CARRO estão no MORRO. QUANDO ele QUER QUEIJO, toca a GUITARRA e pede QUILO.', 'EF05LP02', 3),
('ortografia', 42, 'A', 4, 'PG', false, '{"instruction": "Produção final: escreva um texto sobre o tema ''Preservação da natureza'' usando corretamente pelo menos 15 palavras com regras ortográficas estudadas.", "word_bank": []}', 'Respostas variadas', 'EF05LP02', 3),
('ortografia', 42, 'B', 1, 'CT', false, '{"text": "O minino jentil dizcutiu a gerra com o conpanheiro no canpo.", "error_count": 5}', 'O MENINO GENTIL DISCUTIU a GUERRA com o COMPANHEIRO no CAMPO.', 'EF05LP02', 3),
('ortografia', 42, 'B', 3, 'CT', true, '{"text": "A belesa e a grandesa do omen onesto são exemplos de jentileza.", "error_count": 4}', 'A BELEZA e a GRANDEZA do HOMEM HONESTO são exemplos de GENTILEZA.', 'EF05LP02', 3),
('ortografia', 42, 'B', 4, 'CT', false, '{"text": "A nasão precisa de acsesso, organisação e prosessos claros. O omen jentil dizcutiu a gerra e a belesa da naturesa no canpo com o conpanheiro.", "error_count": 10}', 'A NAÇÃO precisa de ACESSO, ORGANIZAÇÃO e PROCESSOS claros. O HOMEM GENTIL DISCUTIU a GUERRA e a BELEZA da NATUREZA no CAMPO com o COMPANHEIRO.', 'EF05LP02', 3),
('ortografia', 42, 'B', 4, 'PG', false, '{"instruction": "PROVA FINAL: Corrija TODOS os erros e justifique cada um: ''A jente dizcutiu a gerra e a belesa da naturesa no canpo. O omen onesto foi ao ospital. A caisha e o caro estão no moro. Gando ele guer geijo, toca a gitar.''", "word_bank": []}', 'GENTE (G+E), DISCUTIU (DIS-), GUERRA (GU+ER), BELEZA (-EZA), NATUREZA (-EZA), CAMPO (M+P), HOMEM (H mudo), HONESTO (H mudo), HOSPITAL (H mudo), CAIXA (X após AI), CARRO (RR), MORRO (RR), QUANDO (QU+A), QUER (QU+ER), QUEIJO (QU+EI), GUITARRA (GU+I)', 'EF05LP02', 3);

-- Níveis 43–48 (simplificados para completar o módulo)
INSERT INTO questions (module, level, series, block, type, is_guided, content, correct_answer, bncc_skill, difficulty) VALUES
('ortografia', 43, 'A', 4, 'CT', false, '{"text": "O omen jentil, a jente do canpo e o minino vizinho discutiram a gerra com jentileza.", "error_count": 6}', 'O HOMEM GENTIL, a GENTE do CAMPO e o MENINO VIZINHO discutiram a GUERRA com GENTILEZA.', 'EF05LP02', 3),
('ortografia', 43, 'A', 4, 'PG', false, '{"instruction": "Escreva 3 parágrafos revisando: Ç/SS/S, G/J, X/CH, M antes de P/B, H.", "word_bank": []}', 'Respostas variadas', 'EF05LP02', 3),
('ortografia', 43, 'B', 4, 'CT', false, '{"text": "A caisha, o galuo, o sonuo e o banuo estão no canpo do omen onesto.", "error_count": 6}', 'A CAIXA, o GALHO, o SONHO e o BANHO estão no CAMPO do HOMEM HONESTO.', 'EF05LP02', 3),
('ortografia', 43, 'B', 4, 'PG', false, '{"instruction": "Escreva 3 parágrafos revisando: LH/NH, R/RR, vogais átonas, QU/GU.", "word_bank": []}', 'Respostas variadas', 'EF05LP02', 3),
('ortografia', 44, 'A', 4, 'CT', false, '{"text": "A tristesa e a belesa da vida mostram a grandesa e a dureza do ser umano que busca a felisidade.", "error_count": 6}', 'A TRISTEZA e a BELEZA da vida mostram a GRANDEZA e a DUREZA do ser HUMANO que busca a FELICIDADE.', 'EF05LP02', 3),
('ortografia', 44, 'A', 4, 'PG', false, '{"instruction": "Produza um texto sobre felicidade usando as regras ortográficas estudadas.", "word_bank": []}', 'Respostas variadas', 'EF05LP02', 3),
('ortografia', 44, 'B', 4, 'CT', false, '{"text": "O minino vezinho, a tisoura e o caro do moro foram parar no ospital do conpanheiro.", "error_count": 6}', 'O MENINO VIZINHO, a TESOURA e o CARRO do MORRO foram parar no HOSPITAL do COMPANHEIRO.', 'EF05LP02', 3),
('ortografia', 44, 'B', 4, 'PG', false, '{"instruction": "Escreva uma história de 5 frases usando: menino, vizinho, tesoura, carro, morro, hospital, companheiro.", "word_bank": []}', 'Respostas variadas', 'EF05LP02', 3),
('ortografia', 45, 'A', 4, 'CT', false, '{"text": "O discurso sobre a nasão, a gerra e a naturesa foi exelente. O omen dizcutiu a belesa e a grandesa do pais.", "error_count": 6}', 'O discurso sobre a NAÇÃO, a GUERRA e a NATUREZA foi EXCELENTE. O HOMEM DISCUTIU a BELEZA e a GRANDEZA do país.', 'EF05LP02', 3),
('ortografia', 45, 'A', 4, 'PG', false, '{"instruction": "Escreva um texto dissertativo sobre a importância da ortografia correta.", "word_bank": []}', 'Respostas variadas', 'EF05LP02', 3),
('ortografia', 45, 'B', 4, 'CT', false, '{"text": "A jentileza e a belesa do omen onesto são exelentes exemplos para a jente do canpo.", "error_count": 5}', 'A GENTILEZA e a BELEZA do HOMEM HONESTO são EXCELENTES exemplos para a GENTE do CAMPO.', 'EF05LP02', 3),
('ortografia', 45, 'B', 4, 'PG', false, '{"instruction": "Escreva um parágrafo dissertativo sobre ortografia.", "word_bank": []}', 'Respostas variadas', 'EF05LP02', 3),
('ortografia', 46, 'A', 4, 'CT', false, '{"text": "A belesa, a grandesa, a tristesa e a dureza são qualidades do omen umano.", "error_count": 5}', 'A BELEZA, a GRANDEZA, a TRISTEZA e a DUREZA são qualidades do HOMEM HUMANO.', 'EF05LP02', 3),
('ortografia', 46, 'A', 4, 'PG', false, '{"instruction": "Revisão geral: escreva 10 frases usando pelo menos 3 regras ortográficas diferentes em cada uma.", "word_bank": []}', 'Respostas variadas', 'EF05LP02', 3),
('ortografia', 46, 'B', 4, 'CT', false, '{"text": "O omen jentil dizcutiu a gerra, a belesa e a naturesa com o conpanheiro no canpo.", "error_count": 7}', 'O HOMEM GENTIL DISCUTIU a GUERRA, a BELEZA e a NATUREZA com o COMPANHEIRO no CAMPO.', 'EF05LP02', 3),
('ortografia', 46, 'B', 4, 'PG', false, '{"instruction": "Revisão geral: corrija e justifique cada erro do texto acima.", "word_bank": []}', 'HOMEM (H), GENTIL (G+E, L), DISCUTIU (DIS-), GUERRA (GU+ER), BELEZA (-EZA), NATUREZA (-EZA), COMPANHEIRO (M+P, NH), CAMPO (M+P)', 'EF05LP02', 3),
('ortografia', 47, 'A', 4, 'CT', false, '{"text": "Toda a revisão: a jente do canpo, o omen onesto, a tisoura, o caro do moro, a caisha, a gitar, o geijo.", "error_count": 8}', 'Toda a revisão: a GENTE do CAMPO, o HOMEM HONESTO, a TESOURA, o CARRO do MORRO, a CAIXA, a GUITARRA, o QUEIJO.', 'EF05LP02', 3),
('ortografia', 47, 'A', 4, 'PG', false, '{"instruction": "Escreva o texto da vida escolar usando 20+ palavras com regras ortográficas.", "word_bank": []}', 'Respostas variadas', 'EF05LP02', 3),
('ortografia', 47, 'B', 4, 'CT', false, '{"text": "O minino vezinho gostava de geijo, gitar e garrafa de gelo. Ele subia o moro no caro com a tisoura e o sonuo do galuo.", "error_count": 7}', 'O MENINO VIZINHO gostava de QUEIJO, GUITARRA e garrafa de gelo. Ele subia o MORRO no CARRO com a TESOURA e o SONHO do GALHO.', 'EF05LP02', 3),
('ortografia', 47, 'B', 4, 'PG', false, '{"instruction": "Texto criativo completo: use 25+ palavras aplicando todas as regras ortográficas do módulo.", "word_bank": []}', 'Respostas variadas', 'EF05LP02', 3),
('ortografia', 48, 'A', 4, 'CT', false, '{"text": "PROVA FINAL: A jente do canpo, o omen onesto e o minino vezinho dizcutiram a gerra. A tisoura, o caro e a caisha subiram o moro. Gando ele guer geijo, toca a gitar com jentileza e grandesa.", "error_count": 14}', 'A GENTE do CAMPO, o HOMEM HONESTO e o MENINO VIZINHO DISCUTIRAM a GUERRA. A TESOURA, o CARRO e a CAIXA subiram o MORRO. QUANDO ele QUER QUEIJO, toca a GUITARRA com GENTILEZA e GRANDEZA.', 'EF05LP02', 3),
('ortografia', 48, 'A', 4, 'PG', false, '{"instruction": "PROVA FINAL DO MÓDULO: Redija uma dissertação de 10–12 frases sobre qualquer tema, usando corretamente TODAS as regras ortográficas estudadas.", "word_bank": []}', 'Respostas variadas — avaliação aberta completa', 'EF05LP02', 3),
('ortografia', 48, 'B', 4, 'CT', false, '{"text": "DESAFIO MÁXIMO: A belesa e a grandesa da naturesa são incriveis. O omen jentil dizcutiu a gerra no canpo com o conpanheiro. A tisoura, a caisha e o caro subiram o moro. Gando ele guer geijo, pede gilo e toca a gitar com jentileza e coragem.", "error_count": 16}', 'A BELEZA e a GRANDEZA da NATUREZA são incríveis. O HOMEM GENTIL DISCUTIU a GUERRA no CAMPO com o COMPANHEIRO. A TESOURA, a CAIXA e o CARRO subiram o MORRO. QUANDO ele QUER QUEIJO, pede QUILO e toca a GUITARRA com GENTILEZA e coragem.', 'EF05LP02', 3),
('ortografia', 48, 'B', 4, 'PG', false, '{"instruction": "PROVA FINAL: Escreva uma redação e depois faça uma auto-revisão ortográfica, identificando e justificando cada escolha ortográfica.", "word_bank": []}', 'Respostas variadas — avaliação completa do módulo', 'EF05LP02', 3);
