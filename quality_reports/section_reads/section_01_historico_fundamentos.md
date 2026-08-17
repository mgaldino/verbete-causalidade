# Section Read — 1. Histórico e fundamentos epistemológicos

## Tese da seção

A seção apresenta a inferência causal contemporânea como resultado de uma passagem de um problema histórico e epistemológico — como inferir causalidade fora do experimento e como definir causalidade — para linguagens formais baseadas em resultados potenciais e DAGs. O exemplo do tabagismo e câncer de pulmão organiza a narrativa: a correlação e a convergência de evidências não resolviam, por si sós, o problema conceitual; a linguagem dos resultados potenciais passou a explicitar os resultados contrafactuais e os efeitos; e a tradição dos modelos causais estruturais e DAGs é apresentada como uma abordagem matematicamente equivalente, com ênfase e notação distintas. Por limitação de espaço, resultados potenciais são adotados como eixo do verbete, embora ambas as abordagens sejam declaradas úteis e relevantes.

## Claims explícitos

| Claim | Linhas/parágrafos | Evidência |
|---|---|---|
| A história da causalidade remonta pelo menos a Aristóteles e aos quatro tipos de causas. | Linha 45, 1º parágrafo | A abertura afirma que a causalidade tem “uma longa história” e remonta “pelo menos a Aristóteles e seus quatro tipos de causas”. |
| O debate sobre tabagismo e câncer de pulmão talvez seja o episódio histórico mais informativo para compreender a dificuldade da inferência causal fora do experimento. | Linha 45, 1º parágrafo | O texto usa o debate como episódio histórico exemplar e emprega o hedge “talvez”. |
| Em meados do século XX, havia bastante evidência de correlação entre tabagismo e câncer de pulmão e debate sobre como inferir causalidade. | Linha 45, 1º parágrafo | A frase declara a existência de “bastante evidência da correlação” e de “muito debate sobre como inferir causalidade” [@hill1965]. |
| Havia uma dificuldade conceitual em entender causa como algo que produz invariavelmente o mesmo resultado. | Linha 45, 1º parágrafo | O texto observa que fumantes que nunca desenvolveram câncer e não fumantes que o desenvolveram “pareceriam contradizer a afirmação causal” sob essa definição. |
| A conclusão da saúde pública precisou apoiar-se na convergência de diferentes linhas de evidência, e não em um experimento ou teste decisivo. | Linha 45, 1º parágrafo | A frase contrasta “a convergência de diferentes linhas de evidência” com “um experimento ou teste decisivo”. |
| Em 1965, Austin Bradford Hill organizou esse julgamento em nove critérios. | Linha 45, 1º parágrafo | O texto enumera força, consistência, especificidade, temporalidade, gradiente biológico, plausibilidade, coerência, experimento e analogia [@hill1965]. |
| A lista de Hill era *ad hoc* e não resolvia o problema fundamental de definir causalidade e identificar inequivocamente quando se podia falar em causalidade. | Linha 45, 1º parágrafo | A avaliação aparece imediatamente após a enumeração dos nove critérios. |
| Fora do contexto experimental, não havia uma lógica clara para realizar inferência causal. | Linha 45, 1º parágrafo | A frase encerra o primeiro parágrafo com essa formulação explícita. |
| A linguagem posteriormente usada na inferência causal já existia em 1923. | Linha 47, 2º parágrafo | O parágrafo afirma que, em trabalho de 1923, Jerzy Neyman representou formalmente os rendimentos potenciais em experimentos agrícolas aleatorizados; a tradução em inglês apareceria em 1990 [@rubin2022interview]. |
| Donald Rubin colocou a linguagem dos resultados potenciais no centro da definição de efeitos causais e estendeu seu uso à análise de dados observacionais. | Linha 47, 2º parágrafo | O texto atribui a Rubin a centralidade dos resultados potenciais e a extensão do uso “à análise de dados observacionais” [@rubin1974]. |
| Essa transformação ajudou a formalizar uma agenda de pesquisa sobre inferência causal observacional. | Linha 47, 2º parágrafo | O texto diz que Rubin converteu uma ferramenta do experimento em linguagem geral para definir efeitos e explicitar o problema da atribuição, ajudando a “destravar uma agenda de pesquisa”. |
| A linguagem dos resultados potenciais teria permitido formular com maior precisão a controvérsia sobre tabagismo e câncer. | Linha 47, 2º parágrafo | O exemplo dado é que alguns fumantes nunca desenvolverem a doença não invalidaria que fumar elevasse causalmente o risco médio na população. |
| Cada pessoa tem dois desfechos possíveis: o que teria sob tabagismo e o que teria sob não tabagismo. | Linha 49, 3º parágrafo | O parágrafo define os dois desfechos possíveis para cada pessoa no período relevante. |
| Apenas um dos dois desfechos chega a ocorrer e é registrado pelos dados; o outro permanece contrafactual. | Linha 49, 3º parágrafo | A oposição entre o resultado que ocorre e o resultado que “permanece contrafactual” é explicitada na segunda frase. |
| O efeito do tabagismo para uma pessoa é a diferença entre os dois resultados potenciais. | Linha 49, 3º parágrafo | O texto define o efeito individual como a diferença entre os dois resultados. |
| Os efeitos individuais podem variar, podendo ser nulos para algumas pessoas e grandes para outras. | Linha 49, 3º parágrafo | A frase afirma que o efeito “pode ser nulo para algumas e grande para outras”. |
| Ao falar de causalidade, tipicamente se fala da média de uma população. | Linha 49, 3º parágrafo | O texto usa explicitamente “tipicamente estamos falando da média de uma população” e introduz a variação dos efeitos individuais como razão. |
| Dizer que o tabagismo causa câncer não exige que todo fumante desenvolva a doença. | Linha 49, 3º parágrafo | A frase começa com essa negação explícita. |
| A afirmação causal sobre tabagismo exige que a proporção que desenvolveria câncer fumando seja maior que a proporção que desenvolveria câncer não fumando. | Linha 49, 3º parágrafo | O texto formula a comparação entre as duas proporções potenciais na população. |
| Separar o que de fato aconteceu do que teria acontecido sob a outra alternativa é a chave conceitual para definir efeitos causais com precisão. | Linha 49, 3º parágrafo | A penúltima frase chama essa separação de “chave conceitual”. |
| Essa separação sustenta a agenda quantitativa de inferência causal. | Linha 49, 3º parágrafo | A frase final liga a distinção entre fato e contrafactual à agenda quantitativa. |
| Em paralelo, desenvolveu-se a tradição dos modelos causais estruturais e dos grafos acíclicos direcionados. | Linha 51, 4º parágrafo | O parágrafo introduz essa tradição e menciona antecedentes nos diagramas de trajetórias de Sewall Wright e formalização moderna associada a Judea Pearl [@pearl2009]. |
| Resultados potenciais e DAGs diferem em ênfases e notação, mas são matematicamente equivalentes. | Linha 51, 4º parágrafo | O texto declara a diferença de ênfases e notação e a equivalência matemática. |
| O que é verdadeiro em uma das duas linguagens também é verdadeiro na outra. | Linha 51, 4º parágrafo | A frase seguinte apresenta essa consequência explicitamente. |
| A virada decisiva compartilhada pelas duas tradições foi explicitar a comparação contrafactual e as suposições que conectam os dados observados a ela. | Linha 51, 4º parágrafo | O texto identifica esses dois elementos como aquilo que uma análise causal deve declarar. |
| Por limitação de espaço, o verbete usa resultados potenciais como eixo. | Linha 51, 4º parágrafo | O texto qualifica resultados potenciais como o paradigma *mainstream* na ciência política e explica a escolha “por limitação de espaço”. |
| Ambas as abordagens são úteis e relevantes para a moderna inferência causal. | Linha 51, 4º parágrafo | A frase final preserva a relevância de resultados potenciais e DAGs, apesar da escolha de um eixo. |

