-- ============================================================
-- GeraFicha — Módulo 3: Classes de Palavras
-- Níveis 55–72 | Séries A e B
-- ============================================================

-- Nível 55A — Verbos: tempo (presente, passado, futuro)
INSERT INTO questions (module, level, series, type, question, options, answer, explanation) VALUES
('classes', 55, 'A', 'MC', 'O tempo verbal indica:', '["a pessoa que pratica a ação","quando a ação acontece","o modo como a ação é praticada","a intensidade da ação"]', 'quando a ação acontece', 'O tempo verbal situa a ação no presente, passado ou futuro.'),
('classes', 55, 'A', 'CL', 'Classifique em Presente / Passado / Futuro: correu — estuda — chegará — brincou — vai cantar — lê', '[]', 'Passado / Presente / Futuro / Passado / Futuro / Presente', 'Correu e brincou = passado; estuda e lê = presente; chegará e vai cantar = futuro.'),
('classes', 55, 'A', 'VF', 'Na frase "Amanhã eu vou viajar", o verbo está no futuro.', '[]', 'Verdadeiro', '"Vou viajar" é futuro perifrástico (ir + infinitivo) — ação que ainda vai acontecer.'),
('classes', 55, 'A', 'RF', 'Passe para o passado: "Ela estuda muito." → "Ela ___ muito." / "Ele corre todo dia." → "Ele ___ todo dia."', '[]', 'estudou / correu', 'Passado simples do indicativo: estuda → estudou; corre → correu.'),
('classes', 55, 'A', 'MC', 'Qual verbo está no presente?', '["cantei","cantarei","canto","cantaria"]', 'canto', 'Canto é 1ª pessoa do singular do presente do indicativo.'),
('classes', 55, 'A', 'DS', 'Reescreva a frase nos 3 tempos: "A criança brinca no parque."', '[]', 'Presente: A criança brinca. / Passado: A criança brincou. / Futuro: A criança vai brincar (brincará).', 'A mesma ação pode ser expressa em diferentes tempos verbais.'),
('classes', 55, 'A', 'VF', '"Dormiremos cedo" está no futuro do presente.', '[]', 'Verdadeiro', 'Dormiremos indica ação futura — futuro do presente: -remos é desinência de futuro.'),
('classes', 55, 'A', 'CL', 'Identifique o tempo: estudamos hoje (___) / viajamos ontem (___) / viajaremos amanhã (___)', '[]', 'presente / passado / futuro', 'Os advérbios hoje, ontem e amanhã ajudam a identificar o tempo verbal.'),
('classes', 55, 'A', 'MC', 'Qual é o passado do verbo "fazer"?', '["fazerei","farei","fiz","fazia"]', 'fiz', 'Fiz é o passado perfeito (pretérito perfeito) irregular do verbo fazer.'),
('classes', 55, 'A', 'RF', 'Passe para o futuro: "Pedro estudou para a prova." → "Pedro ___ para a prova."', '[]', 'Pedro vai estudar / estudará para a prova.', 'Futuro pode ser expresso com "vai + infinitivo" ou com a desinência -rá.'),

