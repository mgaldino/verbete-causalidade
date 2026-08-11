# Reaproveitamento de Projetos Relacionados

Data: 2026-05-29

## Síntese

Os três projetos relacionados ajudam em níveis diferentes. O livro do curso de causalidade é a fonte principal para a genealogia recente de resultados potenciais, DAGs, identificação, desenhos observacionais e exemplos pedagógicos. O paper "Quali Quanti Causal Inference" é a fonte principal para o argumento de fundo sobre KKV, separação entre identificação causal e inferência estatística, Bayes/process tracing/QCA e recepção brasileira. O projeto `metodos_CP` ainda está menos maduro, mas pode sustentar a seção brasileira se o verbete quiser fazer uma afirmação empírica sobre difusão desigual da revolução da credibilidade na ciência política brasileira.

Minha recomendação é não tentar escrever um verbete panorâmico sobre todos os métodos causais. O verbete deve ter uma tese mais disciplinada: **a causalidade nas ciências sociais contemporâneas mudou quando passou a dispor de linguagens formais para expressar contrafactuais, explicitar suposições de identificação e separar identificação causal de inferência estatística.** A pergunta final pode ser: há uma lógica única da causalidade, ainda que não haja uma lógica única da inferência?

## 1. Livro do curso `DCP/Cursos/Causalidade/Causalidade`

### Material reaproveitável

- `index.Rmd` traz a abertura sobre correlação vs. causalidade, a distinção design-based/model-based e o argumento sobre a revolução da credibilidade em ciência política.
- `index.Rmd` também contém a crítica a KKV sobre a confusão entre generalização amostral e generalização causal, além da ideia de incerteza causal mesmo quando há universo dos casos.
- `02-PO.Rmd` contém a melhor genealogia curta já escrita no material: cigarro/câncer, Fisher, Bradford Hill, Yule, Cox, Muthén e Robins. Esse trecho é diretamente reaproveitável para a seção de origem/genealogia.
- `02-PO.Rmd` define resultados potenciais, SUTVA, switching equation, problema fundamental da inferência causal, estimando/estimador/estimativa e identificação.
- `03-DAGs.Rmd` contém a introdução aos DAGs como linguagem formal para direção causal, assimetria, backdoor, d-separação, condicionamento vs. intervenção e operador `do`.
- `13-ML.Rmd` é útil apenas para a parte contemporânea: ML prediz bem, mas não resolve identificação; Double Lasso/DML entram como métodos para nuisance e robustez, não como nova teoria de causalidade.

### Como reaproveitar

O livro deve fornecer linguagem e exemplos, mas o verbete precisa reduzir fórmulas e didatismo. O que no livro é capítulo/tutorial deve virar síntese analítica. Exemplo: em vez de ensinar SUTVA, dizer que resultados potenciais converteram causalidade em problema de contrafactual observacionalmente ausente; em vez de ensinar backdoor, dizer que DAGs deram uma linguagem para declarar suposições sobre caminhos causais e condicionamento.

### Pontos fortes para o verbete

- Genealogia do incômodo estatístico com causalidade fora de experimentos.
- Bradford Hill como solução pré-formal, baseada em critérios práticos para estudos observacionais.
- Robins como evidência histórica da resistência da estatística à linguagem causal.
- Resultados potenciais e DAGs como duas formalizações diferentes e parcialmente concorrentes/complementares.
- Distinção entre incerteza amostral e incerteza causal.

## 2. Paper `Quali Quanti Causal Inference/quali-credibility`

### Material reaproveitável

- `paper_dados_format_quali.Rmd` tem a tese mais importante para o verbete: identificação causal e inferência estatística são problemas distintos.
- A introdução sustenta que o quadro KKV foi deslocado pela própria evolução da metodologia quantitativa, especialmente pela revolução da credibilidade.
- A seção sobre recepção brasileira mostra que a literatura brasileira de métodos ainda opera predominantemente em moldura pós-KKV, com avanços parciais.
- A seção "Identificação Causal" traz a tradução de INUS/SUIN para resultados potenciais e DAGs, ponto muito útil para evitar a oposição simplista entre causalidade qualitativa determinística e causalidade quantitativa probabilística.
- A seção "Variantes da identificação: desenho vs. modelo" é reaproveitável para mostrar que design-based/model-based é melhor visto como continuum, não como dicotomia rígida.
- As seções sobre Bayes, process tracing Bayesiano e queries causais servem para a pergunta final sobre uma ou várias lógicas de causalidade.

