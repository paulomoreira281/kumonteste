-- ============================================================
-- GeraFicha — Módulo 3: Classes de Palavras
-- Níveis 49–60 | Séries A e B
-- ============================================================

-- Nível 49A — Substantivos: conceito e classificação
INSERT INTO questions (module, level, series, type, question, options, answer, explanation) VALUES
('classes', 49, 'A', 'MC', 'O que é um substantivo?', '["Palavra que modifica o verbo","Palavra que nomeia seres, objetos, lugares, sentimentos e ideias","Palavra que substitui o substantivo","Palavra que expressa ação"]', 'Palavra que nomeia seres, objetos, lugares, sentimentos e ideias', 'Substantivo é a classe de palavras que dá nome a tudo: pessoas, animais, objetos, lugares, sentimentos e ideias.'),
('classes', 49, 'A', 'CL', 'Classifique as palavras como S (substantivo) ou N (não é substantivo): cachorro — correr — felicidade — alto — escola', '[]', 'S — N — S — N — S', 'Cachorro (ser), felicidade (sentimento) e escola (lugar) são substantivos. Correr é verbo e alto é adjetivo.'),
('classes', 49, 'A', 'VF', 'A palavra "amor" é um substantivo porque expressa um sentimento.', '[]', 'Verdadeiro', 'Amor nomeia um sentimento, portanto é substantivo.'),
('classes', 49, 'A', 'MC', 'Qual alternativa contém APENAS substantivos?', '["correr, pular, nadar","casa, livro, alegria","bonito, grande, feliz","rapidamente, logo, sempre"]', 'casa, livro, alegria', 'Casa (objeto/lugar), livro (objeto) e alegria (sentimento) são substantivos.'),
('classes', 49, 'A', 'DS', 'Escreva três substantivos que nomeiem sentimentos.', '[]', 'Exemplos: amor, tristeza, saudade, raiva, medo, alegria, esperança', 'Sentimentos são nomeados por substantivos abstratos.'),
('classes', 49, 'A', 'RF', 'Complete com um substantivo adequado: "O ___ late muito alto." / "A ___ é muito bonita." / "O ___ de sol foi lindo."', '[]', 'cachorro / flor (ou cidade, árvore) / pôr (ou raio)', 'Substantivos nomeiam o ser ou coisa de que se fala na frase.'),
('classes', 49, 'A', 'VF', 'A palavra "coragem" é um substantivo.', '[]', 'Verdadeiro', 'Coragem nomeia uma qualidade/sentimento — é substantivo abstrato.'),
('classes', 49, 'A', 'CL', 'Separe em duas colunas — Substantivo / Não é substantivo: mesa, belo, cidade, rápido, amizade, voar', '[]', 'Substantivo: mesa, cidade, amizade | Não é: belo, rápido, voar', 'Mesa e cidade são objetos/lugares; amizade é sentimento. Belo e rápido são adjetivos; voar é verbo.'),
('classes', 49, 'A', 'MC', '"Professora" é um substantivo do tipo:', '["abstrato","concreto","coletivo","verbal"]', 'concreto', 'Professora é um ser real, que existe concretamente.'),
('classes', 49, 'A', 'DS', 'Encontre e sublinhe os 4 substantivos: "A menina bonita correu feliz no parque verde."', '[]', 'menina, parque', 'Menina (pessoa) e parque (lugar) são os substantivos da frase. Bonita e verde são adjetivos; correu é verbo; feliz é advérbio/adjetivo.'),

