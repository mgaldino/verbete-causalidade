# Leitura de seção — Seção 2: Lógica de aplicação e decisões de desenho

## 1. Tese da seção

A interpretação causal deve resultar de uma cadeia argumentativa explícita que começa pela pergunta e pelo objeto causal, passa pela definição do estimando, pela estrutura causal, pelo desenho e pelas suposições de identificação, e só depois chega ao estimador e à inferência estatística. Técnicas e modelos não produzem identificação automaticamente: sua interpretação depende da comparação contrafactual e de afirmações substantivas sobre o processo gerador dos dados. Resultados potenciais e DAGs são apresentados como linguagens complementares para explicitar essas escolhas e suposições.

## 2. Claims explícitos

| ID | Linha/parágrafo | Claim explícito | Evidência ou apoio apresentado na própria seção |
|---|---|---|---|
| C1 | Linha 57, parágrafo 1 | Uma pesquisa causal começa antes da escolha de uma técnica. | O parágrafo decompõe a pergunta vaga sobre se uma política “funciona” em população, versões da intervenção, resultado, horizonte temporal e comparação contrafactual. |
| C2 | Linha 57, parágrafo 1 | Resultados e versões distintas da intervenção correspondem a perguntas causais distintas. | Os exemplos são reforma eleitoral com efeitos sobre comparecimento, composição do eleitorado ou representação partidária, e política entendida como elegibilidade, oferta, adesão ou exposição efetiva. |
| C3 | Linha 57, parágrafo 1 | As escolhas substantivas definem o objeto causal e não podem ser delegadas ao modelo estatístico. | Apoio argumentativo pelos exemplos anteriores; não há citação nesse parágrafo. |
| C4 | Linha 59, parágrafo 2 | Em uma formulação binária de resultados potenciais, o efeito individual é a diferença entre os resultados sob tratamento e controle, mas um dos dois permanece contrafactual. | Definição notacional de $Y_i(1)$, $Y_i(0)$ e $Y_i(1)-Y_i(0)$; não há citação nesse parágrafo. |
| C5 | Linha 59, parágrafo 2 | Efeitos agregados, como efeito médio populacional, efeito entre tratados e efeito local próximo de um limiar, são estimandos. | Os três casos aparecem como exemplos de quantidades-alvo. |
| C6 | Linha 59, parágrafo 2 | Estimando, estimador e estimativa são objetos distintos. | O texto define estimando como quantidade-alvo, estimador como regra aplicada à amostra e estimativa como valor numérico produzido. |
| C7 | Linha 59, parágrafo 2 | Confundir esses objetos encobre decisões substantivas. | A seção afirma que estimadores diferentes podem perseguir o mesmo estimando e que a mesma regressão pode ter interpretações causais diferentes ou nenhuma, conforme o desenho. |
| C8 | Linha 61, parágrafo 3 | Definir um estimando não garante sua identificação. | Identificação é definida como a demonstração de que, sob suposições, a quantidade causal pode ser expressa pela distribuição dos dados observados. |
| C9 | Linha 61, parágrafo 3 | A atribuição aleatória torna grupos comparáveis em expectativa em um experimento ideal. | Afirmação conceitual sem citação local. |
| C10 | Linha 61, parágrafo 3 | Em estudos observacionais, a comparabilidade precisa de defesa específica. | O texto enumera ausência de confundimento após condicionamento, tendências paralelas, continuidade no limiar e restrições de exclusão como suposições associadas a desenhos diferentes. |
| C11 | Linha 61, parágrafo 3 | Suposições de identificação não são propriedades automáticas de técnicas. | A seção contrapõe regressão, pareamento, diferença-em-diferenças, RDD e variáveis instrumentais a afirmações sobre o processo gerador dos dados e o mundo social. |
| C12 | Linha 63, parágrafo 4 | Identificação causal e inferência estatística respondem a perguntas distintas. | A primeira é associada à interpretação causal da comparação; a segunda, à variação da estimativa sob incerteza amostral ou outras fontes modeladas. |
| C13 | Linha 63, parágrafo 4 | Precisão estatística não corrige falta de identificação. | Os exemplos são erros-padrão pequenos que não corrigem confundimento e intervalos estreitos ao redor de quantidade enviesada. |
| C14 | Linha 63, parágrafo 4 | Um argumento de identificação plausível pode produzir estimativas imprecisas. | Contraste conceitual com C13; não há evidência empírica ou citação local. |
| C15 | Linha 63, parágrafo 4 | Credibilidade causal e precisão estatística são dimensões diferentes e necessárias. | Síntese explícita do contraste desenvolvido no parágrafo. |
| C16 | Linha 65, parágrafo 5 | O desenho explica a origem da variação usada para aproximar o contrafactual e liga estimando a dados. | A seção distingue atribuição pela pesquisadora, regras institucionais, mudanças temporais, limiares e ajuste de causas comuns. |
| C17 | Linha 65, parágrafo 5 | A revolução da credibilidade valorizou o desenho porque complexidade de especificação não reparava comparações frágeis. | Apoio bibliográfico explícito em `@angristpischke2010`. |
| C18 | Linha 65, parágrafo 5 | A atenção ao desenho não aboliu os modelos; reposicionou-os dentro do argumento sobre a origem da variação. | Afirmação de síntese apoiada no enquadramento do parágrafo e na citação `@angristpischke2010`. |
| C19 | Linha 67, parágrafo 6 | DAGs podem tornar auditável o argumento causal. | O parágrafo mostra como o grafo representa confundidores, colisores e variáveis pós-tratamento. |
| C20 | Linha 67, parágrafo 6 | Condicionar em confundidores pode ser necessário, enquanto condicionar em colisores pode criar associação; controlar variáveis pós-tratamento pode alterar a pergunta. | Apoio por explicação gráfica verbal; não há citação local. |
| C21 | Linha 67, parágrafo 6 | O operador `do(X = x)` distingue observação de intervenção. | O parágrafo contrasta observar unidades com $X=x$ e imaginar uma intervenção que fixa $X$. |
| C22 | Linha 67, parágrafo 6 | A validade de um grafo depende da defensabilidade das relações causais postuladas. | Afirmação explícita ao final do parágrafo; não há citação local. |
| C23 | Linha 69, parágrafo 7 | Resultados potenciais destacam estabilidade da intervenção e ausência de interferência, enquanto grafos ajudam a localizar caminhos de falha dessas condições. | Contraste conceitual entre as duas linguagens; não há citação local. |
| C24 | Linha 69, parágrafo 7 | A linguagem deve ser escolhida em função do problema, não por lealdade de escola. | Afirmação normativa seguida do ganho comum atribuído às duas linguagens: reduzir ambiguidades e expor dependência de conhecimento externo aos dados. |
| C25 | Linha 71, parágrafo 8 | Há uma sequência lógica: pergunta causal, estimando, estrutura causal, desenho, suposições de identificação, estimador e inferência. | A ordem é enumerada explicitamente. |
| C26 | Linha 71, parágrafo 8 | Essa sequência é disciplina argumentativa, não receita mecânica, e admite revisão iterativa. | O texto afirma que teoria e evidência podem levar à revisão de etapas anteriores. |
| C27 | Linha 71, parágrafo 8 | A sequência reduz o risco de acrescentar interpretação causal depois de encontrar significância estatística. | Consequência argumentada da obrigação de explicitar objeto e comparação antes do resultado. |
| C28 | Linha 71, parágrafo 8 | Estimandos claros conectam teoria, evidência e análise, mas não substituem a defesa da identificação. | Apoio bibliográfico explícito em `@lundberg2021`. |