### Como reaproveitar

Esse material deve entrar como argumento, não como seção autônoma longa. O verbete não deve virar "qualitativo vs. quantitativo". O melhor uso é mostrar que a formalização moderna não eliminou a pluralidade metodológica; ela deslocou a controvérsia. Hoje a unidade possível está na linguagem causal, nos contrafactuais e na identificação; a pluralidade permanece nas formas de evidência, estimação e inferência.

### Ponto de tese aproveitável

O trecho mais promissor é: não existe uma lógica única da inferência, contra a leitura mais forte de KKV, mas pode existir uma lógica causal comum suficientemente geral para abrigar resultados potenciais, DAGs, mecanismos, QCA/INUS e process tracing Bayesiano.

## 3. Projeto `Papers/metodos_CP`

### Material reaproveitável

- `CLAUDE.md` documenta o projeto como replicação/expansão de Torreblanca et al. para periódicos brasileiros.
- O corpus planejado cobre 15 periódicos SciELO entre 2005 e 2025, com cerca de 11.220 artigos estimados.
- O esquema classifica pretensão de causalidade, declaração de suposições de identificação, métodos design-based, model-based e métodos qualitativos explícitos.
- A classificação tem 209 linhas em `data/processed/classifications_llm.csv`, provavelmente uma amostra ou execução parcial.

### Como reaproveitar

Ainda não usaria o projeto como evidência forte no verbete, a menos que a análise seja finalizada. No estágio atual, ele é melhor como insumo para uma frase prudente: há um projeto em andamento para medir a difusão da revolução da credibilidade na ciência política brasileira. Para o verbete da EBCS, é melhor sustentar a seção brasileira com literatura metodológica já publicada e usar `metodos_CP` depois, se houver resultados consolidados.

## 4. Entrevistas Robins, Pearl e Rubin

### Localmente

- Robins aparece no livro: `references.bib` contém `robins2022`, "Interview", *Observational Studies*, 8(1), 1-22, 2022; `02-PO.Rmd` usa essa entrevista para ilustrar a resistência a papers com linguagem causal em estatística.
- Não encontrei arquivos ou entradas bibliográficas locais para entrevistas com Pearl e Rubin nos três projetos examinados, exceto referências gerais a Pearl, Rubin e suas obras.

### Fora do repo, mas úteis

- Há uma entrevista de Judea Pearl em *Observational Studies* 8(2), 23-36, 2022, e uma versão técnica pública da entrevista no site da UCLA.
- A mesma edição especial de *Observational Studies* 8(2) publicou entrevistas com Heckman, Pearl, Robins e Rubin.
- Há também "A Conversation with Donald B. Rubin", publicado em *Statistical Science* 29(3), 439-457, 2014, disponível via arXiv.

Essas entrevistas devem entrar no verbete como fontes de história intelectual, não como referências centrais de método. Elas são boas para narrar a mudança de clima disciplinar: de estatística refratária à linguagem causal para a institucionalização de uma linguagem formal de causalidade.

## 5. Arquitetura recomendada para o verbete

### Preâmbulo — 150 a 200 palavras

Definir causalidade como linguagem para distinguir associação, explicação, intervenção, mecanismo e contrafactual. Antecipar que o verbete trata da passagem de uma causalidade difícil de formalizar para um repertório contemporâneo de linguagens causais.

### 1. Da suspeita à formalização — 700 a 850 palavras

Usar cigarro/câncer, Fisher, Bradford Hill, Yule, Cox, Muthén e Robins. Tese: antes da virada causal, havia prática causal nas ciências empíricas, mas faltava linguagem formal aceita para estudos observacionais.