-- Nível 49B — Substantivos: conceito e classificação
('classes', 49, 'B', 'MC', 'Assinale a alternativa em que TODAS as palavras são substantivos:', '["livro, estudar, bonito","amor, dor, paz","correr, pular, andar","belo, forte, lindo"]', 'amor, dor, paz', 'Amor, dor e paz nomeiam sentimentos — todos são substantivos abstratos.'),
('classes', 49, 'B', 'VF', 'A palavra "beleza" é um substantivo porque vem do adjetivo "belo".', '[]', 'Verdadeiro', 'Beleza é um substantivo abstrato formado a partir do adjetivo belo.'),
('classes', 49, 'B', 'CL', 'Identifique S (substantivo) ou N em cada palavra: rio — nadar — azul — liberdade — computador', '[]', 'S — N — N — S — S', 'Rio (lugar), liberdade (abstrato), computador (objeto) são substantivos. Nadar é verbo e azul é adjetivo.'),
('classes', 49, 'B', 'RF', 'Reescreva a frase substituindo cada lacuna por um substantivo: "O ___ e a ___ são importantes para a ___."', '[]', 'Exemplo: O estudo e a amizade são importantes para a vida.', 'Qualquer trio de substantivos coerentes é válido.'),
('classes', 49, 'B', 'DS', 'Dê exemplos de: 1 substantivo que nomeia pessoa, 1 que nomeia lugar, 1 que nomeia sentimento.', '[]', 'Exemplos: médico / escola / saudade', 'Substantivos podem nomear pessoas, lugares, sentimentos e muitos outros referentes.'),
('classes', 49, 'B', 'MC', 'Em "O livro de matemática é interessante", os substantivos são:', '["livro e interessante","livro e matemática","matemática e interessante","livro, matemática e interessante"]', 'livro e matemática', 'Livro (objeto) e matemática (área de conhecimento) são substantivos. Interessante é adjetivo.'),
('classes', 49, 'B', 'VF', 'Todo nome de pessoa é um substantivo.', '[]', 'Verdadeiro', 'Nomes próprios como Ana, Pedro, São Paulo são substantivos próprios.'),
('classes', 49, 'B', 'CL', 'Coloque C (concreto) ou A (abstrato): fome — cadeira — saudade — leão — esperança', '[]', 'A — C — A — C — A', 'Fome e saudade são abstratos (não têm existência física); cadeira e leão são concretos.'),
('classes', 49, 'B', 'DS', 'Escreva uma frase com pelo menos 3 substantivos.', '[]', 'Exemplo: A professora contou uma história emocionante para as crianças.', 'Professora, história e crianças são os substantivos nessa frase.'),
('classes', 49, 'B', 'MC', 'Qual é o substantivo na frase "O vento sopra forte"?', '["vento","sopra","forte","o"]', 'vento', 'Vento é o ser/fenômeno nomeado — substantivo. Sopra é verbo, forte é adjetivo/advérbio.');

-- Nível 50A — Substantivos próprios e comuns
INSERT INTO questions (module, level, series, type, question, options, answer, explanation) VALUES
('classes', 50, 'A', 'MC', 'Qual é a diferença entre substantivo próprio e comum?', '["Próprio nomeia seres específicos; comum nomeia qualquer ser da mesma espécie","Próprio é sempre abstrato; comum é sempre concreto","Próprio é masculino; comum é feminino","Próprio é plural; comum é singular"]', 'Próprio nomeia seres específicos; comum nomeia qualquer ser da mesma espécie', 'Próprio: Brasil, Ana, Amazonas (único). Comum: país, menina, rio (qualquer um da espécie).'),
('classes', 50, 'A', 'CL', 'Classifique em P (próprio) ou C (comum): cachorro — Rex — Brasil — animal — São Paulo — cidade', '[]', 'C — P — P — C — P — C', 'Rex, Brasil e São Paulo são nomes específicos (próprios). Cachorro, animal e cidade são comuns.'),
('classes', 50, 'A', 'VF', 'Os substantivos próprios são escritos com letra maiúscula.', '[]', 'Verdadeiro', 'Convenção da língua portuguesa: substantivos próprios sempre iniciam com maiúscula.'),
('classes', 50, 'A', 'RF', 'Escreva o substantivo próprio correspondente ao comum: rio (um famoso) → ___ / cidade (capital do Brasil) → ___ / menina (personagem da história) → ___', '[]', 'Exemplo: Amazonas / Brasília / Nome próprio qualquer', 'Substantivos próprios nomeiam de forma específica e única.'),
('classes', 50, 'A', 'MC', '"Fui ao Rio de Janeiro visitar o Museu do Amanhã." Quantos substantivos próprios há?', '["0","1","2","3"]', '2', 'Rio de Janeiro (cidade) e Museu do Amanhã (nome do museu) são os dois substantivos próprios.'),
('classes', 50, 'A', 'DS', 'Escreva 3 substantivos próprios de pessoas e 3 de lugares.', '[]', 'Exemplos de pessoas: João, Maria, Pedro. Lugares: Brasília, Amazonas, Europa.', 'Nomes de pessoas e lugares específicos são substantivos próprios.'),
('classes', 50, 'A', 'VF', '"cachorro" é substantivo próprio.', '[]', 'Falso', 'Cachorro é substantivo comum — nomeia qualquer animal da espécie, não um específico.'),
('classes', 50, 'A', 'CL', 'Reescreva corrigindo o uso de maiúsculas: "minha amiga ana mora em recife."', '[]', 'Minha amiga Ana mora em Recife.', 'Ana (pessoa) e Recife (cidade) são substantivos próprios — iniciam com maiúscula.'),
('classes', 50, 'A', 'MC', 'Qual é o substantivo COMUM na frase "O Rio Amazonas é o maior rio do Brasil"?', '["Rio Amazonas","Brasil","rio","Amazonas"]', 'rio', 'Rio (sem maiúscula) é o substantivo comum — designa qualquer rio. Rio Amazonas e Brasil são próprios.'),
('classes', 50, 'A', 'DS', 'Para cada substantivo comum, escreva um substantivo próprio correspondente: país → ___ / planeta → ___ / continente → ___', '[]', 'Exemplos: Brasil / Terra / América do Sul', 'Cada comum pode ter vários próprios correspondentes.'),

