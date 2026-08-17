# Section Read — 2. Lógica de aplicação e decisões de desenho

## Tese da seção

A análise causal deve ser construída a partir de decisões substantivas e explicitamente ordenadas: definir a pergunta causal, o objeto causal e o estimando; explicitar a estrutura causal e as suposições de identificação; e só então escolher desenho, estimador e procedimento de inferência. A seção sustenta que técnicas estatísticas não produzem identificação por si mesmas: a interpretação causal depende da comparação contrafactual, da origem da variação e de suposições sobre o processo que gerou os dados. Resultados potenciais, estimandos e DAGs funcionam como linguagens para tornar essa cadeia visível e auditável.

## Claims explícitos

| Claim | Linhas/parágrafos | Evidência |
|---|---|---|
| Uma pesquisa causal começa antes da escolha de uma técnica. | Linha 55, parágrafo iniciado por “Uma pesquisa causal começa”. | O texto exige definir população, versões da intervenção, resultado, horizonte temporal e comparação contrafactual antes de perguntar se uma política “funciona”. |
| Essas escolhas definem o objeto causal e não podem ser delegadas ao modelo estatístico. | Linha 55, mesmo parágrafo. | O exemplo da reforma eleitoral contrasta o sistema anterior com o sistema de outra região como possíveis contrafactuais e atribui às escolhas a definição do objeto causal. |
| Na notação binária de resultados potenciais, \(Y_i(1)\) e \(Y_i(0)\) representam os resultados da unidade sob tratamento e controle. | Linha 57, parágrafo iniciado por “Na notação de resultados potenciais”. | A seção define diretamente os símbolos e explica que os números entre parênteses indicam mundos potenciais cuja diferença relevante é o tratamento ou o controle. |
| O efeito individual é \(Y_i(1)-Y_i(0)\), mas somente um resultado potencial é observado. | Linha 59, parágrafo iniciado por “O efeito individual”. | O texto afirma que apenas um dos termos pode ser observado e relaciona o resultado observado ao tratamento efetivamente recebido por \(Y_i=Y_i(x)\). |
| Resultado potencial e resultado observado entre tratados são quantidades distintas. | Linha 59, mesmo parágrafo. | A seção distingue \(E(Y_i(1))\) de \(E(Y_i\mid X_i=1)\) e afirma que, em geral, não são iguais; a primeira quantidade é potencial e a segunda é observada. |
| O estimando é a quantidade-alvo, definida independentemente do modelo ou procedimento usado para calculá-la. | Linha 61, parágrafo iniciado por “Esse arcabouço tornou central”. | O texto define o estimando como o efeito que se pretende conhecer para uma população ou subpopulação e afirma que toda pesquisa deve dizer qual efeito pretende estimar e para quem. |
| Estimando, estimador e estimativa são objetos diferentes. | Linha 61, mesmo parágrafo. | A seção define o estimador como regra aplicada à amostra, a estimativa como valor numérico calculado e a inferência como uso dessa estimativa para aprender sobre o estimando. |
| Populações ou subpopulações diferentes podem corresponder a estimandos distintos, mesmo quando a pergunta substantiva parece semelhante. | Linha 61, mesmo parágrafo. | O exemplo contrasta o efeito do cigarro entre fumantes com o efeito sobre toda a população caso todos passassem a fumar; o texto diz que as quantidades só coincidiriam sob condições específicas. |
| Variáveis instrumentais frequentemente identificam um LATE, não necessariamente o efeito para todos os elegíveis ou para uma expansão universal. | Linha 63, parágrafo iniciado por “Variáveis instrumentais mostram”. | O programa de capacitação ilustra o subgrupo dos *compliers*; a monotonicidade exclui os “do contra”, e a conclusão delimita o alcance do LATE. |
| Definir o estimando não garante que ele possa ser aprendido dos dados. | Linha 65, parágrafo iniciado por “Definir o estimando não garante”. | Identificação é definida como a expressão da quantidade causal em termos da distribuição observada sob determinadas suposições; a seção afirma que uma quantidade não identificada não é recuperável nem com amostra infinita. |
| A credibilidade do desenho depende da ponte entre estimando e dados e das suposições que sustentam a comparação. | Linha 67, parágrafo iniciado por “Assim, uma vez definido”. | O experimento ideal é apresentado como caso de atribuição aleatória; nos estudos observacionais, a comparabilidade precisa ser defendida por suposições como ausência de confundimento após condicionamento, tendências paralelas, continuidade e restrições de exclusão. |
| Suposições de identificação não são propriedades automáticas de regressões, pareamento, diferença-em-diferenças, RDD ou variáveis instrumentais. | Linha 67, mesmo parágrafo. | A seção as descreve como afirmações sobre o processo que gerou os dados e sobre o mundo social estudado. |
| Identificação causal e inferência estatística respondem a perguntas diferentes. | Linha 69, parágrafo iniciado por “Essa distinção também separa”. | A primeira pergunta se o desenho e suas suposições autorizam uma interpretação causal; a segunda quantifica a variação da estimativa sob incerteza amostral ou outras fontes explicitamente modeladas. |
| Precisão estatística não corrige falta de identificação, e identificação plausível pode coexistir com imprecisão. | Linha 69, mesmo parágrafo. | O texto contrasta erros-padrão pequenos que não corrigem confundimento, intervalos estreitos que podem cercar uma quantidade enviesada e desenhos plausíveis que produzem estimativas imprecisas. |
| Em estudos observacionais, a identificação depende de medir e ajustar adequadamente causas comuns do tratamento e do resultado; especificações mais complexas não resolvem por si só comparações frágeis. | Linha 71, parágrafo iniciado por “Em estudos observacionais”. | A seção apresenta essa dependência e associa a chamada “revolução da credibilidade” à valorização do desenho frente à complexidade da especificação, com citação a `@angristpischke2010`. |
| Um coeficiente de regressão múltipla não é automaticamente o efeito causal da variável correspondente. | Linha 73, parágrafo iniciado por “Essa arquitetura também torna claro”. | O texto exige definir o estimando de cada variável e justificar separadamente controles e origem da variação; afirma que um mesmo ajuste raramente sustenta interpretações causais críveis para todos os coeficientes. |
| As demais variáveis de uma análise entram, em regra, como auxiliares à identificação ou à precisão do estimando focal, não como efeitos adicionais prontos para interpretação causal. | Linha 73, mesmo parágrafo. | A seção descreve a concentração em uma variável ou pequeno conjunto por vez e registra a recomendação de omitir coeficientes de controles ou marcá-los como não causais, com citação a `@hunermundlouw2025`. |
| DAGs ajudam a tornar auditável a estrutura causal, mas sua utilidade depende das relações causais postuladas. | Linha 75, parágrafo iniciado por “DAGs ajudam”. | O texto distingue confundidores, colisores e variáveis pós-tratamento; termina afirmando que o grafo só é tão defensável quanto as relações causais nele postuladas. |
| Condicionar em variáveis com papéis causais diferentes pode produzir consequências diferentes para a pergunta respondida. | Linha 75, mesmo parágrafo. | Confundidores podem exigir bloqueio, colisores podem criar associação quando condicionados e variáveis pós-tratamento podem representar mecanismos, efeitos intermediários ou novos colisores. |
| Intervir em \(X\) não equivale a observar unidades com \(X=x\). | Linha 75, mesmo parágrafo. | A seção explicita a distinção entre intervenção e observação na linguagem dos modelos causais estruturais. |
| A formulação por resultados potenciais requer um tratamento suficientemente preciso e que o resultado de uma unidade não dependa inadvertidamente do tratamento recebido por outras. | Linha 77, parágrafo iniciado por “Resultados potenciais tornam”. | O texto apresenta o pressuposto SUTVA (*Stable Unit Treatment Value Assignment*) nesses termos e atribui aos grafos a função de localizar caminhos pelos quais as condições podem falhar. |
| A ordem lógica da análise é pergunta causal, estimando, estrutura causal, desenho, suposições, estimador e inferência. | Linha 79, parágrafo iniciado por “De um ponto de vista lógico”. | A sequência é enumerada explicitamente e descrita como disciplina argumentativa que impede acrescentar a interpretação causal apenas depois de um coeficiente estatisticamente significativo. |
| Essa ordem é revisável na prática e não substitui a defesa da identificação. | Linha 79, mesmo parágrafo. | O texto afirma que teoria e evidência podem levar à revisão de etapas anteriores e que estimandos claros conectam teoria, evidência e análise, mas não substituem a defesa da identificação, com citação a `@lundberg2021`. |