## 3. Escopo e hedges

- A notação apresentada na linha 59 tem escopo binário: tratamento versus controle. A seção não declara que essa notação cobre tratamentos multivalorados, contínuos ou dinâmicos.
- “Por exemplo” (linha 57), “geralmente” (linha 59) e “são exemplos” (linha 59) preservam caráter ilustrativo e evitam apresentar as listas como exaustivas.
- A identificação é condicionada a “determinadas suposições” (linha 61); a seção não trata as quantidades causais como recuperáveis sem hipóteses.
- A comparabilidade experimental é limitada ao “experimento ideal” e ocorre “em expectativa” (linha 61).
- As suposições enumeradas na linha 61 são ditas “associadas a desenhos diferentes”, sem alegação de que a lista seja completa ou de que cada suposição pertença exclusivamente a uma técnica.
- Na linha 63, a inferência inclui incerteza amostral “ou outras fontes explicitamente modeladas”; portanto, o escopo não é restrito formalmente à amostragem.
- “Podem gerar comparações informativas” (linha 65), “pode exigir bloqueio”, “pode criar associação” e “podem representar” (linha 67) evitam afirmar consequências invariáveis de regras, limiares ou ajustes.
- O operador de intervenção é “frequentemente” escrito como `do(X = x)` (linha 67), formulação que não reivindica exclusividade de notação.
- O argumento de identificação é qualificado como “plausível” (linha 63), não comprovado automaticamente.
- A sequência final é explicitamente qualificada como não mecânica e revisável (linha 71).