### 2. Duas linguagens formais: resultados potenciais e DAGs — 1.000 a 1.150 palavras

Apresentar resultados potenciais como linguagem de contrafactuais e DAGs como linguagem de estrutura causal e identificação. Evitar tratar Pearl vs. Rubin como disputa de torcida; o ponto é que ambos tornam suposições explícitas.

### 3. Revolução da credibilidade e desenho observacional — 850 a 1.000 palavras

Explicar como economia aplicada e depois ciência política deslocam o padrão de evidência causal: de regressão com controles para desenhos com suposições explícitas. Mencionar RDD, IV, DiD, controle sintético, matching e métodos duplamente robustos apenas como exemplos, sem explicar cada um.

### 4. Uma lógica causal, várias lógicas de inferência? — 850 a 1.000 palavras

Aqui entra KKV, o split identificação/inferência, Bayes, process tracing Bayesiano, queries causais, QCA e INUS/SUIN. A tese deve ser calibrada: talvez haja uma linguagem causal comum, mas as formas de evidência, estimação e inferência continuam plurais.

### 5. Brasil e América Latina — 500 a 650 palavras

Usar a síntese do paper quali-quanti: a literatura metodológica brasileira incorporou parte do vocabulário, mas ainda não organizou plenamente a pedagogia em torno do split identificação/inferência. Não precisa que as referências brasileiras sejam apenas aplicadas; podem ser metodológicas e de recepção disciplinar.

### 6. Limites e alternativas — 400 a 550 palavras

Fechar com limites da linguagem causal: constituição vs. causação, interpretação vs. explicação causal, transportabilidade, validade externa, mecanismos não-identificados, e risco de reduzir causalidade a tecnologia de estimação.

## 6. O que cortar para caber em 5.000 palavras

- Não explicar tecnicamente DiD, RDD, IV, matching, controle sintético e DML.
- Não fazer uma história completa de causalidade filosófica desde Aristóteles ou Hume; apenas o suficiente para contextualizar a virada moderna.
- Não transformar a seção qualitativa em mini-paper sobre process tracing Bayesiano.
- Não tentar cobrir PAC learning em detalhe. Machine learning entra apenas como debate contemporâneo sobre predição, nuisance functions e limites da identificação por dados.
- Não incluir tabela/figura, salvo se o editor aceitar e houver uma figura conceitual muito econômica. A EBCS pediu verbete, não aula.

## 7. Referências brasileiras e latino-americanas

A exigência da EBCS não implica que as referências brasileiras precisem ser aplicações empíricas de DiD/RDD/IV. Para um verbete conceitual, elas podem ser trabalhos metodológicos que documentam a recepção, tradução e disputa do conceito no Brasil e na América Latina.

Candidatas, a verificar no `Quali-credibilidade.bib` e no relatório de lit-review:

- Rezende 2011, 2017, 2019, sobre pluralismo inferencial e metodologia qualitativa.
- Sposito, Gabriel e Artioli 2022, sobre seleção de casos e tipos de alegação causal.
- Figueiredo Filho et al. 2021, sobre inferência causal na produção brasileira.
- Mesquita 2017, Leite e Rocha 2019, Paula 2018, como evidência da pedagogia metodológica brasileira.
- Perissinotto 2024 e Vick/Gurza Lavalle 2020 como avanços parciais.
- Glauco Peres da Silva 2023, *Desenho de Pesquisa*, como possível exceção/ponte a verificar.

## 8. Próxima decisão editorial

O verbete pode seguir dois recortes:

1. **Recorte recomendado**: "causalidade como linguagem formal contemporânea das ciências sociais". Cobre genealogia, resultados potenciais, DAGs, credibilidade, qualitativo/quanti e Brasil sem virar manual.
2. **Recorte amplo demais**: "todos os métodos e debates atuais de inferência causal". Esse recorte não cabe bem em 5.000 palavras e tende a virar verbete metodológico, não conceitual.

Minha recomendação é o recorte 1.