## Escopo e hedges

- A seção trabalha com tratamento e controle binários: a notação apresentada é \(Y_i(1)\), \(Y_i(0)\) e \(Y_i(x)\) (linhas 57–59). Não encontrei extensão explícita para tratamentos multivalorados, contínuos ou dinâmicos.
- O exemplo inicial é introduzido como “por exemplo” (linha 55), e a seção usa “tipicamente” (linha 59) ao falar de médias populacionais. Esses termos mantêm os exemplos como ilustrativos, não exaustivos.
- A distinção entre resultado potencial e observado é qualificada por “em geral” (linha 59): a seção não afirma que as duas quantidades sejam sempre diferentes.
- A identificação é condicionada a “determinadas suposições” (linha 65); o texto não apresenta identificação como propriedade sem hipóteses.
- O caso experimental é limitado a “um experimento ideal” e à comparabilidade “em média” (linha 67).
- As suposições observacionais são introduzidas como condições “associadas a desenhos diferentes” (linha 67), sem a afirmação de que a enumeração seja completa ou que cada suposição pertença exclusivamente a uma técnica.
- O LATE é apresentado “sob as suposições usuais” e “frequentemente” como o estimando identificado por variáveis instrumentais (linha 63). A seção destaca monotonicidade, mas não enumera todas as suposições usuais.
- A seção usa “não necessariamente” ao limitar o LATE (linha 63), preservando a distinção entre o efeito local e efeitos para todos os elegíveis ou para uma expansão universal.
- Na distinção entre identificação e inferência, a incerteza inclui a amostral “ou outras fontes explicitamente modeladas” (linha 69).
- Em regressão múltipla, “raramente” e “em regra” (linha 73) qualificam, respectivamente, a possibilidade de interpretar causalmente todos os coeficientes e o papel auxiliar das demais variáveis.
- Ao tratar DAGs, “pode exigir”, “pode criar” e “podem representar” (linha 75) apresentam consequências dependentes do papel causal da variável, não efeitos invariáveis do condicionamento.
- SUTVA é formulado com “suficientemente preciso” e “inadvertidamente” (linha 77), sem uma especificação mais detalhada das versões do tratamento ou dos mecanismos de interferência.
- A sequência da linha 79 é apresentada como ordem lógica, mas é qualificada por “na prática” e pela possibilidade de revisão provocada por teoria e evidência; portanto, a seção não a descreve como procedimento mecânico.