## 4. O que a seção explicitamente não afirma

- Não afirma que uma técnica específica seja suficiente para identificar efeitos causais.
- Não afirma que resultados estatisticamente significativos ou intervalos estreitos estabeleçam causalidade.
- Não afirma que estudos observacionais sejam incapazes de sustentar inferência causal.
- Não afirma que modelos estatísticos sejam dispensáveis; afirma expressamente que foram reposicionados dentro do argumento de desenho.
- Não afirma que DAGs descubram relações causais diretamente nos dados.
- Não afirma que resultados potenciais e DAGs sejam idênticos, rivais ou que uma linguagem seja universalmente superior à outra.
- Não apresenta SCM como termo ou sigla e não define formalmente um modelo causal estrutural; apresenta apenas o operador `do` e relações gráficas.
- Não oferece derivação matemática, algoritmo de estimação, teste diagnóstico ou receita completa para nenhum desenho citado.
- Não analisa uma aplicação empírica específica nem apresenta resultados numéricos.
- Não afirma que as listas de resultados, versões de tratamento, estimandos, suposições ou desenhos sejam exaustivas.
- Não encontrei, nessas linhas, afirmação sobre validade externa, generalização entre populações ou transporte de efeitos.
- Não encontrei, nessas linhas, discussão explícita de viés de seleção amostral, erro de mensuração, attrition ou missing data.

## 5. Ambiguidades reais

1. **Necessidade de precisão:** a frase “dimensões necessárias, mas diferentes” (linha 63) não esclarece em que sentido precisão estatística é sempre necessária. Pode significar que a incerteza deve ser avaliada, ou que apenas estimativas suficientemente precisas são informativas; são claims distintos.
2. **Abrangência de “outros estudos observacionais”:** a linha 65 diz que, nesses estudos, a identificação depende de medir e ajustar adequadamente causas comuns. Não fica claro se “outros” restringe o enunciado aos desenhos de ajuste por confundidores ou se pretende abranger todo estudo observacional não enquadrado como experimento natural/quase experimento.
3. **Fronteira entre experimento natural e quase experimento:** os dois termos aparecem lado a lado na linha 65, mas a seção não define a relação entre eles nem seus critérios de distinção.
4. **Estabilidade e ausência de interferência:** a linha 69 pode ser lida como exigência geral de qualquer linguagem de resultados potenciais ou como condição da formulação simples adotada na seção. Não explicita que resultados causais também podem ser definidos sob interferência quando ela é incorporada ao estimando.
5. **SCM implícito:** `do(X = x)` aparece na linha 67, mas “SCM”, “modelo causal estrutural” e a relação entre DAGs e SCM não aparecem. O leitor pode não saber qual estrutura dá sentido ao operador.
6. **Escopo do bloqueio:** “pode exigir bloqueio” (linha 67) é corretamente condicional, mas a seção não explicita que a decisão de ajuste depende do conjunto completo de caminhos e da pergunta causal, e não apenas de uma classificação variável a variável.
7. **“Efeito local para unidades próximas de um limiar”:** a linha 59 indica a localidade, mas não especifica se o alvo é o efeito no ponto de corte ou numa vizinhança. A formulação pode ser suficiente pedagogicamente, porém deixa o estimando exato indeterminado.
8. **Fonte de variação e contrafactual:** a linha 65 trata origem da variação como núcleo do desenho, mas não explicita se isso é uma definição de desenho ou uma de suas funções. A distinção pode importar para a consistência terminológica do verbete.