-- Nível 50B — Substantivos próprios e comuns
('classes', 50, 'B', 'VF', '"portugal" está escrito de forma incorreta quando é nome de país.', '[]', 'Verdadeiro', 'Portugal é substantivo próprio — deve ser escrito com letra maiúscula: Portugal.'),
('classes', 50, 'B', 'MC', 'Em qual frase há um erro no uso de maiúsculas?', '["A professora chamou Ana.","Moro em são paulo.","O rio Amazonas é imenso.","Pedro foi à escola."]', 'Moro em são paulo.', 'São Paulo é substantivo próprio (cidade) — deve ter S e P maiúsculos.'),
('classes', 50, 'B', 'CL', 'Classifique: Joana — menina — Brasil — nação — Atlântico — oceano', '[]', 'P — C — P — C — P — C', 'Joana, Brasil e Atlântico são próprios. Menina, nação e oceano são comuns.'),
('classes', 50, 'B', 'RF', 'Substitua o substantivo próprio por um comum: "Visitei o Pão de Açúcar no Rio de Janeiro."', '[]', 'Visitei o morro / monumento na cidade.', 'Pão de Açúcar → morro (ou ponto turístico); Rio de Janeiro → cidade.'),
('classes', 50, 'B', 'DS', 'Escreva uma frase usando 1 substantivo próprio de lugar e 1 comum.', '[]', 'Exemplo: Fui a Manaus conhecer a selva amazônica.', 'Manaus é próprio; selva é comum.'),
('classes', 50, 'B', 'MC', 'Assinale a alternativa com TODOS os substantivos próprios:', '["escola, livro, caderno","Ana, Pedro, Maria","felicidade, amor, paz","rua, cidade, bairro"]', 'Ana, Pedro, Maria', 'Ana, Pedro e Maria são nomes de pessoas específicas — todos próprios.'),
('classes', 50, 'B', 'VF', 'O substantivo "Planeta Terra" é próprio.', '[]', 'Verdadeiro', 'Terra, quando se refere ao nosso planeta especificamente, é substantivo próprio.'),
('classes', 50, 'B', 'CL', 'Separe em dois grupos — Próprio / Comum: Lua, estrela, Sol, planeta, Marte, satélite', '[]', 'Próprio: Lua, Sol, Marte | Comum: estrela, planeta, satélite', 'Lua, Sol e Marte são nomes específicos de astros — próprios. Os demais são comuns.'),
('classes', 50, 'B', 'DS', 'Complete a tabela com o correspondente: cachorro → Rex / flor → ___ / continente → ___', '[]', 'Flor → Rosa (ou Violeta) / Continente → Europa (ou América, etc.)', 'Qualquer nome específico de flor e de continente é válido.'),
('classes', 50, 'B', 'MC', 'Os substantivos próprios NÃO precisam de maiúscula quando:', '["estão no meio da frase","aparecem no plural","nunca — sempre têm maiúscula","estão seguidos de artigo"]', 'nunca — sempre têm maiúscula', 'Substantivos próprios sempre são escritos com letra maiúscula, independente da posição na frase.');

