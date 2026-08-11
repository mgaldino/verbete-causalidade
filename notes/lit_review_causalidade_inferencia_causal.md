# Revisão de literatura: causalidade e inferência causal nas ciências sociais

Data da revisão: 3 de agosto de 2026

## 1. Escopo e critérios

Esta revisão foi desenhada para apoiar o verbete metodológico “Causalidade”, entendido editorialmente como equivalente a “inferência causal”. A pergunta orientadora é: **quais trabalhos permitem explicar, em até 5.000 palavras incluindo referências, a passagem para uma linguagem de contrafactuais, estimandos e identificação, sua consolidação na fronteira internacional e sua incorporação tardia e incompleta na Ciência Política e nas Relações Internacionais publicadas no Brasil?**

O escopo disciplinar inclui estatística, econometria aplicada, Ciência Política, Relações Internacionais e sociologia quantitativa. A cobertura histórica começa com antecedentes pré-formais, mas privilegia a formalização contemporânea desde Rubin. Para o Brasil, a revisão incorpora tanto literatura metodológica publicada quanto o paper de Galdino e Martins da Silva a ser apresentado no 15º Encontro da ABCP.

A busca combinou: bibliografia já reunida nos repositórios `verbete-causalidade` e `metodos_CP`; revisão dirigida em páginas de periódicos e editoras; e verificação dos trabalhos recentes em fontes primárias. Foram priorizados artigos seminais, periódicos de referência, obras com função distinta no argumento e trabalhos diretamente úteis às seções exigidas pela EBCS. Trata-se de uma **revisão estruturada e dirigida ao verbete**, não de uma revisão sistemática exaustiva ou meta-análise.

## 2. Visão geral do campo

A literatura converge em torno de uma mudança de ônus da prova. Em vez de interpretar coeficientes de regressão como efeitos por força da especificação estatística, a inferência causal contemporânea exige definir o contraste causal de interesse e declarar as condições sob as quais ele pode ser recuperado dos dados. Resultados potenciais forneceram a linguagem central para contrafactuais e estimandos; modelos causais gráficos ofereceram uma representação explícita da estrutura causal e dos caminhos de confundimento. A revolução da credibilidade deslocou essas ideias para a prática empírica, valorizando desenhos que defendem a origem da variação usada na comparação.

Esse avanço não eliminou controvérsias. Um desenho nomeado não garante identificação válida; efeitos locais não se transportam automaticamente; variação exógena pode não representar processos políticos produzidos por agência endógena; e perguntas sobre mecanismos, constituição e interpretação não se reduzem a um efeito médio. A fronteira atual, portanto, combina maior explicitação formal com uma crítica mais precisa ao alcance das inferências.

No Brasil, a literatura anterior diagnosticou fragilidades de formação, explicitação metodológica e institucionalização de práticas inferenciais. Galdino e Martins da Silva avançam desse diagnóstico para a observação de artigos publicados: em seu corpus de 4.144 artigos elegíveis de nove periódicos entre 2005 e 2025, a linguagem causal ou explicativa aparece muito mais frequentemente do que estratégias explícitas de identificação. Os resultados devem ser apresentados como presença de práticas nos periódicos analisados, e não como auditoria da qualidade de execução ou censo de toda a disciplina.

## 3. Trabalhos seminais e estruturantes

| Trabalho | Função no verbete | Argumento ou contribuição central | Estratégia ou base | Limite relevante |
|---|---|---|---|---|
| Hill (1965) | Genealogia pré-formal | Organiza considerações para avaliar quando uma associação pode sustentar interpretação causal. | Reflexão metodológica a partir de epidemiologia observacional. | Os critérios não constituem, isoladamente, uma teoria de identificação. |
| Rubin (1974) | Fundação dos resultados potenciais | Formula efeitos causais como contrastes entre resultados potenciais em estudos experimentais e observacionais. | Quadro formal de tratamentos e resultados potenciais. | A linguagem não resolve por si mesma quais suposições são plausíveis em cada aplicação. |
| Holland (1986) | Síntese conceitual | Explicita o problema fundamental da inferência causal e separa associação estatística de pergunta causal. | Artigo teórico baseado no modelo de Rubin. | Privilegia causas concebidas como tratamentos; nem todo conceito social cabe naturalmente nessa forma. |
| Imbens (2020) | Ponte PO–DAG | Compara resultados potenciais e DAGs e mostra quais perguntas cada linguagem esclarece melhor. | Revisão metodológica no *Journal of Economic Literature*. | A avaliação é deliberadamente orientada à prática econômica e não encerra o debate entre abordagens. |
| Angrist e Pischke (2010) | Revolução da credibilidade | A melhoria da microeconomia empírica decorreu sobretudo de desenhos capazes de tornar a identificação mais crível. | Revisão histórica e metodológica. | A preferência por desenho pode incentivar perguntas escolhidas pela disponibilidade de variação, não pela importância substantiva. |
| Lundberg, Johnson e Stewart (2021) | Centralidade do estimando | Definir a quantidade-alvo conecta teoria, evidência e análise estatística antes da escolha do estimador. | Artigo conceitual com exemplos sociológicos. | Um estimando preciso não assegura identificação nem validade substantiva. |