-- Nível 55B — Verbos: tempo (presente, passado, futuro)
('classes', 55, 'B', 'VF', 'O pretérito imperfeito expressa uma ação habitual ou em progresso no passado.', '[]', 'Verdadeiro', 'Pretérito imperfeito: "Eu estudava todos os dias" — hábito passado.'),
('classes', 55, 'B', 'MC', 'Qual frase usa o pretérito IMPERFEITO do indicativo?', '["Eu corri muito.","Eu corria todos os dias.","Eu correrei amanhã.","Eu corra agora."]', 'Eu corria todos os dias.', 'Corria é o imperfeito — ação habitual/contínua no passado.'),
('classes', 55, 'B', 'CL', 'Classifique o tempo de cada verbo: dormia / dormiu / dormirá / dorme', '[]', 'Passado (imperfeito) / Passado (perfeito) / Futuro / Presente', 'Dormia = hábito passado; dormiu = ação concluída no passado; dormirá = futuro; dorme = presente.'),
('classes', 55, 'B', 'RF', 'Reescreva no pretérito imperfeito: "Ela estuda até tarde." → "Ela ___ até tarde."', '[]', 'Ela estudava até tarde.', 'Imperfeito da 1ª conjugação: -ava. Estudava = hábito passado.'),
('classes', 55, 'B', 'DS', 'Explique a diferença entre "Ele comeu o bolo" e "Ele comia o bolo".', '[]', '"Comeu" = passado perfeito (ação concluída, aconteceu uma vez). "Comia" = passado imperfeito (ação habitual ou em progresso no passado).', 'O pretérito perfeito indica ação concluída; o imperfeito, ação contínua ou habitual.'),
('classes', 55, 'B', 'MC', 'Qual tempo verbal é usado para dar ordens diretas?', '["Futuro do indicativo","Imperativo","Pretérito perfeito","Futuro do pretérito"]', 'Imperativo', 'O imperativo é o modo usado para dar ordens, pedidos ou conselhos: Venha! Estude!'),
('classes', 55, 'B', 'VF', '"Eu iria à festa se pudesse" está no futuro do pretérito (condicional).', '[]', 'Verdadeiro', 'Iria é o futuro do pretérito — ação que dependeria de uma condição.'),
('classes', 55, 'B', 'CL', 'Relate cada frase ao tempo correto: "Ela cantará amanhã" / "Ela cantava quando criança" / "Ela cantou ontem"', '[]', 'Futuro / Passado imperfeito / Passado perfeito', 'Amanhã = futuro; quando criança (hábito) = imperfeito; ontem (concluído) = perfeito.'),
('classes', 55, 'B', 'RF', 'Use o verbo "ser" nos 3 tempos: presente, passado perfeito e futuro (1ª pessoa singular).', '[]', 'Presente: sou / Passado: fui / Futuro: serei', 'Ser é verbo irregular — suas formas mudam completamente em cada tempo.'),
('classes', 55, 'B', 'MC', 'O modo subjuntivo é usado para expressar:', '["certeza e fatos reais","dúvida, hipótese ou desejo","ordens diretas","ações habituais"]', 'dúvida, hipótese ou desejo', 'Subjuntivo: "Espero que ele venha" — desejo/hipótese.');

-- Nível 56A — Advérbios: conceito e tipos
INSERT INTO questions (module, level, series, type, question, options, answer, explanation) VALUES
('classes', 56, 'A', 'MC', 'O advérbio é a palavra que modifica principalmente:', '["o substantivo","o artigo","o verbo, o adjetivo ou outro advérbio","o numeral"]', 'o verbo, o adjetivo ou outro advérbio', 'Advérbio modifica verbo (corre rapidamente), adjetivo (muito bonito) ou outro advérbio (bem devagar).'),
('classes', 56, 'A', 'CL', 'Identifique o tipo de advérbio: ontem (___) / aqui (___) / nunca (___) / muito (___) / talvez (___)', '[]', 'tempo / lugar / negação ou tempo / intensidade / dúvida', 'Advérbios se classificam pelo sentido que expressam.'),
('classes', 56, 'A', 'VF', 'A palavra "rapidamente" é um advérbio de modo.', '[]', 'Verdadeiro', 'Advérbios terminados em -mente geralmente expressam modo: rapidamente, cuidadosamente.'),
('classes', 56, 'A', 'RF', 'Forme advérbios de modo com os adjetivos: feliz → ___ / lento → ___ / cuidadoso → ___', '[]', 'felizmente / lentamente / cuidadosamente', 'Para formar advérbio de modo: adjetivo no feminino + -mente.'),
('classes', 56, 'A', 'MC', 'Em "Ela canta muito bem", o advérbio "muito" modifica:', '["canta","ela","bem","o sentido da frase"]', 'bem', 'Muito é advérbio de intensidade que modifica o advérbio bem.'),
('classes', 56, 'A', 'DS', 'Escreva um advérbio de cada tipo: lugar, tempo, modo, intensidade, negação.', '[]', 'Exemplos: Lugar: aqui / Tempo: hoje / Modo: calmamente / Intensidade: muito / Negação: não', 'Cada tipo de advérbio expressa uma circunstância diferente.'),
('classes', 56, 'A', 'VF', '"Não" e "nunca" são advérbios de negação.', '[]', 'Verdadeiro', 'Não, nunca, jamais, tampouco são advérbios de negação.'),
('classes', 56, 'A', 'CL', 'Classifique cada advérbio em negrito: "Ele [sempre] estuda [aqui] e [nunca] chega [tarde]."', '[]', 'sempre = tempo / aqui = lugar / nunca = negação/tempo / tarde = tempo', 'Advérbios classificam-se pelo sentido que expressam na frase.'),
('classes', 56, 'A', 'MC', 'Qual é o advérbio de dúvida?', '["certamente","jamais","talvez","bastante"]', 'talvez', 'Talvez, quiçá, provavelmente são advérbios de dúvida.'),
('classes', 56, 'A', 'DS', 'Escreva 3 frases, cada uma com um tipo diferente de advérbio, e destaque o advérbio.', '[]', 'Exemplos: Ela chegou [ontem]. (tempo) / Estude [aqui]. (lugar) / Ele fez [cuidadosamente]. (modo)', 'Advérbios enriquecem as frases indicando circunstâncias.'),