-- Nível 51A — Substantivos: gênero (masculino e feminino)
INSERT INTO questions (module, level, series, type, question, options, answer, explanation) VALUES
('classes', 51, 'A', 'MC', 'O gênero dos substantivos em português pode ser:', '["apenas masculino","apenas feminino","masculino ou feminino","neutro ou masculino"]', 'masculino ou feminino', 'Em português, os substantivos têm dois gêneros: masculino e feminino.'),
('classes', 51, 'A', 'CL', 'Classifique em M (masculino) ou F (feminino): o livro — a mesa — o carro — a flor — o sol — a lua', '[]', 'M — F — M — F — M — F', 'Usamos o artigo para identificar o gênero: o/um = masculino; a/uma = feminino.'),
('classes', 51, 'A', 'RF', 'Passe para o feminino: o gato → a ___ / o menino → a ___ / o professor → a ___', '[]', 'gata / menina / professora', 'A maioria dos femininos se forma trocando a terminação -o por -a ou acrescentando -a.'),
('classes', 51, 'A', 'VF', 'A palavra "lápis" é masculina porque dizemos "o lápis".', '[]', 'Verdadeiro', 'O artigo define o gênero: o lápis = masculino.'),
('classes', 51, 'A', 'MC', 'Qual substantivo tem forma diferente para masculino e feminino?', '["artista","estudante","homem","cliente"]', 'homem', 'Homem/mulher são formas completamente diferentes — heterônimos. Os demais são biformes ou biforme.'),
('classes', 51, 'A', 'DS', 'Escreva o feminino de: rei, boi, imperador, ator, czar', '[]', 'rainha, vaca (ou boiada), imperatriz, atriz, czarina', 'Alguns femininos são formados de maneira irregular ou com sufixos especiais.'),
('classes', 51, 'A', 'VF', '"A artista" e "o artista" — a palavra "artista" muda de gênero conforme o artigo.', '[]', 'Verdadeiro', 'Artista é substantivo comum de dois gêneros — o artigo indica o gênero.'),
('classes', 51, 'A', 'CL', 'Separe em Masculino / Feminino: jornal, caneta, caderno, borracha, lápis, régua', '[]', 'Masculino: jornal, caderno, lápis | Feminino: caneta, borracha, régua', 'Usamos o artigo definido para verificar: o jornal, o caderno, o lápis; a caneta, a borracha, a régua.'),
('classes', 51, 'A', 'MC', 'O feminino de "leão" é:', '["leãoa","leona","leã","leoa"]', 'leoa', 'O feminino de leão é leoa (forma irregular).'),
('classes', 51, 'A', 'RF', 'Complete com o artigo correto (o/a): ___ dente / ___ nariz / ___ viagem / ___ sal / ___ nuvem', '[]', 'o dente / o nariz / a viagem / o sal / a nuvem', 'Dente, nariz e sal são masculinos. Viagem e nuvem são femininos.'),

-- Nível 51B — Substantivos: gênero (masculino e feminino)
('classes', 51, 'B', 'MC', 'Qual palavra é sempre feminina, independente de quem representa?', '["artista","estudante","vítima","cantor"]', 'vítima', 'Vítima é substantivo sobrecomum — sempre feminino gramaticalmente, mesmo quando o ser é masculino.'),
('classes', 51, 'B', 'VF', '"A criança bonita" e "a criança bonito" — as duas formas são corretas.', '[]', 'Falso', 'Criança é sobrecomum feminino — o adjetivo fica sempre no feminino: a criança bonita.'),
('classes', 51, 'B', 'CL', 'Identifique M ou F: o mel / a pele / o leite / a dor / o sangue / a fome', '[]', 'M / F / M / F / M / F', 'Mel, leite e sangue são masculinos. Pele, dor e fome são femininos.'),
('classes', 51, 'B', 'DS', 'Dê o feminino de cada palavra: conde, duque, príncipe, frade, herói', '[]', 'condessa, duquesa, princesa, freira, heroína', 'Esses femininos são formados com sufixos especiais: -essa, -ina.'),
('classes', 51, 'B', 'MC', 'Sobre substantivos sobrecomuns, é CORRETO afirmar:', '["Mudam de forma conforme o gênero","Têm sempre forma masculina","Têm gênero fixo, independente do ser","São sempre masculinos"]', 'Têm gênero fixo, independente do ser', 'Sobrecomuns têm um único gênero gramatical: a testemunha, a criança, o cônjuge.'),
('classes', 51, 'B', 'RF', 'Reescreva no feminino: "O menino animado foi ao médico ontem."', '[]', 'A menina animada foi à médica ontem.', 'Menino → menina; animado → animada; médico → médica. O artigo também muda.'),
('classes', 51, 'B', 'VF', '"O estudante" pode ser masculino ou feminino conforme o contexto.', '[]', 'Verdadeiro', 'Estudante é comum de dois gêneros — o artigo determina: o estudante (masc.) / a estudante (fem.).'),
('classes', 51, 'B', 'CL', 'Classifique o gênero de cada substantivo (M/F): personagem — fantasma — eclipse — índole — ônibus', '[]', 'M ou F (ambos) — M — M — F — M', 'Personagem admite os dois gêneros. Fantasma, eclipse e ônibus são masculinos. Índole é feminino.'),
('classes', 51, 'B', 'DS', 'Escreva uma frase com um substantivo sobrecomum (ex.: vítima, criança, pessoa).', '[]', 'Exemplo: A vítima do acidente foi socorrida rapidamente.', 'Vítima é sempre feminino — o adjetivo concorda: socorrida.'),
('classes', 51, 'B', 'MC', 'O feminino de "czar" é:', '["czara","czarina","czareza","czara ou czarina"]', 'czarina', 'O feminino de czar é czarina, forma de origem eslava adotada no português.');