## 4. Aplicações paradigmáticas

### 4.1 Card e Krueger: salário mínimo e diferença-em-diferenças

Card e Krueger (1994) compararam mudanças no emprego em restaurantes de fast-food de Nova Jersey, onde o salário mínimo aumentou, com restaurantes da Pensilvânia, onde permaneceu constante. A comparação antes–depois entre estados tornou-se um exemplo clássico da lógica de diferença-em-diferenças. O estudo é especialmente útil para o verbete porque mostra que a credibilidade depende da comparação contrafactual e não da sofisticação do estimador. Também permite expor os limites do desenho: a interpretação causal requer que a evolução do emprego na Pensilvânia represente adequadamente o que teria ocorrido em Nova Jersey sem a política, além de depender da qualidade da mensuração. A contestação e a posterior reanálise dos dados ilustram que desenhos críveis permanecem abertos a escrutínio.

### 4.2 Avelino, Biderman e Barone: RDD eleitoral observacional no Brasil

Avelino, Biderman e Barone (2012) perguntam se eleger um prefeito melhora o desempenho posterior de seu partido no mesmo município. Com dados do TSE, os autores relacionam as eleições municipais de 2008 às votações para deputado federal e estadual em 2010. A estratégia compara partidos que venceram ou perderam disputas para prefeito por margens muito estreitas: próximo do limiar de vitória, a descontinuidade permite usar o segundo colocado como contrafactual do vencedor. O artigo relata que, nos 266 municípios decididos por menos de um ponto percentual, o partido vencedor recebeu em média 3,7 pontos percentuais a mais na eleição subsequente para deputado federal; com controle pela votação para vereador, a estimativa cai para 3,4 pontos.

O estudo é um bom exemplo observacional de como uma regra institucional pode produzir uma comparação quase experimental, mas deve ser apresentado com duas cautelas. Primeiro, uma leitura contemporânea interpreta o efeito identificado pelo RDD como local ao limiar eleitoral, e não automaticamente como efeito para todos os municípios. Segundo, o artigo reporta como especificação principal um polinômio de quarto grau; padrões atuais de análise de RDD favorecem especificações polinomiais locais e diagnósticos adicionais. Essas ressalvas são pedagogicamente úteis: encontrar um desenho reconhecido é o início, não o fim, da avaliação da identificação.

### 4.3 Suong, Desposato e Gartzke: alternativa experimental de RI

Suong, Desposato e Gartzke (2020) aleatorizam o regime político de um alvo hipotético e a autorização da ONU para o uso da força em painéis online no Brasil e na China. O estudo testa microfundamentos da paz democrática fora dos casos anglo-americanos e mostra como um experimento pode separar efeitos de atributos que, no mundo observado, aparecem correlacionados. A comparação também expõe limites de transporte: as amostras online não representam perfeitamente as populações nacionais, e o comportamento em uma vinheta não equivale automaticamente a decisões reais de política externa. Dado o limite de palavras e a preferência por um exemplo observacional brasileiro, este estudo passa a ser uma alternativa, não um caso central do verbete.

### 4.4 Alternativas presentes no corpus brasileiro

O paper da ABCP identifica 59 artigos únicos com estratégia explícita de identificação. A lista deduplicada está em `data/processed/abcp_explicit_causal_design_articles.csv` e foi gerada por `code/01_extract_abcp_causal_design_cases.R`. Além do caso principal de Avelino, Biderman e Barone (2012), alternativas úteis incluem Arvate, Firpo e Pieri (2017), com RDD sobre prefeitas e apoio eleitoral posterior a mulheres; Hardt, Mouron e Apolinário Júnior (2020), com experimento de survey sobre cooperação internacional brasileira; e Suong, Desposato e Gartzke (2020), com experimento de survey de RI no Brasil e na China. Fujiwara (2015) continua sendo uma aplicação importante de economia política brasileira, mas deixa de ser a escolha principal porque não pertence ao corpus de periódicos brasileiros analisado pelo paper da ABCP.