## O que a seção NÃO afirma

- Não afirma que escolher uma técnica, ajustar uma regressão ou obter um coeficiente significativo seja suficiente para identificar um efeito causal (linhas 55, 67, 69 e 73).
- Não afirma que \(E(Y_i(1))\) seja igual a \(E(Y_i\mid X_i=1)\); afirma o contrário como regra geral (linha 59).
- Não afirma que o LATE seja o efeito entre todos os elegíveis ou o efeito de uma expansão universal do programa (linha 63).
- Não afirma que uma amostra infinita recupere uma quantidade não identificada (linha 65).
- Não afirma que uma lista de suposições, por si só, seja verdadeira em uma aplicação; apresenta as suposições como afirmações sobre o processo gerador dos dados e o mundo social (linha 67).
- Não afirma que erros-padrão pequenos ou intervalos estreitos corrijam confundimento ou eliminem viés (linha 69).
- Não afirma que todos os coeficientes de uma regressão múltipla sejam efeitos causais (linha 73).
- Não afirma que um DAG seja defensável apenas por ter sido desenhado; sua defensabilidade é condicionada às relações causais postuladas (linha 75).
- Não encontrei, nas linhas 53–80, uma aplicação empírica com dados, estimativas numéricas, teste diagnóstico ou algoritmo de estimação.
- Não encontrei, nas linhas 53–80, uma afirmação sobre validade externa, generalização ou transporte dos efeitos para outra população.
- Não encontrei, nas linhas 53–80, uma discussão explícita de erro de mensuração, atrito, dados ausentes ou validade da mensuração dos conceitos.

## Ambiguidades reais

- **Escopo de \(x\) na notação observada:** a seção apresenta tratamento e controle como mundos \(1\) e \(0\) (linha 57), mas escreve \(Y_i=Y_i(x)\) para \(X_i=x\) (linha 59) sem explicitar se \(x\) continua restrito a esses dois valores.
- **Nomes dos estimandos no exemplo do tabagismo:** a linha 61 distingue o efeito entre fumantes do efeito sobre toda a população, mas não nomeia formalmente essas duas quantidades.
- **“Suposições usuais” no IV:** a linha 63 identifica o LATE sob as suposições usuais e detalha monotonicidade, mas deixa sem especificação local quais outras suposições compõem esse conjunto.
- **Referente de “efeito causal médio” no experimento ideal:** a linha 67 afirma que a atribuição aleatória identifica o efeito causal médio, mas o referente populacional desse efeito não é repetido naquele parágrafo.
- **Abrangência da identificação observacional:** a linha 71 diz que, em estudos observacionais, a identificação depende de medir e ajustar causas comuns; o trecho não delimita se essa formulação se refere especificamente a desenhos de ajuste por confundidores ou a estudos observacionais em geral.
- **Regra de ajuste em DAGs:** a linha 75 usa “pode exigir bloqueio” para confundidores, mas não explicita no trecho o conjunto completo de caminhos ou critérios que determinariam o bloqueio em uma aplicação.
- **Alcance de SUTVA:** a linha 77 combina tratamento “suficientemente preciso” com ausência de dependência inadvertida entre unidades, mas não separa formalmente, no trecho, essas duas dimensões nem define as versões relevantes do tratamento.
- **Ordem lógica e revisão iterativa:** a linha 79 prescreve uma sequência e, no mesmo parágrafo, admite ida e volta entre etapas; o trecho não especifica em que sentido a sequência continua sendo obrigatória quando uma etapa posterior revisa uma anterior.