-- Nível 52A — Substantivos: número (singular e plural)
INSERT INTO questions (module, level, series, type, question, options, answer, explanation) VALUES
('classes', 52, 'A', 'MC', 'Para formar o plural da maioria dos substantivos, acrescentamos:', '["ão","es","s","z"]', 's', 'A regra geral do plural é acrescentar -s: livro → livros, mesa → mesas.'),
('classes', 52, 'A', 'RF', 'Passe para o plural: pão → ___ / limão → ___ / leão → ___ / coração → ___', '[]', 'pães / limões / leões / corações', 'Palavras terminadas em -ão têm plurais variáveis: -ões, -ães ou -ãos.'),
('classes', 52, 'A', 'VF', 'O plural de "lápis" é "lápis" (permanece igual).', '[]', 'Verdadeiro', 'Palavras terminadas em -s que não são oxítonas não mudam no plural: o lápis / os lápis.'),
('classes', 52, 'A', 'CL', 'Escreva o plural: sol / mar / vez / voz / flor', '[]', 'sóis / mares / vezes / vozes / flores', 'Palavras terminadas em -l, -r e -z têm regras específicas de plural.'),
('classes', 52, 'A', 'MC', 'O plural de "irmão" é:', '["irmãos","irmães","irmãoes","irmões"]', 'irmãos', 'Irmão → irmãos (plural em -ãos, um dos três plurais possíveis para -ão).'),
('classes', 52, 'A', 'DS', 'Forme o plural: alemão, cidadão, bênção, capelão, órfão', '[]', 'alemães, cidadãos, bênçãos, capelães, órfãos', 'Atenção: cidadão → cidadãos; capelão → capelães; alemão → alemães.'),
('classes', 52, 'A', 'VF', 'O plural de "avô" é "avôs".', '[]', 'Falso', 'O plural de avô é avós (sem acento circunflexo no plural).'),
('classes', 52, 'A', 'RF', 'Passe para o singular: países → ___ / papéis → ___ / anzóis → ___', '[]', 'país / papel / anzol', 'Palavras terminadas em -éis, -óis voltam ao -l no singular.'),
('classes', 52, 'A', 'MC', 'Qual palavra NÃO muda no plural?', '["casa","atlas","livro","flor"]', 'atlas', 'Atlas termina em -s com acento na penúltima sílaba — não muda no plural.'),
('classes', 52, 'A', 'CL', 'Separe em Singular / Plural: crianças, flor, animais, casa, lápis, pais', '[]', 'Singular: flor, casa, lápis | Plural: crianças, animais, pais', 'Lápis pode ser singular ou plural (forma invariável) — no contexto fica singular.'),

-- Nível 52B — Substantivos: número (singular e plural)
('classes', 52, 'B', 'MC', 'O plural de "mal" é:', '["mals","males","maus","malões"]', 'males', 'Mal → males (terminado em -l, troca por -es).'),
('classes', 52, 'B', 'RF', 'Passe para o plural: chapéu → ___ / troféu → ___ / véu → ___', '[]', 'chapéus / troféus / véus', 'Palavras terminadas em -éu fazem o plural em -éus.'),
('classes', 52, 'B', 'VF', 'O plural de "café" é "cafés".', '[]', 'Verdadeiro', 'Oxítonas terminadas em vogal acentuada fazem plural com -s: café → cafés.'),
('classes', 52, 'B', 'CL', 'Escreva o plural: grão, charlatão, vulcão, portão, balão', '[]', 'grãos, charlatães, vulcões, portões, balões', 'Grão → grãos; charlatão → charlatães; os demais em -ões.'),
('classes', 52, 'B', 'DS', 'Escreva o plural de 5 palavras terminadas em -al: canal, jornal, animal, final, sinal', '[]', 'canais, jornais, animais, finais, sinais', 'Palavras terminadas em -al fazem plural em -ais.'),
('classes', 52, 'B', 'MC', 'Qual sequência está TODA no plural correto?', '["pais, mães, irmãs","pães, limãos, coraçãos","pais, limões, irmãs","pães, limãos, corações"]', 'pais, limões, irmãs', 'Pais (plural de pai), limões (plural de limão), irmãs (plural de irmã) — todos corretos.'),
('classes', 52, 'B', 'VF', 'O plural de "simples" é "simpless".', '[]', 'Falso', 'Simples é invariável no plural: o problema simples / os problemas simples.'),
('classes', 52, 'B', 'CL', 'Passe para o singular: leões → ___ / capitães → ___ / mãos → ___', '[]', 'leão / capitão / mão', 'Desfazer o plural: -ões → -ão; -ães → -ão; -ãos → -ão.'),
('classes', 52, 'B', 'RF', 'Corrija os erros: "Os irmãoes viajaram. As mãs ficaram em casa."', '[]', 'Os irmãos viajaram. As mães ficaram em casa.', 'Irmão → irmãos; mãe → mães.'),
('classes', 52, 'B', 'MC', 'O plural de "cônsul" é:', '["cônsules","cônsuls","cônsuis","consulis"]', 'cônsules', 'Palavras terminadas em -l precedidas de consoante fazem plural em -es: cônsul → cônsules.');