A classificação do corpus registra **menção e uso explícito** de desenhos reconhecidos. Ela não certifica, por si só, que pressupostos, implementação, diagnósticos e interpretação foram adequados. Antes de incorporar qualquer exemplo ao verbete, será necessário ler o artigo integral e auditar a identificação específica.

## 5. Debates centrais

### 5.1 Resultados potenciais e modelos causais gráficos

- **Resultados potenciais:** oferecem uma linguagem direta para tratamentos, efeitos, estimandos e identificação, especialmente adequada à avaliação de políticas e desenhos quase experimentais.
- **DAGs/SCM:** tornam visualmente explícitos caminhos causais, condicionamento, colisores, mediação e distinção entre observação e intervenção.
- **Síntese para o verbete:** Imbens (2020) basta como referência principal para apresentar a complementaridade e a divergência. Pearl não precisa ocupar uma das 12 posições finais se DAGs receberem apenas um parágrafo.

### 5.2 Desenho, modelo e estimando

- **Posição design-based:** Angrist e Pischke enfatizam a origem da variação e a transparência da comparação.
- **Correção necessária:** Lundberg, Johnson e Stewart mostram que o desenho não substitui a definição teórica da quantidade-alvo.
- **Estado atual:** desenho, estimando e modelo cumprem funções distintas. Um desenho pode identificar um efeito local estreito; um modelo pode ampliar a pergunta às custas de suposições adicionais; nenhum deles dispensa teoria.

### 5.3 Validade interna, transporte e agência

Deaton e Cartwright (2018) criticam a transformação de experimentos aleatorizados em padrão hierárquico automático: aleatorização não garante precisão em uma realização nem autoriza transporte sem conhecimento adicional. Williams (2026) acrescenta uma crítica especialmente relevante à Ciência Política e às RI: mudanças exógenas podem operar de maneira diferente de decisões endógenas produzidas por agência política. Para a lista final, Williams tem maior aderência disciplinar; Deaton e Cartwright devem entrar se o verbete dedicar mais espaço aos limites dos experimentos.

### 5.4 Inferência quantitativa e abordagens qualitativas/configuracionais

Process tracing, QCA e inferência qualitativa não devem ser apresentados como ausência de causalidade. Fairfield e Charman (2022) e Humphreys e Jacobs (2023) demonstram formas explícitas de aprender com evidência qualitativa, mecanismos e casos. Entretanto, desenvolver essas abordagens exigiria discutir outras unidades de evidência e outras lógicas de atualização. Dado o teto de palavras, o verbete deve registrar essa fronteira em um parágrafo ou nota e explicar a escolha de escopo. Humphreys e Jacobs são a melhor referência substituta caso a nota precise de sustentação bibliográfica própria.

## 6. Fronteira internacional e Brasil

Torreblanca et al. (2026) classificam 91.632 artigos de 156 periódicos de Ciência Política entre 2003 e 2023. Encontram crescimento de estudos baseados em desenho e prêmio de citação, mas mudança desigual, concentrada em periódicos de topo e instituições altamente ranqueadas e impulsionada em grande medida por experimentos de survey. Placebos e cálculos de poder permanecem raros. O trabalho sustenta a expressão “fronteira internacional”, mas também impede uma narrativa triunfalista: os próprios autores caracterizam o processo como reforma parcial.

Galdino e Martins da Silva (2026) constroem o contraste brasileiro com texto integral e denominadores separados. Os resultados atualmente reproduzidos no paper e na apresentação da ABCP são:

- 4.144 artigos elegíveis em nove periódicos, entre 2005 e 2025;
- 1.994 artigos empíricos quantitativos com inferência classificada;
- 743 desses 1.994, ou 37,3%, quantificam formalmente a incerteza;
- 59 dos 4.144, ou 1,4%, mencionam estratégia explícita de identificação causal;
- 1.885 dos 4.144, ou 45,5%, combinam linguagem causal ou explicativa e análise quantitativa sem estratégia explícita.

Esses números apoiam a tese de incorporação tardia e incompleta, mas exigem três salvaguardas. Primeiro, os denominadores brasileiros e internacionais não são intercambiáveis. Segundo, menção a uma estratégia não mede a qualidade de sua execução. Terceiro, o corpus representa os periódicos analisados, não toda a produção brasileira. O paper deve ser citado como trabalho apresentado em congresso, com seus materiais reproduzíveis, e não como artigo já publicado.