-- Nível 56B — Advérbios: conceito e tipos
('classes', 56, 'B', 'MC', 'Em qual frase o advérbio modifica um adjetivo?', '["Ela corre rapidamente.","O filme é muito interessante.","Nunca saio tarde.","Ele chegou hoje."]', 'O filme é muito interessante.', 'Muito modifica o adjetivo interessante — intensifica a qualidade.'),
('classes', 56, 'B', 'VF', 'Advérbios são invariáveis (não mudam de gênero ou número).', '[]', 'Verdadeiro', 'Advérbios são palavras invariáveis: rapidamente permanece igual para masculino/feminino, singular/plural.'),
('classes', 56, 'B', 'CL', 'Identifique o tipo: provavelmente (___) / calmamente (___) / aí (___) / ontem (___) / sim (__)', '[]', 'dúvida / modo / lugar / tempo / afirmação', 'Provavelmente = dúvida; calmamente = modo; aí = lugar; ontem = tempo; sim = afirmação.'),
('classes', 56, 'B', 'RF', 'Transforme o adjetivo em advérbio de modo e use em frase: alegre → ___ / rápido → ___ / tranquilo → ___', '[]', 'alegremente / rapidamente / tranquilamente', 'Adjetivo (feminino) + -mente = advérbio de modo.'),
('classes', 56, 'B', 'DS', 'Reescreva a frase inserindo advérbios que mudem o sentido: "O aluno estudou."', '[]', 'Exemplos: O aluno [raramente] estudou [ontem] [aqui]. / O aluno [nunca] estudou [suficientemente].', 'Advérbios acrescentam informações de tempo, lugar, modo e frequência.'),
('classes', 56, 'B', 'MC', '"Certamente", "definitivamente" e "realmente" são advérbios de:', '["dúvida","afirmação","negação","modo"]', 'afirmação', 'Certamente, definitivamente e realmente afirmam ou confirmam o que foi dito.'),
('classes', 56, 'B', 'VF', 'Advérbios de intensidade como "muito", "pouco" e "bastante" podem modificar adjetivos.', '[]', 'Verdadeiro', 'Muito bonito, pouco eficiente, bastante difícil — advérbio de intensidade + adjetivo.'),
('classes', 56, 'B', 'CL', 'Separe: advérbios / palavras que NÃO são advérbios: aqui, lindo, nunca, correr, calmamente, alegre', '[]', 'Advérbios: aqui, nunca, calmamente | Não são: lindo, correr, alegre', 'Lindo e alegre são adjetivos; correr é verbo.'),
('classes', 56, 'B', 'RF', 'Substitua o advérbio por outro de mesmo tipo: "Ela chegou [ontem]." / "Estude [aqui]." / "Não venha."', '[]', 'Exemplos: anteontem (tempo) / lá ou aí (lugar) / jamais (negação)', 'Dentro de cada tipo, há vários advérbios equivalentes.'),
('classes', 56, 'B', 'MC', 'Qual função o advérbio "bem" exerce em "Ela dança bem"?', '["Modifica o substantivo ela","Modifica o verbo dança","Modifica o adjetivo","É o sujeito da frase"]', 'Modifica o verbo dança', 'Bem é advérbio de modo que modifica o verbo dança — indica como ela dança.');