-- Nível 53A — Adjetivos: conceito e função
INSERT INTO questions (module, level, series, type, question, options, answer, explanation) VALUES
('classes', 53, 'A', 'MC', 'O adjetivo é a classe de palavras que:', '["nomeia seres e objetos","indica ação ou estado","caracteriza ou qualifica o substantivo","substitui o substantivo"]', 'caracteriza ou qualifica o substantivo', 'Adjetivo caracteriza, qualifica ou modifica o substantivo: casa bonita, dia quente.'),
('classes', 53, 'A', 'CL', 'Identifique ADJ (adjetivo) ou não: bonito — correr — azul — sempre — feliz — grande', '[]', 'ADJ — não — ADJ — não — ADJ — ADJ', 'Bonito, azul, feliz e grande qualificam substantivos — são adjetivos.'),
('classes', 53, 'A', 'VF', 'Na frase "O céu azul é lindo", há dois adjetivos.', '[]', 'Verdadeiro', 'Azul qualifica o céu; lindo também qualifica o céu — dois adjetivos.'),
('classes', 53, 'A', 'RF', 'Acrescente um adjetivo adequado: "A ___ menina estudou a ___noite toda." / "O ___ cachorro brincou no jardim ___."', '[]', 'Exemplos: A dedicada menina estudou a noite toda. / O alegre cachorro brincou no jardim florido.', 'Qualquer adjetivo coerente é válido.'),
('classes', 53, 'A', 'MC', 'Em "A criança inteligente respondeu corretamente", o adjetivo é:', '["criança","inteligente","respondeu","corretamente"]', 'inteligente', 'Inteligente qualifica a criança — é o adjetivo da frase.'),
('classes', 53, 'A', 'DS', 'Escreva 5 adjetivos que podem qualificar a palavra "dia".', '[]', 'Exemplos: quente, frio, ensolarado, chuvoso, lindo, agitado, tranquilo', 'Adjetivos descrevem características do substantivo.'),
('classes', 53, 'A', 'VF', 'O adjetivo sempre vem antes do substantivo.', '[]', 'Falso', 'O adjetivo pode vir antes ou depois do substantivo: "bela música" ou "música bela".'),
('classes', 53, 'A', 'CL', 'Sublinhe os adjetivos: "A velha árvore frondosa dava sombra agradável no quintal abandonado."', '[]', 'velha, frondosa, agradável, abandonado', 'Velha e frondosa qualificam árvore; agradável qualifica sombra; abandonado qualifica quintal.'),
('classes', 53, 'A', 'MC', 'Qual alternativa contém APENAS adjetivos?', '["alto, correr, belo","forte, grande, bonito","casa, livro, amor","rápido, nunca, sempre"]', 'forte, grande, bonito', 'Forte, grande e bonito qualificam substantivos — são adjetivos.'),
('classes', 53, 'A', 'DS', 'Para cada substantivo, escreva 2 adjetivos opostos: mar (___/___) / dia (___/___) / pessoa (___/___)','[]', 'Exemplos: mar calmo/agitado / dia quente/frio / pessoa alegre/triste', 'Adjetivos antônimos expressam qualidades opostas.'),