## 7. Evolução metodológica

| Momento | Problema dominante | Resposta metodológica | Legado para o verbete |
|---|---|---|---|
| Pré-formalização | Como distinguir associação de causação em estudos observacionais? | Critérios substantivos e triangulação de evidências. | Hill e o caso tabagismo–câncer. |
| 1970–1980 | Como definir formalmente um efeito causal? | Resultados potenciais e problema fundamental. | Rubin e Holland. |
| 1990–2010 | Como tornar alegações observacionais mais críveis? | Experimentos naturais, DiD, IV e RDD; centralidade do desenho. | Card–Krueger e Angrist–Pischke. |
| 2010–2020 | Como explicitar estrutura causal, estimandos e transporte? | DAGs/SCM, maior precisão na definição da quantidade-alvo e validade externa. | Imbens e Lundberg et al. |
| 2020–2026 | Quão ampla e substantiva foi a revolução? | Auditorias em larga escala, replicações e críticas a efeitos locais e variação exógena. | Torreblanca et al., Williams e Galdino–Martins. |

## 8. Gaps relevantes ao verbete

### Gaps teóricos

- A linguagem de tratamentos e efeitos médios não cobre sem atrito relações constitutivas, interpretação e processos baseados em agência.
- A conexão entre estimandos formais e teorias substantivas permanece mais fraca do que a literatura aplicada frequentemente admite.
- Não existe equivalência simples entre causalidade quantitativa, mecanismos, process tracing e causalidade conjuntural.

### Gaps empíricos

- A difusão da linguagem causal no Sul Global é pouco documentada em comparação com periódicos internacionais de topo.
- Faltam comparações brasileiras que avaliem qualidade da execução, e não apenas presença de métodos.
- Há pouca evidência sistemática sobre como currículos, periódicos e redes internacionais produzem adoção metodológica.

### Gaps metodológicos

- Comparações entre países e campos usam universos, denominadores e classificações diferentes.
- A presença de rótulos como DiD, IV ou RDD não revela se pressupostos e diagnósticos foram adequadamente tratados.
- Classificações automatizadas em larga escala precisam de validação humana e propagação da incerteza de mensuração.

### Gaps de dados

- O diagnóstico brasileiro ainda depende de um conjunto delimitado de periódicos e de classificação textual sujeita a erro.
- Aplicações qualitativas e materiais suplementares são mais difíceis de representar em corpora padronizados.

## 9. Recomendação de 12 referências para o verbete

### Núcleo recomendado

1. **Hill (1965):** antecedente histórico e problema da causalidade observacional.
2. **Rubin (1974):** formulação seminal dos resultados potenciais.
3. **Holland (1986):** problema fundamental e síntese estatística.
4. **Imbens (2020):** comparação entre resultados potenciais e DAGs.
5. **Angrist e Pischke (2010):** revolução da credibilidade.
6. **Lundberg, Johnson e Stewart (2021):** definição do estimando.
7. **Card e Krueger (1994):** exemplo internacional de DiD.
8. **Avelino, Biderman e Barone (2012):** aplicação observacional brasileira de RDD eleitoral.
9. **Williams (2026):** crítica contemporânea sobre agência e endogeneidade inerente.
10. **Torreblanca et al. (2026):** fronteira e difusão internacional na Ciência Política.
11. **Galdino e Martins da Silva (2026):** diagnóstico empírico dos periódicos brasileiros.
12. **Silva (2023):** manual brasileiro de desenho de pesquisa.

### Substituições condicionais

- Substituir **Williams (2026)** por **Deaton e Cartwright (2018)** se a seção crítica enfatizar experimentos, validade externa e transporte.
- Substituir **Silva (2023)** por **Humphreys e Jacobs (2023)** se a nota sobre inferência qualitativa e multimétodo exigir maior sustentação.
- Substituir **Hill (1965)** por **Pearl (2009)** apenas se DAGs/SCM receberem mais espaço do que o atualmente planejado.
- Substituir **Card e Krueger (1994)** por **Lee (2008)** se houver preferência por dois exemplos estritamente eleitorais; essa troca reduziria a diversidade de desenhos substantivos.
- Substituir **Avelino, Biderman e Barone (2012)** por **Suong, Desposato e Gartzke (2020)** apenas se o verbete passar a priorizar uma aplicação experimental de RI; ambos pertencem à lista de 59 artigos.
- Usar **Fujiwara (2015)** como alternativa se for desejável um RDD brasileiro publicado em periódico internacional de econometria.