-- Nível 57A — Pronomes: conceito e tipos
INSERT INTO questions (module, level, series, type, question, options, answer, explanation) VALUES
('classes', 57, 'A', 'MC', 'O pronome é a palavra que:', '["qualifica o substantivo","substitui ou acompanha o substantivo","expressa ação","indica fenômenos naturais"]', 'substitui ou acompanha o substantivo', 'Pronome substitui o substantivo (Ele chegou) ou o acompanha (Esta casa).'),
('classes', 57, 'A', 'CL', 'Identifique P (pronome) ou N (não é pronome): ele — bonito — meu — correr — aquele — sempre', '[]', 'P — N — P — N — P — N', 'Ele, meu e aquele substituem ou acompanham substantivos — são pronomes.'),
('classes', 57, 'A', 'VF', 'Em "Eu estudei muito", "eu" é pronome pessoal do caso reto.', '[]', 'Verdadeiro', 'Eu é pronome pessoal do caso reto — exerce função de sujeito.'),
('classes', 57, 'A', 'RF', 'Substitua o substantivo pelo pronome pessoal: "O Pedro chegou cedo." → "___ chegou cedo." / "A Maria e eu fomos ao cinema." → "___ fomos ao cinema."', '[]', 'Ele chegou cedo. / Nós fomos ao cinema.', 'Pedro (masc. sing.) → ele; Maria e eu → nós.'),
('classes', 57, 'A', 'MC', 'Qual é o pronome pessoal do caso oblíquo átono que corresponde a "eu"?', '["me","mim","eu","nós"]', 'me', 'Me é o pronome oblíquo átono de 1ª pessoa singular: "Ele me viu."'),
('classes', 57, 'A', 'DS', 'Liste os pronomes pessoais do caso reto em todas as pessoas.', '[]', '1ª sing.: eu / 2ª sing.: tu / 3ª sing.: ele, ela / 1ª pl.: nós / 2ª pl.: vós / 3ª pl.: eles, elas', 'Os pronomes pessoais do caso reto exercem função de sujeito na frase.'),
('classes', 57, 'A', 'VF', '"Meu", "teu" e "seu" são pronomes possessivos.', '[]', 'Verdadeiro', 'Pronomes possessivos indicam posse: meu livro (do eu), teu lápis (do tu).'),
('classes', 57, 'A', 'CL', 'Classifique o pronome em negrito: [Este] livro é meu. / [Ele] chegou tarde. / Eu vi [o].', '[]', 'demonstrativo / pessoal reto / pessoal oblíquo átono', 'Este aponta para algo próximo; ele substitui sujeito; o substitui objeto.'),
('classes', 57, 'A', 'MC', 'Em "Aquela casa é linda", "aquela" é pronome:', '["pessoal","possessivo","demonstrativo","interrogativo"]', 'demonstrativo', 'Aquela aponta/demonstra um referente distante no espaço ou no tempo.'),
('classes', 57, 'A', 'DS', 'Escreva uma frase com cada tipo de pronome: pessoal, possessivo, demonstrativo.', '[]', 'Exemplos: Pessoal: Eu gosto de ler. / Possessivo: Meu caderno sumiu. / Demonstrativo: Aquele livro é ótimo.', 'Cada tipo de pronome tem função específica na frase.'),

-- Nível 57B — Pronomes: conceito e tipos
('classes', 57, 'B', 'VF', 'Os pronomes demonstrativos "este/esse/aquele" indicam distâncias diferentes.', '[]', 'Verdadeiro', 'Este = perto do falante; esse = perto do ouvinte; aquele = longe de ambos.'),
('classes', 57, 'B', 'MC', 'Qual pronome usa-se para algo PRÓXIMO DO FALANTE?', '["aquele","esse","este","aquela"]', 'este', 'Este (e esta, isto) refere-se a algo próximo de quem fala.'),
('classes', 57, 'B', 'CL', 'Identifique o tipo de pronome: quem (___) / ninguém (___) / cada (___) / minha (___)', '[]', 'relativo ou interrogativo / indefinido / indefinido / possessivo', 'Quem = relativo/interrogativo; ninguém e cada = indefinidos; minha = possessivo.'),
('classes', 57, 'B', 'RF', 'Substitua os termos em negrito por pronomes adequados: "[O professor] explicou a lição para [os alunos]."', '[]', 'Ele explicou a lição para eles.', 'O professor (masc. sing.) → ele; os alunos (masc. pl.) → eles.'),
('classes', 57, 'B', 'DS', 'Explique a diferença entre "tu" e "você" no uso cotidiano.', '[]', 'Tu é pronome de 2ª pessoa; você é tratamento de 3ª pessoa usado informalmente como 2ª. Ambos se referem ao interlocutor.', 'No Brasil, você substituiu praticamente tu no uso coloquial, mas tu ainda é usado em algumas regiões.'),
('classes', 57, 'B', 'MC', 'Em "Alguém deixou o caderno aqui", "alguém" é pronome:', '["pessoal","demonstrativo","possessivo","indefinido"]', 'indefinido', 'Alguém é pronome indefinido — refere-se a pessoa não identificada.'),
('classes', 57, 'B', 'VF', '"Nos" pode ser pronome oblíquo (objeto) e "nós" é pronome sujeito.', '[]', 'Verdadeiro', '"Nós fomos" (sujeito) vs. "Ele nos viu" (objeto/pronome oblíquo).'),
('classes', 57, 'B', 'CL', 'Separe em Pronome / Não é pronome: ela, lindo, sua, correr, aquele, rapidamente', '[]', 'Pronomes: ela, sua, aquele | Não são: lindo, correr, rapidamente', 'Ela (pessoal), sua (possessivo), aquele (demonstrativo) são pronomes.'),
('classes', 57, 'B', 'RF', 'Complete com o pronome possessivo adequado: "Perdi ___ chave." (de mim) / "Onde está ___ livro?" (de você) / "___ time ganhou!" (de nós)', '[]', 'minha / seu (ou teu) / nosso', 'Possessivos concordam com o possuidor: meu/minha (eu), seu/sua (você), nosso/nossa (nós).'),
('classes', 57, 'B', 'MC', 'O pronome relativo "que" em "O livro que eu comprei é caro" exerce a função de:', '["sujeito","objeto direto","adjunto adverbial","predicativo"]', 'objeto direto', '"que" = o livro (comprei o livro) — objeto direto do verbo comprei.');