-- Nível 53B — Adjetivos: conceito e função
('classes', 53, 'B', 'VF', 'Em "Ela é bonita e inteligente", os adjetivos se referem ao pronome "Ela".', '[]', 'Verdadeiro', 'Bonita e inteligente predicam o sujeito "Ela" — são adjetivos predicativos.'),
('classes', 53, 'B', 'MC', 'O adjetivo "brasileiro" na frase "Ele é um jogador brasileiro" indica:', '["a ação do jogador","a origem/nacionalidade do jogador","o número de jogadores","o nome do jogador"]', 'a origem/nacionalidade do jogador', 'Adjetivos pátrios indicam origem, procedência ou nacionalidade.'),
('classes', 53, 'B', 'CL', 'Separe os adjetivos dos advérbios: rapidamente, feliz, bonita, sempre, alto (qualidade), bem', '[]', 'Adjetivos: feliz, bonita, alto (qualidade) | Advérbios: rapidamente, sempre, bem', 'Adjetivos qualificam substantivos; advérbios modificam verbos, adjetivos ou outros advérbios.'),
('classes', 53, 'B', 'RF', 'Reescreva a frase acrescentando 2 adjetivos: "A menina correu no parque."', '[]', 'Exemplo: A menina corajosa correu no parque iluminado.', 'Qualquer adjetivo que qualifique menina e parque é válido.'),
('classes', 53, 'B', 'DS', 'Escreva o adjetivo pátrio (de origem) para: Brasil → ___ / França → ___ / Japão → ___ / Portugal → ___', '[]', 'brasileiro / francês / japonês / português', 'Adjetivos pátrios derivam do nome do país ou lugar.'),
('classes', 53, 'B', 'MC', 'Qual adjetivo NÃO combina com o substantivo "silêncio"?', '["absoluto","profundo","ensolarado","total"]', 'ensolarado', 'Ensolarado se refere à luz do sol — não faz sentido com silêncio.'),
('classes', 53, 'B', 'VF', 'Os adjetivos concordam em gênero e número com o substantivo.', '[]', 'Verdadeiro', 'Menino alto / menina alta / meninos altos / meninas altas — o adjetivo concorda.'),
('classes', 53, 'B', 'CL', 'Corrija a concordância: "As crianças bonito brincaram no parque grande."', '[]', 'As crianças bonitas brincaram no parque grande.', 'Bonito (masc. sing.) deve concordar com crianças (fem. pl.) → bonitas. Grande já está correto (invariável no gênero).'),
('classes', 53, 'B', 'DS', 'Escreva 3 adjetivos compostos (ex.: azul-marinho) e use-os em frases.', '[]', 'Exemplos: verde-escuro, bem-humorado, surdo-mudo. Frase: Ele comprou uma camisa azul-marinho.', 'Adjetivos compostos têm mais de um elemento ligado por hífen.'),
('classes', 53, 'B', 'MC', 'Em "A situação ficou difícil", o adjetivo "difícil" é:', '["atributivo (antes do substantivo)","predicativo (depois do verbo)","numeral","invariável"]', 'predicativo (depois do verbo)', 'Quando o adjetivo aparece após um verbo de ligação (ficar, ser, estar), é predicativo do sujeito.');

-- Nível 54A — Verbos: conceito e reconhecimento
INSERT INTO questions (module, level, series, type, question, options, answer, explanation) VALUES
('classes', 54, 'A', 'MC', 'Os verbos são palavras que expressam principalmente:', '["características dos seres","nomes de seres","ações, estados ou fenômenos naturais","quantidade e ordem"]', 'ações, estados ou fenômenos naturais', 'Verbos expressam ação (correr), estado (ser, estar) ou fenômeno (chover, nevar).'),
('classes', 54, 'A', 'CL', 'Identifique V (verbo) ou N (não é verbo): correu — lindo — pensou — azul — nevou — casa', '[]', 'V — N — V — N — V — N', 'Correu, pensou e nevou expressam ação ou fenômeno — são verbos.'),
('classes', 54, 'A', 'VF', 'A palavra "amor" pode ser usada como verbo.', '[]', 'Falso', 'Amor é substantivo. O verbo correspondente é "amar".'),
('classes', 54, 'A', 'RF', 'Complete com verbos de ação: "O menino ___ o livro. / A chuva ___ forte. / O cachorro ___ alto."', '[]', 'Exemplos: abriu / caiu / latiu', 'Qualquer verbo de ação coerente com o contexto é válido.'),
('classes', 54, 'A', 'MC', 'Qual é o verbo na frase "O céu ficou nublado"?', '["céu","ficou","nublado","o"]', 'ficou', 'Ficou é o verbo de ligação — conecta o sujeito (céu) ao predicativo (nublado).'),
('classes', 54, 'A', 'DS', 'Escreva 5 verbos de ação que indicam movimento.', '[]', 'Exemplos: correr, andar, pular, nadar, voar, subir, descer', 'Verbos de movimento expressam deslocamento ou ação física.'),
('classes', 54, 'A', 'VF', '"Chover", "nevar" e "amanhecer" são verbos que expressam fenômenos da natureza.', '[]', 'Verdadeiro', 'Verbos impessoais como chover, nevar, trovejar expressam fenômenos naturais.'),
('classes', 54, 'A', 'CL', 'Separe em Verbo de ação / Verbo de estado / Verbo de fenômeno: chover, estudar, parecer, correr, ser, relampejar', '[]', 'Ação: estudar, correr | Estado: parecer, ser | Fenômeno: chover, relampejar', 'Classificação dos verbos quanto ao que expressam.'),
('classes', 54, 'A', 'MC', 'Qual grupo contém APENAS verbos?', '["correr, lindo, estudar","brincar, cantar, dançar","azul, alto, forte","casa, livro, escola"]', 'brincar, cantar, dançar', 'Brincar, cantar e dançar expressam ações — todos são verbos.'),
('classes', 54, 'A', 'DS', 'Crie uma frase com cada tipo de verbo: ação, estado, fenômeno.', '[]', 'Exemplos: Ação: O aluno estudou muito. / Estado: A menina está feliz. / Fenômeno: Choveu durante a tarde.', 'Os três tipos de verbos têm funções distintas na frase.'),

