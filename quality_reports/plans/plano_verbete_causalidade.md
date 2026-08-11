# Plano de Redação — Verbete "Causalidade"

## Objetivo

Produzir um verbete metodológico, do subtipo conceito metodológico, para a EBCS/ANPOCS. O verbete tratará “causalidade” e “inferência causal” como o mesmo objeto editorial. O limite de 5.000 palavras inclui referências. O texto deve ter autoria e posicionamento claros, explicar a lógica que governa alegações causais e permitir que a leitora avalie sua credibilidade, sem se converter em tutorial técnico.

## Tese de trabalho

A principal transformação contemporânea da causalidade nas ciências sociais não foi apenas a multiplicação de métodos, mas a consolidação de linguagens que tornam explícitos os contrafactuais, os estimandos e as suposições de identificação. Essa transformação caracteriza a fronteira internacional da disciplina, especialmente após a revolução da credibilidade, mas foi incorporada de maneira tardia e incompleta na Ciência Política e nas Relações Internacionais publicadas no Brasil. O contraste brasileiro será sustentado pelo paper de Manoel Galdino e Rodrigo Martins da Silva apresentado no 15º Encontro da ABCP em 4 de agosto de 2026, com formulações calibradas ao corpus efetivamente analisado.

O verbete defenderá, portanto, duas proposições conectadas: hoje, uma alegação causal persuasiva precisa declarar qual quantidade causal está em jogo e por que o desenho permite identificá-la; nos periódicos brasileiros analisados, a ambição causal se difundiu mais rapidamente que a explicitação das estratégias de identificação.

## Arquitetura proposta

### Preâmbulo não numerado — 150 a 200 palavras

Definir causalidade como relação ou estrutura explicativa que permite distinguir associação de produção, dependência ou geração de um fenômeno. Situar o conceito como central para explicação científica, atribuição de responsabilidade, desenho de pesquisa e debate metodológico.

### 1. Histórico e fundamentos epistemológicos — 500 a 650 palavras

Reconstruir a passagem de uma prática causal com linguagem hesitante para linguagens formais de causalidade em estudos observacionais. Usar o caso cigarro/câncer, Fisher, Bradford Hill, Yule, Cox, Muthén e a entrevista de Robins como fio narrativo.

Pontos a cobrir:

- dificuldade histórica de falar em causalidade fora de experimentos;
- critérios de Bradford Hill como solução pré-formal;
- resistência da estatística à linguagem causal;
- necessidade de uma linguagem para contrafactuais e identificação.

### 2. Lógica de aplicação e decisões de desenho — 850 a 1.000 palavras

Usar resultados potenciais como linguagem principal para conectar pergunta causal, contraste contrafactual, estimando, identificação, estimador e inferência estatística. DAGs/SCM devem ser mencionados como linguagem complementar importante, mas receber pouco espaço por causa do limite de palavras. Evitar transformar Pearl vs. Rubin em disputa de escola.

Pontos a cobrir:

- problema fundamental da inferência causal;
- estimando, estimador e estimativa;
- identificação como problema distinto da inferência estatística;
- DAGs, backdoor e operador `do`;
- diferenças e complementaridades entre resultados potenciais e modelos gráficos.

### 3. Vantagens, limites e vieses conhecidos — 650 a 800 palavras

Explicar o ganho da formalização causal e as condições em que suas inferências falham. Distinguir limitações de escopo de vieses inferenciais e relacioná-los às decisões de desenho.

Pontos a cobrir:

- confundimento e seleção;
- interferência e contaminação;
- collider bias e post-treatment bias;
- erro de mensuração;
- validade externa e transportabilidade;
- diferença entre nomear um desenho e satisfazer suas condições de identificação.

### 4. Exemplos de aplicação em ciências sociais — 450 a 600 palavras

Apresentar dois ou três estudos que mostrem a lógica causal em operação, e não apenas resultados substantivos. Os exemplos devem combinar a genealogia internacional da revolução da credibilidade e aplicações de Ciência Política ou Relações Internacionais no Brasil.

Pontos a cobrir:

- usar Card e Krueger sobre salário mínimo como exemplo internacional de DiD;
- usar Avelino, Biderman e Barone como exemplo observacional brasileiro de RDD eleitoral, comparando partidos que venceram ou perderam disputas municipais apertadas;
- manter Suong, Desposato e Gartzke apenas como alternativa de RI se houver espaço, não como exemplo central;
- para cada exemplo, indicar pergunta, estimando ou contraste, decisão de identificação e principal limitação;
- evitar ensinar a executar DiD ou RDD.
- informar que o exemplo brasileiro foi selecionado da lista de 59 artigos com estratégia explícita identificada pelo paper da ABCP, sem confundir presença do desenho com qualidade comprovada da execução;
- no caso de Avelino, Biderman e Barone, explicitar que o estimando do RDD é local ao limiar e que a especificação polinomial de quarto grau deve ser lida à luz dos padrões metodológicos atuais.

### 5. Debates contemporâneos, escopo e Brasil — 800 a 950 palavras

Situar a revolução da credibilidade como fronteira internacional e contrastá-la com sua incorporação no Brasil. Usar o paper de Galdino e Martins da Silva e seus artefatos reproduzíveis como fonte principal da caracterização brasileira.

Tarefas específicas:

- declarar que o corpus do paper cobre 4.144 artigos elegíveis de nove periódicos entre 2005 e 2025;
- reproduzir apenas estatísticas validadas e com denominadores explícitos;
- dizer “nos periódicos brasileiros analisados”, sem generalizar automaticamente para toda a disciplina;
- preservar a ressalva de que as classificações medem presença de práticas, não qualidade de execução;
- selecionar resultados e, se necessário, produzir análises adicionais no repo `metodos_CP`, mantendo os scripts de computação separados;
- tratar process tracing, QCA e abordagens afins em um parágrafo curto ou nota de rodapé. Explicar que todo verbete exige escolhas de cobertura e que essas tradições ficam fora do tratamento principal por limite de escopo, não por irrelevância.
- delimitar quando a linguagem causal simplifica indevidamente fenômenos sociais e distinguir causa de condição, mecanismo, constituição, significado e interpretação.

### 6. Referências e leituras adicionais

Selecionar de 6 a 12 referências por meio de uma revisão de literatura específica, usando a skill `lit-review`. Organizar a busca e a síntese em quatro blocos: textos seminais; fronteira e debates contemporâneos; crítica e limites; aplicações e diagnóstico brasileiro. Incluir um manual ou guia prático, uma referência crítica e ao menos uma aplicação brasileira ou latino-americana, conforme as normas da EBCS.

### 7. Ver também

Sugestões iniciais:

- Desenho de pesquisa;
- Explicação;
- Mecanismos causais;
- Process tracing;
- Método comparativo;
- Experimentos;
- Correlação;
- Validade interna e externa.

## Checklist antes da entrega

- O preâmbulo tem 150 a 200 palavras e não está rotulado como resumo.
- O sumário vem depois do preâmbulo.
- O texto defende uma interpretação, não apenas resume literatura.
- A caracterização brasileira reproduz apenas resultados validados do paper com Rodrigo Martins e preserva os denominadores.
- As referências têm função clara e estão entre 6 e 12.
- Há ao menos duas referências brasileiras ou latino-americanas.
- Há ao menos uma referência crítica recente dos últimos dez anos.
- O texto não vira tutorial de métodos.
- A lista "Ver também" tem 3 a 8 remissões.
- O bloco "Como citar este verbete" não foi preenchido manualmente.
- O texto completo, incluindo referências, não ultrapassa 5.000 palavras.
- O arquivo-fonte é R Markdown e o PDF foi gerado e validado visualmente.

## Prazo e formato

- Prazo editorial confirmado: 21 de agosto de 2026.
- Meta interna: entregar antes do prazo.
- Fonte canônica: `paper/verbete-causalidade.Rmd`.
- Entrega e validação: PDF reproduzível gerado por `code/99_run_all.R`.

## Materiais relacionados já triados

Ver `notes/reaproveitamento_projetos_relacionados.md`.