## 10. Referências-chave em formato APSA

Angrist, Joshua D., and Jörn-Steffen Pischke. 2010. “The Credibility Revolution in Empirical Economics: How Better Research Design Is Taking the Con out of Econometrics.” *Journal of Economic Perspectives* 24(2): 3–30.

Card, David, and Alan B. Krueger. 1994. “Minimum Wages and Employment: A Case Study of the Fast-Food Industry in New Jersey and Pennsylvania.” *American Economic Review* 84(4): 772–793.

Galdino, Manoel, and Rodrigo Martins da Silva. 2026. “Do ‘Calcanhar’ à ‘Revolução’?: A Trajetória da Credibilidade Causal na Ciência Política e RI no Brasil (2010–2025).” Paper apresentado no 15º Encontro da Associação Brasileira de Ciência Política, 4 de agosto de 2026.

Hill, Austin Bradford. 1965. “The Environment and Disease: Association or Causation?” *Proceedings of the Royal Society of Medicine* 58(5): 295–300.

Holland, Paul W. 1986. “Statistics and Causal Inference.” *Journal of the American Statistical Association* 81(396): 945–960.

Imbens, Guido W. 2020. “Potential Outcome and Directed Acyclic Graph Approaches to Causality: Relevance for Empirical Practice in Economics.” *Journal of Economic Literature* 58(4): 1129–1179.

Lundberg, Ian, Rebecca A. Johnson, and Brandon M. Stewart. 2021. “What Is Your Estimand? Defining the Target Quantity Connects Statistical Evidence to Theory.” *American Sociological Review* 86(3): 532–565.

Rubin, Donald B. 1974. “Estimating Causal Effects of Treatments in Randomized and Nonrandomized Studies.” *Journal of Educational Psychology* 66(5): 688–701.

Silva, Glauco Peres da. 2023. *Desenho de pesquisa*. Edição revisada. Brasília: Escola Nacional de Administração Pública.

Avelino, George, Ciro Biderman, and Leonardo S. Barone. 2012. “Articulações intrapartidárias e desempenho eleitoral no Brasil.” *Dados* 55(4): 987–1013.

Torreblanca, Carolina, William Dinneen, Guy Grossman, and Yiqing Xu. 2026. “The Credibility Revolution in Political Science.” arXiv:2601.11542.

Williams, Martin J. 2026. “Causal Inference, Agency, and the Problem of Inherent Endogeneity.” *Annual Review of Political Science* 29: 215–234.

## 11. Fontes primárias verificadas nesta revisão

- [Angrist e Pischke, Journal of Economic Perspectives](https://www.aeaweb.org/articles?id=10.1257/jep.24.2.3)
- [Card e Krueger, NBER e referência à versão publicada](https://www.nber.org/papers/w4509)
- [Avelino, Biderman e Barone, Dados](https://dados.iesp.uerj.br/pb/artigos/?id=927)
- [Suong, Desposato e Gartzke, Brazilian Political Science Review](https://brazilianpoliticalsciencereview.org/article/how-democratic-is-the-democratic-peace-a-survey-experiment-of-foreign-policy-preferences-in-brazil-and-china/)
- [Holland, Journal of the American Statistical Association](https://www.tandfonline.com/doi/abs/10.1080/01621459.1986.10478354)
- [Imbens, Journal of Economic Literature](https://www.aeaweb.org/articles?id=10.1257/jel.20191597)
- [Lundberg, Johnson e Stewart, American Sociological Review](https://journals.sagepub.com/doi/abs/10.1177/00031224211004187)
- [Silva, repositório da Enap](https://repositorio.enap.gov.br/bitstream/1/3330/4/Livro_desenho_de_pesquisa%20%282%29.pdf)
- [Torreblanca et al., arXiv](https://arxiv.org/abs/2601.11542)
- [Williams, Annual Review of Political Science](https://www.annualreviews.org/content/journals/10.1146/annurev-polisci-032624-013736)
- [Humphreys e Jacobs, Cambridge University Press](https://www.cambridge.org/core/books/integrated-inferences/45B07964AD4718A74CDE3E35A31F26FA)
- [Deaton e Cartwright, Social Science & Medicine](https://www.sciencedirect.com/science/article/pii/S0277953617307359)
