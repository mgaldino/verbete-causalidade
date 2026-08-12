# Tabela de claims extraídos — verbete "Causalidade"

**Data**: 2026-08-11
**Draft**: `paper/verbete-causalidade.Rmd` (SHA a conferir)
**Protocolo**: Chain-of-Verification (Dhuliawala et al. 2023, arXiv:2309.11495)

Excluídos da extração: opiniões, recomendações prospectivas, definições que o
próprio verbete introduz (estimando, estimador, estimativa, confundimento,
colisor, mediador), e a notação de resultados potenciais.

## Cluster A — Fundamentos históricos (seção 1)

| ID | Claim | Linha | Fonte |
|----|-------|-------|-------|
| A1 | Hill (1965) organizou o julgamento causal em **nove** pontos de vista | 45 | `sources/raw/hill_1965_association_or_causation.txt` |
| A2 | Os nove são: força, consistência, especificidade, temporalidade, gradiente biológico, plausibilidade, coerência, experimento, analogia | 45 | idem |
| A3 | Hill advertiu que nenhum fornece prova indiscutível e nenhum é condição necessária | 45 | idem |
| A4 | Hill era, em 1965, estatístico e professor emérito de estatística médica | 45 | idem (byline) |
| A5 | Não seria aceitável atribuir pessoas aleatoriamente ao consumo prolongado de cigarros | 45 | idem |
| A6 | Neyman (1923) representou, em experimentos agrícolas aleatorizados, o rendimento de cada parcela sob cada variedade possível | 47 | Statistical Science 5(4):465–472 |
| A7 | A tradução inglesa **dessa parte** do trabalho de Neyman só foi publicada em **1990** | 47 | idem (trad. Dabrowska & Speed) |
| A8 | Rubin (1974) colocou resultados potenciais no centro da definição de efeitos causais e estendeu o uso a dados observacionais | 47 | J. Educ. Psychol. 66(5):688–701 |
| A9 | A inflexão decisiva ocorreu nos anos 1970 | 47 | — |
| A10 | A entrevista de 2022 com Rubin sustenta a reconstrução retrospectiva atribuída | 47 | Observational Studies 8(2):77–94 |
| A11 | Diagramas de trajetórias de Sewall Wright são antecedente dos DAGs; formalização moderna associada a Judea Pearl | 51 | — |

## Cluster B — Exemplos aplicados (seção 4)

| ID | Claim | Linha | Fonte |
|----|-------|-------|-------|
| B1 | Card e Krueger investigaram o efeito do aumento do salário mínimo de NJ sobre o emprego em restaurantes de fast-food, comparando com a Pensilvânia | 97 | AER 84(4):772–793 |
| B2 | Nos resultados principais reportados, os autores **não encontraram** a redução do emprego prevista pelo modelo competitivo simples | 99 | idem |
| B3 | Avelino, Biderman e Barone perguntam se eleger um prefeito aumenta posteriormente a votação de seu partido no município | 101 | Dados 55(4):987–1013 |
| B4 | Os autores conectam as eleições municipais de **2008** às votações para deputado federal e estadual em **2010** | 101 | idem |
| B5 | A janela de disputas decididas por menos de **um ponto percentual** reúne **266 municípios** | 103 | idem |
| B6 | O artigo reporta diferença estimada de **3,7 pontos percentuais** na votação subsequente para deputado federal | 103 | idem |
| B7 | Com controle pela votação para vereador, a estimativa é de **3,4 pontos** | 103 | idem |
| B8 | A especificação principal emprega um **polinômio de quarto grau** | 103 | idem |

## Cluster C — Difusão, Brasil e citações metodológicas (seções 2, 3 e 5)

| ID | Claim | Linha | Fonte |
|----|-------|-------|-------|
| C1 | Torreblanca et al. classificam **91.632 artigos** publicados entre **2003 e 2023** em **156 periódicos** | 111 | arXiv:2601.11542 |
| C2 | Encontram crescimento de pesquisa baseada em desenho e **associação positiva com citações** | 111 | idem |
| C3 | A transformação concentra-se em periódicos de maior prestígio e instituições mais bem posicionadas | 111 | idem |
| C4 | É impulsionada em grande medida por **experimentos de levantamento** | 111 | idem |
| C5 | Convive com uso ainda **raro** de testes de placebo e cálculos de poder estatístico | 111 | idem |
| C6 | Torreblanca et al. avaliam, entre outros recortes, artigos quantitativos explicativos | 117 | idem |
| C7 | Galdino e Martins da Silva analisam texto integral de **4.144 artigos elegíveis**, **2005–2025**, **nove periódicos** brasileiros indexados no SciELO | 113 | `../metodos_CP/paper/paper.Rmd` |
| C8 | Entre **1.994 artigos quantitativos**, **743 (37,3%)** quantificam formalmente a incerteza | 113 | idem |
| C9 | Em todo o corpus, **59 artigos (1,4%)** mencionam estratégia explícita de identificação causal | 113 | idem + `data/processed/abcp_*.csv` |
| C10 | **1.885 artigos (45,5%)** combinam linguagem causal/explicativa e análise quantitativa sem estratégia explícita | 113 | idem |
| C11 | Imbens, em *Better LATE Than Nothing*, reconhece o risco de estreitamento de perguntas mas defende o ganho de validade interna e de delimitação da população | 109 | JEL 48(2):399–423 |
| C12 | Sob suposições usuais, VI identifica frequentemente o LATE, efeito entre os *compliers* | 61 | Angrist–Pischke 2010; Imbens 2010 |
| C13 | Monotonicidade exclui os "do contra" (*defiers*) | 61 | idem |
| C14 | Lundberg, Johnson e Stewart definem estimando independentemente do modelo ou procedimento | 59 | ASR 86(3):532–565 |
| C15 | Hünermund e Louw recomendam omitir das tabelas os coeficientes dos controles ou marcá-los como não causais | 69 | ORM 28(1):138–151 |
| C16 | Angrist e Pischke interpretam a revolução da credibilidade como resposta à baixa credibilidade da econometria aplicada | 107 | JEP 24(2):3–30 |

## Perguntas de verificação

Cada claim converte-se em uma pergunta respondível **só a partir da fonte**,
sem acesso ao texto do verbete. As perguntas foram entregues a três
verificadores independentes de contexto limpo (clusters A, B, C).