-- Nível 58A — Artigos, preposições e conjunções
INSERT INTO questions (module, level, series, type, question, options, answer, explanation) VALUES
('classes', 58, 'A', 'MC', 'O artigo é a palavra que:', '["indica ação","acompanha e determina o substantivo","substitui o substantivo","qualifica o substantivo"]', 'acompanha e determina o substantivo', 'Artigo determina o substantivo como definido (o, a) ou indefinido (um, uma).'),
('classes', 58, 'A', 'CL', 'Classifique em Definido (D) ou Indefinido (I): o — um — a — uns — as — umas', '[]', 'D — I — D — I — D — I', 'O, a, os, as são definidos. Um, uma, uns, umas são indefinidos.'),
('classes', 58, 'A', 'VF', 'As preposições são palavras invariáveis que ligam termos da oração.', '[]', 'Verdadeiro', 'Preposições como de, em, para, com, por ligam palavras sem mudar de forma.'),
('classes', 58, 'A', 'RF', 'Complete com a preposição adequada: "Fui ___ escola." / "Gosto ___ música." / "Ele mora ___ São Paulo."', '[]', 'à (ou para a) / de / em', 'Preposições estabelecem relações entre as palavras na frase.'),
('classes', 58, 'A', 'MC', 'A conjunção "mas" é usada para expressar:', '["adição","oposição/contraste","alternativa","conclusão"]', 'oposição/contraste', '"Mas" é conjunção adversativa — indica oposição: "Estudei, mas não passei."'),
('classes', 58, 'A', 'DS', 'Escreva frases com as conjunções: e, mas, ou, porque, portanto.', '[]', 'Exemplos: e = Comprei pão e leite. / mas = Estudei, mas errei. / ou = Vai de ônibus ou a pé? / porque = Chorou porque se machucou. / portanto = Estudou, portanto passou.', 'Conjunções ligam orações ou palavras expressando relações lógicas.'),
('classes', 58, 'A', 'VF', '"De", "em", "para" e "com" são exemplos de preposições.', '[]', 'Verdadeiro', 'São preposições simples e muito usadas no português.'),
('classes', 58, 'A', 'CL', 'Identifique a classe: o — bonito — de — e — correu — um', '[]', 'artigo — adjetivo — preposição — conjunção — verbo — artigo', 'Cada palavra pertence a uma classe gramatical com função específica.'),
('classes', 58, 'A', 'MC', 'Qual conjunção indica CAUSA?', '["portanto","porém","porque","logo"]', 'porque', '"Porque" é conjunção causal — indica a causa de algo: "Choro porque estou feliz."'),
('classes', 58, 'A', 'DS', 'Explique a diferença entre "artigo definido" e "artigo indefinido" com exemplos.', '[]', 'Definido (o, a): especifica um ser já conhecido. Ex: "O livro que comprei." / Indefinido (um, uma): indica ser não identificado. Ex: "Comprei um livro."', 'O artigo definido aponta algo específico; o indefinido, algo genérico ou desconhecido.'),