## Escopo e hedges

- O escopo histórico vai de Aristóteles a Hill, Neyman, Rubin, Wright e Pearl. A formulação “remonta pelo menos a Aristóteles” indica que a narrativa não se apresenta como início exaustivo da história da causalidade (linha 45).
- O caso empírico usado como fio condutor é a controvérsia sobre tabagismo e câncer de pulmão, especialmente para a dificuldade de inferir causalidade fora do experimento (linha 45).
- O foco epistemológico está na definição de causalidade, na distinção entre correlação e causalidade, na atribuição contrafactual, nos resultados potenciais e na relação com modelos causais estruturais e DAGs (linhas 45–51).
- “Talvez constitua” reduz o grau de certeza da caracterização do episódio do tabagismo como “mais informativo” (linha 45).
- “Pareceriam contradizer” apresenta como aparência ou consequência de uma definição a tensão entre casos individuais e uma afirmação causal (linha 45).
- “Precisou apoiar-se” é uma formulação assertiva sobre a base da conclusão de saúde pública, enquanto “em vez de um experimento ou teste decisivo” especifica o contraste (linha 45).
- “Não resolvia” e “não havia uma lógica clara” são formulações fortes sobre a insuficiência atribuída à lista de Hill e sobre o contexto não experimental (linha 45).
- “Teria permitido” marca como possibilidade histórica o ganho de precisão que a linguagem dos resultados potenciais poderia oferecer à controvérsia sobre tabagismo (linha 47).
- “Tipicamente” limita a afirmação de que a causalidade costuma se referir à média populacional, sem afirmar que todo efeito causal seja necessariamente uma média populacional (linha 49).
- “Podem variar”, “pode ser nulo” e “não exige que todo fumante” impedem uma leitura determinista ou universal da afirmação sobre tabagismo (linha 49).
- “Em paralelo” apresenta a tradição dos modelos estruturais e DAGs como desenvolvimento paralelo, sem ordenar as duas tradições por prioridade histórica (linha 51).
- “Diferem em ênfases e notação, mas matematicamente são equivalentes” limita a diferença entre as abordagens à ênfase e à notação no trecho, ao mesmo tempo que afirma equivalência matemática (linha 51).
- “Por limitação de espaço” explicita a razão editorial para usar resultados potenciais como eixo; “*mainstream* na ciência política” qualifica esse eixo dentro do campo (linha 51).