## 6. Termos que precisam permanecer consistentes

- **Pergunta causal:** vem antes da técnica e é traduzida pelo estimando.
- **Objeto causal:** conjunto das escolhas sobre população, intervenção, resultado, horizonte e comparação contrafactual.
- **Contrafactual:** resultado não observado da mesma unidade ou comparação aproximada pelo desenho; não deve virar sinônimo genérico de grupo de controle.
- **Resultados potenciais:** $Y_i(1)$ e $Y_i(0)$ na formulação binária usada.
- **Estimando:** quantidade causal alvo, definida independentemente do procedimento de cálculo.
- **Estimador:** regra aplicada à amostra para aprender sobre o estimando.
- **Estimativa:** valor numérico produzido pelo estimador.
- **Identificação:** ligação, sob suposições, entre a quantidade causal e a distribuição observada.
- **Inferência estatística:** quantificação da incerteza da estimativa, distinta da identificação.
- **Desenho de pesquisa:** ponte entre estimando e dados que explicita a origem da variação e a comparação contrafactual.
- **Suposições de identificação:** afirmações sobre o processo gerador dos dados e o mundo social; não propriedades automáticas de métodos.
- **Credibilidade causal** versus **precisão estatística:** dimensões distintas; a redação posterior deve preservar essa separação.
- **Tratamento**, **intervenção**, **exposição**, **oferta**, **adesão** e **elegibilidade:** não são intercambiáveis sem definição; a própria seção os distingue.
- **Experimento**, **experimento natural**, **quase experimento** e **estudo observacional:** categorias usadas na seção cuja relação deve permanecer estável no restante do texto.
- **Confundidor**, **colisor** e **variável pós-tratamento:** papéis causais distintos, não rótulos definidos somente pelo momento de mensuração.
- **DAG**, **grafo**, **operador de intervenção** e eventual **SCM/modelo causal estrutural:** precisam ser conectados sem apresentar o operador `do` como propriedade de qualquer grafo associacional.
- **Estabilidade da intervenção** e **ausência de interferência:** condições relacionadas, mas não sinônimas.

## 7. Perguntas para o agente macro

1. O verbete pretende restringir a exposição de resultados potenciais ao tratamento binário simples? Se sim, esse limite deve ser explicitado para impedir leitura excessivamente geral?
2. “Precisão estatística é necessária” quer dizer que a incerteza precisa ser quantificada ou que uma estimativa causal precisa ser estreita para ser útil? A redação deve distinguir essas interpretações?
3. A frase sobre “outros estudos observacionais” deve ser limitada explicitamente a estratégias de ajuste por confundidores, evitando parecer uma caracterização de todos os desenhos observacionais?
4. Para cumprir a menção concisa a DAGs/SCM, basta o operador `do` ou é necessário nomear “modelos causais estruturais” e situar em uma oração a relação com os DAGs?
5. A exigência de ausência de interferência deve ser apresentada como parte da formulação simples adotada, em vez de necessidade irrestrita de toda análise por resultados potenciais?
6. A distinção entre experimento natural e quase experimento será definida em outra seção? Se não, vale usar uma única categoria ou indicar a sobreposição terminológica?
7. Claims fundamentais sem citação local — problema contrafactual, identificação, colisores, variáveis pós-tratamento, estabilidade e interferência — receberão referências no agente macro ou a estratégia editorial é reservar citações apenas aos pontos centrais?
8. A expressão “efeito local para unidades próximas de um limiar” deve ser harmonizada com o exemplo de RDD para deixar claro que o estimando é local ao ponto de corte?
9. A sequência da linha 71 será usada como arquitetura organizadora do verbete inteiro? Se sim, as aplicações devem ser narradas na mesma ordem terminológica para preservar a fidelidade do argumento.