-- Nível 58B — Artigos, preposições e conjunções
('classes', 58, 'B', 'VF', '"Ao" é a contração da preposição "a" com o artigo "o".', '[]', 'Verdadeiro', 'Ao = a + o (contração). Outros exemplos: do = de + o; no = em + o.'),
('classes', 58, 'B', 'MC', '"Fui ao mercado" — "ao" é formado pela contração de:', '["de + o","em + o","a + o","para + o"]', 'a + o', 'Ao = a + o. Da mesma forma: à = a + a (crase).'),
('classes', 58, 'B', 'CL', 'Identifique a preposição e sua relação: "Livro de Pedro" (___) / "Caixa de madeira" (___) / "Viagem para o Sul" (___)', '[]', 'de = posse / de = matéria / para = direção', 'A mesma preposição pode expressar relações diferentes conforme o contexto.'),
('classes', 58, 'B', 'RF', 'Junte as orações com a conjunção adequada: "Estudei. Fui aprovado." → ___ / "Corri. Cheguei atrasado." → ___', '[]', 'Estudei e fui aprovado. (ou: portanto fui aprovado) / Corri, mas cheguei atrasado.', 'Conjunções estabelecem relações de adição, oposição, causa, etc.'),
('classes', 58, 'B', 'DS', 'Escreva 3 contrações (preposição + artigo) e suas composições.', '[]', 'Exemplos: do = de + o / na = em + a / pelo = por + o / numa = em + uma', 'Contrações são muito comuns no português e simplificam a fala/escrita.'),
('classes', 58, 'B', 'MC', 'Qual conjunção indica CONCLUSÃO?', '["mas","porque","portanto","ou"]', 'portanto', '"Portanto", "logo" e "então" são conjunções conclusivas.'),
('classes', 58, 'B', 'VF', '"E" pode ser conjunção aditiva, mas em alguns contextos pode indicar oposição.', '[]', 'Verdadeiro', '"Ela sorriu e chorou ao mesmo tempo." — o "e" aqui indica contraste, não simples adição.'),
('classes', 58, 'B', 'CL', 'Classifique as conjunções — Aditiva / Adversativa / Alternativa / Conclusiva / Causal: e / mas / ou / logo / porque', '[]', 'e = aditiva / mas = adversativa / ou = alternativa / logo = conclusiva / porque = causal', 'As conjunções coordenativas têm cinco tipos principais.'),
('classes', 58, 'B', 'RF', 'Complete com artigo (o, a, um, uma) ou preposição (de, em, para, com): "___ menino foi ___ escola ___ seu amigo."', '[]', 'O menino foi à (para a) escola com seu amigo.', 'O (artigo definido masc.); à/para a (preposição + artigo); com (preposição).'),
('classes', 58, 'B', 'MC', 'Qual palavra NÃO é preposição?', '["sob","após","nunca","entre"]', 'nunca', 'Nunca é advérbio de tempo/negação. Sob, após e entre são preposições.');

-- Nível 59A — Numerais
INSERT INTO questions (module, level, series, type, question, options, answer, explanation) VALUES
('classes', 59, 'A', 'MC', 'Os numerais são palavras que indicam:', '["qualidade dos seres","quantidade ou ordem","substituição do substantivo","ação praticada"]', 'quantidade ou ordem', 'Numerais expressam quantidade (cinco livros) ou ordem (primeiro lugar).'),
('classes', 59, 'A', 'CL', 'Classifique em Cardinal (C) ou Ordinal (O): três — segundo — dez — quinto — cem — primeiro', '[]', 'C — O — C — O — C — O', 'Cardinais = quantidade; ordinais = ordem.'),
('classes', 59, 'A', 'VF', '"Décimo" é um numeral ordinal.', '[]', 'Verdadeiro', 'Décimo indica posição/ordem: "Ficou em décimo lugar."'),
('classes', 59, 'A', 'RF', 'Escreva por extenso: 1º → ___ / 2º → ___ / 3º → ___ / 10º → ___', '[]', 'primeiro / segundo / terceiro / décimo', 'Numerais ordinais são usados para indicar posição ou sequência.'),
('classes', 59, 'A', 'MC', 'Qual numeral é FRACIONÁRIO?', '["quinto","dois","metade","terceiro"]', 'metade', 'Fracionários indicam partes de um todo: metade, um terço, um quarto.'),
('classes', 59, 'A', 'DS', 'Escreva 3 numerais cardinais, 3 ordinais e 3 fracionários.', '[]', 'Cardinais: um, dez, cem / Ordinais: primeiro, segundo, décimo / Fracionários: metade, um terço, um quarto', 'Os três tipos principais de numerais têm funções diferentes.'),
('classes', 59, 'A', 'VF', '"Duplo", "triplo" e "quádruplo" são numerais multiplicativos.', '[]', 'Verdadeiro', 'Multiplicativos indicam múltiplos: duplo (×2), triplo (×3), quádruplo (×4).'),
('classes', 59, 'A', 'CL', 'Identifique o tipo de numeral: ambos (___) / dobro (___) / décimo-quinto (___) / quinze (__)', '[]', 'coletivo ou indefinido / multiplicativo / ordinal / cardinal', 'Ambos = os dois (coletivo/indefinido); dobro = 2× (multiplicativo); décimo-quinto = ordinal; quinze = cardinal.'),
('classes', 59, 'A', 'MC', '"Uma dúzia de ovos" — "dúzia" é numeral:', '["cardinal","ordinal","fracionário","coletivo"]', 'coletivo', 'Dúzia é numeral coletivo — nomeia grupo de 12 unidades.'),
('classes', 59, 'A', 'DS', 'Escreva numerais coletivos para: 100 anos (___) / 2 unidades (___) / 12 unidades (___) / 1000 unidades (___)', '[]', 'século / par ou dupla / dúzia / milhar', 'Numerais coletivos nomeiam grupos específicos de quantidades.'),