## O que a seção NÃO afirma

- Não encontrei a afirmação de que os nove critérios de Hill sejam inúteis em todos os contextos; o texto afirma que a lista era *ad hoc* e não resolvia o problema fundamental (linha 45).
- Não encontrei a afirmação de que experimentos sejam desnecessários ou incapazes de produzir inferência causal; o texto situa a dificuldade explicitamente “fora do contexto experimental” (linha 45).
- Não encontrei a afirmação de que a correlação entre tabagismo e câncer, sozinha, prove causalidade; o parágrafo destaca a dificuldade de inferência e a convergência de diferentes linhas de evidência (linha 45).
- Não encontrei a afirmação de que todos os fumantes desenvolveriam câncer sob tabagismo; a seção afirma expressamente o contrário ao admitir efeitos individuais nulos ou diferentes (linhas 47 e 49).
- Não encontrei a afirmação de que os dois resultados potenciais de uma pessoa sejam observados simultaneamente; o texto diz que apenas um ocorre e é registrado, enquanto o outro é contrafactual (linha 49).
- Não encontrei a afirmação de que o efeito individual seja necessariamente igual para todas as pessoas; a seção afirma que os efeitos podem variar (linha 49).
- Não encontrei a afirmação de que resultados potenciais e DAGs sejam a mesma linguagem em termos de ênfase e notação; o texto os distingue nesses aspectos e afirma equivalência matemática (linha 51).
- Não encontrei a afirmação de que DAGs sejam o eixo escolhido pelo verbete; o eixo declarado é o dos resultados potenciais, por limitação de espaço (linha 51).
- Não encontrei, nestes quatro parágrafos, uma descrição de procedimentos de estimação, de técnicas específicas de análise ou de decisões de desenho empírico; não encontrei.

## Ambiguidades reais