-- Nível 54B — Verbos: conceito e reconhecimento
('classes', 54, 'B', 'VF', 'Todo verbo pode ser conjugado (mudar conforme o tempo e a pessoa).', '[]', 'Verdadeiro', 'A conjugação é característica fundamental do verbo: eu corro, tu corres, ele corre...'),
('classes', 54, 'B', 'MC', 'Em "Ela é professora", o verbo "é" expressa:', '["ação","fenômeno","estado","movimento"]', 'estado', '"Ser" é verbo de ligação que expressa estado ou condição permanente.'),
('classes', 54, 'B', 'CL', 'Identifique o tipo de verbo — Ação, Estado ou Fenômeno: amanheceu, dormiu, ficou, trovejou, estudou, parece', '[]', 'Fenômeno / Ação / Estado / Fenômeno / Ação / Estado', 'Amanhecer e trovejar são fenômenos; dormir e estudar são ações; ficar e parecer são estados.'),
('classes', 54, 'B', 'RF', 'Substitua o substantivo pelo verbo correspondente: amor → ___ / dança → ___ / estudo → ___ / corrida → ___', '[]', 'amar / dançar / estudar / correr', 'Cada substantivo tem um verbo de base correspondente.'),
('classes', 54, 'B', 'DS', 'Escreva o verbo de estado (verbo de ligação) mais adequado: "Ela ___ triste." / "A sopa ___ fria." / "Ele ___ médico."', '[]', 'Ela ficou/estava/é triste. / A sopa ficou/está fria. / Ele é médico.', 'Verbos de ligação: ser, estar, ficar, parecer, continuar, tornar-se.'),
('classes', 54, 'B', 'MC', 'Qual afirmação é CORRETA sobre verbos impessoais?', '["Têm sujeito definido","Só são usados na 3ª pessoa do singular","Podem ser conjugados em todas as pessoas","São sempre de ação"]', 'Só são usados na 3ª pessoa do singular', 'Verbos impessoais (chover, nevar, amanhecer) não têm sujeito e ficam na 3ª pessoa singular.'),
('classes', 54, 'B', 'VF', 'A palavra "festa" pode virar verbo acrescentando sufixo: "festejar".', '[]', 'Verdadeiro', 'Festejar é o verbo derivado de festa — muitas palavras podem gerar verbos com sufixos.'),
('classes', 54, 'B', 'CL', 'Encontre os 4 verbos na frase: "A criança correu, pulou, caiu e chorou no parque."', '[]', 'correu, pulou, caiu, chorou', 'Cada ação praticada pela criança é expressa por um verbo.'),
('classes', 54, 'B', 'RF', 'Conjugue o verbo "cantar" nas 3 pessoas do singular, presente do indicativo.', '[]', 'Eu canto / Tu cantas / Ele(a) canta', 'Conjugação regular do verbo cantar (1ª conjugação) no presente do indicativo.'),
('classes', 54, 'B', 'MC', 'Qual NÃO é um verbo de ligação?', '["ser","estar","correr","ficar"]', 'correr', 'Correr é verbo de ação. Ser, estar e ficar são verbos de ligação (conectam sujeito e predicativo).');