-- Nível 59B — Numerais
('classes', 59, 'B', 'VF', 'Os numerais ordinais concordam em gênero e número com o substantivo.', '[]', 'Verdadeiro', 'Primeiro/primeira; segundos/segundas — ordinais concordam com o substantivo.'),
('classes', 59, 'B', 'MC', 'Qual é o ordinal de "seis"?', '["sexto","sextavo","seisimo","seis-avo"]', 'sexto', 'Seis → sexto (ordinal). Importante: os ordinais de 1 a 10 têm formas específicas.'),
('classes', 59, 'B', 'CL', 'Escreva o cardinal correspondente ao ordinal: primeiro (___) / décimo (___) / centésimo (___)', '[]', 'um / dez / cem', 'Cardinal indica quantidade; ordinal, posição.'),
('classes', 59, 'B', 'RF', 'Reescreva usando numeral ordinal: "Chegou na posição 3." → "Chegou em ___ lugar."', '[]', 'terceiro lugar', 'Terceiro é o ordinal de três.'),
('classes', 59, 'B', 'DS', 'Explique a diferença entre "quinto" (ordinal) e "um quinto" (fracionário).', '[]', 'Quinto = 5ª posição/ordem: "Chegou em quinto lugar." / Um quinto = 1/5 de algo: "Comeu um quinto do bolo."', 'Ordinais indicam posição; fracionários indicam partes.'),
('classes', 59, 'B', 'MC', 'Qual numeral é multiplicativo?', '["décimo","triplo","três","terço"]', 'triplo', 'Triplo significa "três vezes maior" — é multiplicativo.'),
('classes', 59, 'B', 'VF', '"Centena" e "milhar" são numerais coletivos.', '[]', 'Verdadeiro', 'Centena = grupo de 100; milhar = grupo de 1000 — coletivos.'),
('classes', 59, 'B', 'CL', 'Classifique: par (___) / vinte (___) / décimo-segundo (___) / quarto (___) quando significa 1/4', '[]', 'coletivo / cardinal / ordinal / fracionário', 'Par = 2 unidades (coletivo); vinte = cardinal; décimo-segundo = ordinal; quarto (fração) = fracionário.'),
('classes', 59, 'B', 'RF', 'Escreva por extenso os ordinais: 11º → ___ / 12º → ___ / 20º → ___ / 21º → ___', '[]', 'décimo primeiro / décimo segundo / vigésimo / vigésimo primeiro', 'Ordinais compostos unem dois ordinais: vigésimo primeiro (20+1).'),
('classes', 59, 'B', 'MC', 'Em "Ganhei o segundo prêmio", o numeral "segundo" é:', '["cardinal","ordinal","fracionário","multiplicativo"]', 'ordinal', 'Segundo indica a posição — é ordinal.');

-- Nível 60A — Revisão Classes de Palavras I (Níveis 49–56)
INSERT INTO questions (module, level, series, type, question, options, answer, explanation) VALUES
('classes', 60, 'A', 'MC', 'Analise: "A bela professora ensinou rapidamente." Quantas classes de palavras diferentes há?', '["3","4","5","6"]', '5', 'A (artigo) + bela (adjetivo) + professora (substantivo) + ensinou (verbo) + rapidamente (advérbio) = 5 classes.'),
('classes', 60, 'A', 'CL', 'Identifique a classe de cada palavra: menino — correu — velozmente — o — bonito — para', '[]', 'substantivo — verbo — advérbio — artigo — adjetivo — preposição', 'Revisão das 6 classes trabalhadas até agora.'),
('classes', 60, 'A', 'VF', 'Todo adjetivo modifica um substantivo.', '[]', 'Verdadeiro', 'O adjetivo sempre se relaciona a um substantivo, qualificando-o ou caracterizando-o.'),
('classes', 60, 'A', 'RF', 'Transforme a frase, trocando cada classe de palavra indicada: "A criança [ADV: lentamente] comeu."', '[]', 'A criança rapidamente comeu. (ou qualquer advérbio de modo)', 'Advérbios de modo podem ser trocados por outros do mesmo tipo.'),
('classes', 60, 'A', 'MC', 'Qual classe de palavra é INVARIÁVEL (não muda de gênero/número)?', '["substantivo","adjetivo","pronome","advérbio"]', 'advérbio', 'Advérbios não variam em gênero ou número — são palavras invariáveis.'),
('classes', 60, 'A', 'DS', 'Escreva uma frase usando: 1 substantivo, 1 adjetivo, 1 verbo, 1 advérbio, 1 artigo.', '[]', 'Exemplo: A [artigo] menina [subst.] estudiosa [adj.] estudou [verbo] intensamente [adv.].', 'Uma boa frase usa diferentes classes de palavras com funções específicas.'),
('classes', 60, 'A', 'CL', 'Classifique as palavras em negrito: [O] [belo] [dia] passou [rapidamente] [e] o sol [brilhou].', '[]', 'artigo / adjetivo / substantivo / advérbio / conjunção / verbo', 'Revisão das principais classes gramaticais.'),
('classes', 60, 'A', 'VF', 'Um substantivo pode vir acompanhado de artigo, adjetivo e preposição na mesma frase.', '[]', 'Verdadeiro', 'Ex: "De [prep.] um [artigo] belo [adj.] jardim [subst.]" — todas as classes acompanhando o substantivo.'),
('classes', 60, 'A', 'MC', 'Em "Ela é muito inteligente", qual classe é "muito"?', '["adjetivo","advérbio","pronome","conjunção"]', 'advérbio', 'Muito é advérbio de intensidade que modifica o adjetivo inteligente.'),
('classes', 60, 'A', 'DS', 'Monte uma tabela identificando a classe de cada palavra: "Ontem o Pedro correu para a escola."', '[]', 'Ontem (advérbio) / o (artigo) / Pedro (substantivo próprio) / correu (verbo) / para (preposição) / a (artigo) / escola (substantivo comum)', 'Análise morfológica: identificar a classe de cada palavra da frase.'),