- “O episódio histórico mais informativo” é uma comparação superlativa sem critério de comparação explicitado no parágrafo (linha 45).
- “Bastante evidência da correlação” indica volume ou força de evidência, mas o parágrafo não especifica sua medida, composição ou fonte além da citação a Hill (linha 45).
- “A convergência de diferentes linhas de evidência” é apresentada como base da conclusão de saúde pública, mas as linhas concretas dessa convergência não são identificadas nesse enunciado (linha 45).
- “A linguagem que seria usada posteriormente” só é desambiguada progressivamente pelo parágrafo, que passa de Neyman aos rendimentos potenciais e depois à linguagem dos resultados potenciais (linha 47).
- “Com maior precisão” indica ganho relativo de precisão na formulação da controvérsia, mas não especifica o padrão de precisão usado para a comparação (linha 47).
- “A média de uma população” não identifica, nesse parágrafo, qual população ou qual medida populacional está sendo tomada como alvo no exemplo do tabagismo (linha 49).
- “Matematicamente são equivalentes” não delimita, no trecho, em que sentido ou sob quais condições a equivalência entre resultados potenciais e DAGs é afirmada (linha 51).
- “Paradigma *mainstream* na ciência política” não especifica período, subcampo ou critério para o qualificativo “*mainstream*” (linha 51).
- “Úteis e relevantes” afirma valor para a inferência causal moderna, mas não explicita quais usos ou critérios de relevância estão em vista (linha 51).

## Termos que precisam permanecer consistentes

- “Causalidade”, “inferência causal” e “efeitos causais” aparecem relacionados, mas não como sinônimos automáticos: a seção passa do problema de definir causalidade à definição de efeitos e à inferência (linhas 45–49).
- “Correlação” e “causalidade” devem permanecer como conceitos distintos: a correlação entre tabagismo e câncer é o ponto de partida histórico, enquanto a causalidade exige comparação entre resultados potenciais (linhas 45 e 49).
- “Causa”, “causalidade” e “afirmação causal” pertencem ao mesmo debate histórico, mas a seção também usa “efeito causal” para a diferença entre resultados potenciais (linhas 45 e 49).
- “Resultados potenciais”, “desfechos possíveis” e “o que teria acontecido sob a outra alternativa” designam a linguagem contrafactual apresentada no núcleo conceitual da seção (linhas 47 e 49).
- “Contrafactual” deve permanecer associado ao resultado alternativo não observado, não ao resultado efetivamente registrado (linha 49).
- “Efeito individual” e “média de uma população” são níveis distintos no texto: o primeiro é a diferença para uma pessoa; o segundo é a referência típica quando se fala de causalidade (linha 49).
- “Modelos causais estruturais”, “grafos acíclicos direcionados” e “DAGs” aparecem como a tradição paralela; “resultados potenciais” é a outra tradição e não um sinônimo de DAGs (linha 51).
- “Ênfases e notação” nomeiam as diferenças declaradas entre as duas tradições, enquanto “equivalentes” nomeia a relação matemática afirmada entre elas (linha 51).
- “Comparação contrafactual” e “suposições que conectam os dados observados a ela” formam o par de elementos que a análise causal deve explicitar (linha 51).
- No exemplo, “tabagismo”, “fumar”, “fumantes”, “não fumantes”, “câncer de pulmão” e “doença” são termos do mesmo fio empírico, com “doença” retomando o câncer mencionado anteriormente (linhas 45–49).

## Perguntas para o agente macro

- A arquitetura geral deve preservar como tese desta seção a passagem da dificuldade histórica de inferir causalidade fora do experimento para a explicitação contrafactual por meio de linguagens formais?
- A transição entre Hill, Neyman e Rubin deve continuar sendo lida como uma sequência histórica e conceitual, sem transformar a crítica à lista de Hill em uma rejeição geral de evidências ou experimentos?
- O argumento macro preserva a distinção entre efeito individual variável, resultado potencial não observado e média populacional no exemplo do tabagismo?
- A afirmação de equivalência matemática entre resultados potenciais e DAGs está sendo usada no restante do verbete no mesmo sentido em que aparece aqui, com diferenças de ênfase e notação?
- A escolha de resultados potenciais como eixo por limitação de espaço permanece compatível com a afirmação de que DAGs são uma abordagem útil e relevante?
- Há, no argumento macro, algum uso dos termos “causalidade”, “inferência causal”, “efeito causal”, “resultado potencial” ou “contrafactual” que ultrapasse o sentido explicitado nestes quatro parágrafos?