## Termos que precisam permanecer consistentes

- **Pergunta causal**, **objeto causal** e **comparação contrafactual**: aparecem como decisões substantivas anteriores à técnica (linha 55).
- **População relevante**, **versões da intervenção**, **resultado** e **horizonte temporal**: compõem a definição inicial do objeto causal (linha 55).
- **Tratamento**, **controle**, **\(X_i\)**, **\(Y_i(1)\)**, **\(Y_i(0)\)** e **\(Y_i(x)\)**: devem conservar os papéis notacionais apresentados nas linhas 57–59.
- **Resultado potencial** e **resultado observado**: a seção os contrasta; não são sinônimos (linha 59).
- **Efeito individual**, **efeito causal**, **associação observada** e **efeito causal médio**: designam níveis ou tipos distintos de quantidade no trecho (linhas 59 e 67).
- **Estimando**, **estimador** e **estimativa**: são definidos como quantidade-alvo, regra amostral e valor numérico, respectivamente (linha 61).
- **Identificação**, **desenho**, **suposições de identificação** e **inferência estatística**: a seção os encadeia, mas não os trata como sinônimos (linhas 65–69).
- **LATE**, **compliers** e **monotonicidade**: aparecem no contexto específico de variáveis instrumentais e não devem ser usados como efeitos gerais da população (linha 63).
- **Credibilidade causal** e **precisão estatística**: são dimensões distintas e conjuntamente relevantes (linha 69).
- **Causas comuns**, **confundimento**, **condicionamento**, **bloqueio** e **controles**: referem-se a papéis e operações diferentes no argumento de identificação (linhas 67, 71, 73 e 75).
- **Regressão**, **pareamento**, **diferença-em-diferenças**, **RDD** e **variáveis instrumentais**: são técnicas ou desenhos citados, não garantias automáticas das suposições de identificação (linha 67).
- **DAG**, **grafo**, **colisor**, **variável pós-tratamento**, **mediador**, **efeito intermediário** e **operador de intervenção**: a seção distingue esses termos ao discutir a estrutura causal (linha 75).
- **Intervir em \(X\)** e **observar unidades com \(X=x\)**: são operações conceitualmente diferentes (linha 75).
- **SUTVA**, *Stable Unit Treatment Value Assignment*, **tratamento suficientemente preciso** e dependência do tratamento de outras unidades: formam o vocabulário específico do pressuposto apresentado na linha 77.
- **Pergunta causal**, **estimando**, **estrutura causal**, **desenho**, **suposições**, **estimador** e **inferência**: constituem a sequência lógica explicitada na linha 79.

## Perguntas para o agente macro

- O escopo binário de tratamento e controle nas linhas 57–59 deve ser tratado como uma escolha deliberada desta exposição ou apenas como a notação introdutória do trecho?
- O agente macro pretende nomear formalmente os dois estimandos contrastados no exemplo do tabagismo da linha 61, ou manter a descrição substantiva usada pela seção?
- Ao retomar variáveis instrumentais, quais “suposições usuais” da linha 63 devem permanecer explicitamente associadas ao LATE, além da monotonicidade mencionada?
- A expressão “efeito causal médio” da linha 67 deve permanecer sem um referente populacional adicional quando reaparecer em outras partes do verbete?
- A formulação sobre estudos observacionais da linha 71 deve ser lida como descrição de ajuste de causas comuns ou como enunciado para todo desenho observacional?
- Na continuidade do verbete, “controle” será reservado à condição de tratamento ou também abrangerá variáveis auxiliares usadas para identificação e precisão, como discutido na linha 73?
- O vocabulário de DAGs e modelos causais estruturais usado na linha 75 será retomado com a mesma distinção entre observação e intervenção?
- A formulação de SUTVA na linha 77 será usada como referência geral para resultados potenciais ou apenas para a formulação simples apresentada neste trecho?
- A sequência da linha 79 será a arquitetura organizadora das seções seguintes, mantendo a possibilidade de revisão iterativa mencionada no próprio parágrafo?
- As citações locais associadas aos estimandos, ao LATE, à revolução da credibilidade e à distinção entre estimando e identificação devem continuar sendo os pontos de apoio bibliográfico desta cadeia argumentativa?