-- Nível 60B — Revisão Classes de Palavras II (Níveis 49–59)
('classes', 60, 'B', 'MC', 'Qual alternativa traz corretamente a classe das palavras destacadas em "Três [alunos] [dedicados] chegaram [cedo]"?', '["substantivo, advérbio, adjetivo","substantivo, adjetivo, advérbio","adjetivo, substantivo, verbo","pronome, adjetivo, advérbio"]', 'substantivo, adjetivo, advérbio', 'Alunos = substantivo; dedicados = adjetivo; cedo = advérbio de tempo.'),
('classes', 60, 'B', 'VF', 'Verbos, substantivos e adjetivos são classes de palavras variáveis.', '[]', 'Verdadeiro', 'Essas classes flexionam em gênero, número, pessoa e/ou tempo.'),
('classes', 60, 'B', 'CL', 'Separe em Variáveis / Invariáveis: advérbio, substantivo, preposição, adjetivo, conjunção, verbo', '[]', 'Variáveis: substantivo, adjetivo, verbo | Invariáveis: advérbio, preposição, conjunção', 'Palavras variáveis flexionam; invariáveis permanecem iguais em qualquer contexto.'),
('classes', 60, 'B', 'RF', 'Corrija todos os erros de classes na frase: "O meninos bonitos correram rapidamente no parque bonita."', '[]', 'Os meninos bonitos correram rapidamente no parque bonito.', 'Meninos (pl.) → os; parque é masculino → bonito. Rapidamente e no estão corretos.'),
('classes', 60, 'B', 'DS', 'Analise morfologicamente cada palavra: "Meus dois filhos pequenos estudam aqui."', '[]', 'Meus (pronome possessivo) / dois (numeral cardinal) / filhos (substantivo) / pequenos (adjetivo) / estudam (verbo) / aqui (advérbio de lugar)', 'Análise morfológica identifica a classe e a função de cada palavra.'),
('classes', 60, 'B', 'MC', '"De", "em", "por", "com" — essas palavras são da mesma classe. Qual é?', '["conjunção","preposição","artigo","pronome"]', 'preposição', 'De, em, por e com são preposições — ligam palavras expressando relações.'),
('classes', 60, 'B', 'VF', 'O mesmo texto pode ter palavras de todas as 10 classes gramaticais.', '[]', 'Verdadeiro', 'Um texto completo usa substantivos, verbos, adjetivos, advérbios, pronomes, artigos, preposições, conjunções, interjeições e numerais.'),
('classes', 60, 'B', 'CL', 'Identifique a classe: lentamente (___) / eles (___) / três (___) / mas (___) / sob (___)', '[]', 'advérbio / pronome pessoal / numeral cardinal / conjunção adversativa / preposição', 'Revisão completa de 8 classes de palavras.'),
('classes', 60, 'B', 'RF', 'Reescreva a frase, substituindo cada [?] pela classe indicada: "[PRON] [ADV] [SUBST] [VERB] [ADJ]."', '[]', 'Exemplo: Ela sempre estuda dedicada. / Nós raramente chegamos cansados.', 'Qualquer combinação coerente de pronome + advérbio + substantivo + verbo + adjetivo é válida.'),
('classes', 60, 'B', 'MC', 'Qual é a classe da palavra "uau!" em "Uau! Que gol lindo!"?', '["advérbio","conjunção","interjeição","pronome"]', 'interjeição', 'Interjeições expressam emoções e sentimentos de forma exclamativa: uau, ai, oh, bravo.');
