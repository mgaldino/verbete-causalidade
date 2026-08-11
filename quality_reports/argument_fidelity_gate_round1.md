# Gate de Fidelidade Argumental — Round 1

**Manuscrito:** `paper/verbete-causalidade.Rmd`  
**Materiais de controle:** mapa geral e cinco leituras seccionadas  
**Papel deste relatório:** síntese interpretativa, sem revisão substantiva e sem edição do manuscrito

## Tese em uma frase

Para uma classe importante de alegações nas ciências sociais, a inferência causal moderna torna o argumento mais auditável ao exigir que a pergunta seja traduzida em um estimando, ligada a um contrafactual por um desenho e por suposições de identificação, e só então tratada por um estimador e por procedimentos de inferência, sem reduzir toda causalidade ou explicação social a essa linguagem.

## Causal claim em uma frase

**Não aplicável como claim causal empírico original:** o verbete não estima o efeito de um tratamento; sua proposição metodológica é que uma afirmação do tipo “mudar $X$ alteraria $Y$” só recebe interpretação causal defensável quando define a quantidade-alvo e justifica por que a comparação observada representa o contrafactual relevante (linhas 57–71 e 117).

## Tratamento

Não há tratamento próprio do verbete, pois ele é conceitual e metodológico. Os dois tratamentos apresentados apenas como aplicações são:

| Aplicação | Tratamento ilustrado | Onde aparece |
|---|---|---|
| Card e Krueger | Aumento do salário mínimo de Nova Jersey, em contraste com a ausência desse aumento na Pensilvânia | Linhas 93–95 |
| Avelino, Biderman e Barone | Eleição apertada de um prefeito de determinado partido, em contraste com a derrota apertada desse partido | Linhas 97–99 |

As estatísticas de Torreblanca et al. e de Galdino e Martins da Silva são diagnósticos descritivos da disciplina; não constituem tratamentos.

## Outcome

Não há outcome próprio do verbete. Nas aplicações, os resultados são o emprego nos restaurantes de *fast-food* estudados (Card e Krueger) e a votação municipal posterior do partido para deputado, sobretudo deputado federal no resultado numérico reportado (Avelino, Biderman e Barone). No diagnóstico disciplinar, os objetos medidos são categorias e frequências de práticas de pesquisa, e não outcomes de um desenho causal.

## Estimando(s)

O manuscrito não propõe um estimando empírico original. Ele apresenta três classes didáticas de estimando — efeito médio populacional, efeito entre tratados e efeito local próximo de um limiar (linha 59) — e mobiliza dois estimandos nas aplicações:

1. **Card e Krueger:** efeito da elevação do piso salarial sobre o emprego nos estabelecimentos estudados, identificado por uma comparação de diferença-em-diferenças se a mudança na Pensilvânia representar a trajetória contrafactual de Nova Jersey (linhas 93–95).
2. **Avelino, Biderman e Barone:** efeito local de eleger um prefeito sobre a votação subsequente do partido, para disputas próximas do limiar de vitória (linhas 97–99). Os números de 3,7 e 3,4 pontos percentuais são estimativas atribuídas ao artigo, não novos resultados produzidos pelo verbete; a redação não fixa com completa precisão se eles correspondem ao efeito no ponto de corte ou à média na janela empírica dos 266 municípios.

As proporções de 37,3%, 1,4% e 45,5% são **estatísticas descritivas**, não estimandos causais. Seus denominadores são, respectivamente, 1.994 artigos quantitativos e 4.144 artigos elegíveis para as duas últimas proporções (linhas 107–111).

## Especificação preferida

**Não aplicável ao verbete como um todo:** não existe modelo empírico próprio nem especificação estatística preferida. A “especificação” central do texto é uma arquitetura argumentativa: pergunta → estimando → estrutura causal → desenho → suposições de identificação → estimador → inferência (linha 71).

Nas aplicações, o manuscrito apresenta verbalmente uma diferença-em-diferenças de dois grupos e dois períodos, sem escrever uma regressão, definir ponderação ou apresentar procedimento de inferência (linhas 93–95). Para o RDD, registra que o artigo de Avelino, Biderman e Barone reporta um polinômio de quarto grau como especificação principal e afirma que padrões contemporâneos favorecem polinômios locais e diagnósticos adicionais (linha 99). O verbete, porém, não escolhe ordem local, largura de banda, kernel ou procedimento inferencial; portanto, não se deve atribuir-lhe uma especificação de RDD completa.

## Mecanismo e evidência de mecanismo

O manuscrito distingue explicitamente efeito causal de mecanismo: controlar mediadores pode alterar o estimando, perguntas sobre mecanismos exigem suposições adicionais (linha 79), e estimar efeitos não equivale a reconstruir mecanismos, significados ou processos constitutivos (linhas 113–115).

Não há mecanismo causal próprio nem teste de mecanismo no verbete. Os exemplos mostram comparações identificadoras, não evidência sobre os processos pelos quais o salário mínimo afetaria o emprego ou o controle da prefeitura afetaria votos. A seção de Avelino, Biderman e Barone não atribui mecanismo ao resultado. O contraste internacional–Brasil também não explica causalmente por que as práticas brasileiras assumem as frequências observadas (linhas 109–111).

## Scope conditions

- O objeto principal é a tradição moderna de inferência causal contrafactual aplicada a uma classe de alegações sobre os efeitos de mudar uma exposição ou intervenção nas ciências sociais (linhas 28–30 e 117).
- A notação de resultados potenciais desenvolvida é binária e simplificada; tratamentos contínuos, dinâmicos e multivalorados não são desenvolvidos (linha 59).
- DAGs e modelos causais estruturais são mencionados concisamente como linguagem complementar, sem tratamento formal completo (linhas 51, 67 e 69).
- Os dois exemplos são observacionais e servem para ilustrar DiD e RDD, não para oferecer auditorias empíricas integrais nem conclusões universais sobre salário mínimo ou eleições (linhas 91–99).
- O diagnóstico internacional se refere a 91.632 artigos de 156 periódicos, entre 2003 e 2023, e é descrito como difusão parcial e desigual em parte crescente e influente da disciplina (linha 105).
- O diagnóstico brasileiro se restringe a 4.144 artigos elegíveis, publicados entre 2005 e 2025 em nove periódicos brasileiros indexados no SciELO; não representa automaticamente toda a Ciência Política brasileira (linhas 107–111).
- Os indicadores internacional e brasileiro não são métricas diretamente comparáveis, pois diferem em corpus, unidade, período e regra classificatória (linha 111).
- *Process tracing*, análise histórico-comparativa, QCA e abordagens afins permanecem fora do desenvolvimento por limite de espaço e por mobilizarem outras unidades de evidência e lógicas inferenciais, não por irrelevância causal (linhas 113–115).
- Efeitos identificados localmente não são generalizados automaticamente para outras populações, épocas, versões de tratamento ou processos endógenos de decisão (linhas 85 e 115).

## Claim → Evidence → Scope Map

| Claim | Onde o paper afirma | Evidência | Scope/hedge |
|---|---|---|---|
| Efeitos causais não são diretamente revelados pelos dados porque apenas um dos mundos contrafactuais é observado. | Linhas 28 e 49 | Argumento de resultados potenciais; Rubin e Holland | Formulação simples para a mesma unidade e momento; não diz que efeitos médios jamais sejam identificáveis. |
| A inferência causal moderna mudou o ônus da prova para a definição do efeito e a defesa do desenho. | Linhas 30 e 53 | Síntese histórica e conceitual do verbete | Não reduz toda causalidade a uma técnica e reconhece disputa entre domínios. |
| Resultados potenciais e DAGs/SCM podem ser complementares. | Linhas 51, 67 e 69 | Imbens; exposição sobre estimandos, caminhos, colisores e `do(X=x)` | Nenhuma linguagem revela sozinha a estrutura causal; a exposição de SCM é deliberadamente concisa. |
| Estimando, estimador e estimativa são objetos distintos. | Linha 59 | Definições e exemplos conceituais | Não há estimador aplicado pelo próprio verbete. |
| Definir um estimando não basta: identificação requer suposições que liguem a quantidade causal aos dados observados. | Linhas 61 e 71 | Definição conceitual; exemplos de ausência de confundimento, tendências paralelas, continuidade e exclusão | As suposições variam entre desenhos e não são propriedades automáticas de técnicas. |
| Identificação causal e inferência estatística respondem a perguntas diferentes. | Linha 63 | Contraste entre viés e precisão | Não se afirma que incerteza seja irrelevante; afirma-se que precisão não repara confundimento. |
| O desenho explica a origem da variação usada para aproximar o contrafactual. | Linha 65 | Angrist e Pischke; enumeração de atribuição, regras, mudanças e limiares | Modelos não são abolidos, mas inseridos no argumento de desenho. |
| A formalização aumenta a auditabilidade, mas não certifica a validade. | Linhas 75–89 | Discussão de confundimento, seleção, controles, interferência, mensuração, transporte e diagnósticos | Não há hierarquia quantitativa entre vieses nem solução operacional completa para cada um. |
| Card e Krueger ilustram que a interpretação do DiD depende da trajetória contrafactual. | Linhas 93–95 | Estudo citado e decomposição verbal dos contrastes | Restrito aos estabelecimentos estudados; não encerra o debate sobre salário mínimo. |
| Avelino, Biderman e Barone ilustram a comparação local produzida por eleições apertadas. | Linhas 97–99 | Artigo citado; estimativas de 3,7 e 3,4 pontos percentuais atribuídas à fonte | Efeito local, observacional e sem generalização automática; execução contemporânea do RDD não é certificada pelo rótulo. |
| A orientação baseada em desenho se difundiu internacionalmente de forma parcial e desigual. | Linha 105 | Torreblanca et al.: 91.632 artigos, 156 periódicos, 2003–2023; crescimento, associação com citações, concentração e limites de práticas | Refere-se a parte crescente e influente, não a toda a disciplina; “associação” não é efeito causal. |
| Nos periódicos brasileiros analisados, a explicitação de estratégias de identificação é rara e a quantificação da incerteza não é majoritária entre quantitativos. | Linhas 107–109 | Galdino e Martins da Silva: 743/1.994; 59/4.144; 1.885/4.144 | Mede prática textualmente registrada e categorias automatizadas, não qualidade da execução nem toda a produção brasileira. |
| As proporções internacional e brasileira não devem ser comparadas diretamente. | Linha 111 | Diferenças explicitadas de corpus, período, unidade e classificação | O contraste autorizado é substantivo e descritivo, não métrico nem causal. |
| A incorporação brasileira é incompleta; qualificá-la como tardia requer evidência temporal comparável adicional ou redação mais cautelosa. | Linha 111 | “Incompleta” é coerente com as frequências do corpus brasileiro; os dois estudos não fornecem denominadores ou classificações temporalmente equivalentes | “Tardia” é claim a calibrar, não fato demonstrado pelos números apresentados. |
| A escolha de escopo não exclui outras tradições causais. | Linhas 113–117 | Delimitação explícita de *process tracing*, análise histórico-comparativa e QCA; Silva e Williams | O padrão defendido dirige-se a alegações de que mudar $X$ alteraria $Y$, não a toda forma de explicação social. |

## O que o paper NÃO afirma

- Não afirma que associação, descrição ou regressão sejam inúteis.
- Não afirma que experimentos sejam a única fonte legítima de conhecimento causal.
- Não afirma que qualquer técnica, rótulo de desenho ou significância estatística garanta identificação.
- Não afirma que DAGs ou resultados potenciais descubram a estrutura causal verdadeira sem conhecimento substantivo.
- Não afirma que resultados potenciais sejam a única linguagem válida da causalidade.
- Não estima um efeito causal próprio, não oferece novo estimador e não produz novas estimativas para os exemplos.
- Não oferece evidência de mecanismo para Card e Krueger ou Avelino, Biderman e Barone.
- Não afirma que o RDD de Avelino, Biderman e Barone se generalize a todos os municípios ou que sua especificação histórica satisfaça automaticamente padrões atuais.
- Não afirma que toda a Ciência Política internacional adotou padrões homogêneos de desenho e identificação.
- Não afirma que a associação entre pesquisa baseada em desenho e citações em Torreblanca et al. seja causal.
- Não afirma que 1,4% seja diretamente comparável a uma proporção internacional.
- Não afirma que 37,3%, 1,4% e 45,5% usem o mesmo denominador.
- Não afirma que menção explícita a um desenho meça qualidade de execução ou que ausência de menção invalide automaticamente toda interpretação substantiva.
- Não explica causalmente a trajetória metodológica da Ciência Política brasileira.
- Não exclui *process tracing*, QCA, análise histórico-comparativa ou abordagens configuracionais por irrelevância.
- Não afirma que estimar efeitos esgote mecanismos, significado, constituição, processos históricos ou agência.

## Ambiguidades a resolver antes do DA

1. **“Tardia” versus “incompleta” (prioridade alta).** A incompletude é diretamente compatível com as frequências brasileiras. A temporalidade comparativa de “tardia” não é identificada pelos denominadores apresentados, porque os estudos usam universos e classificações diferentes. O DA deve tratar “tardia” como possível excesso de claim ou ambiguidade textual. A correção natural seria “incorporação incompleta e possivelmente tardia” ou a apresentação de evidência temporal comparável; o gate não autoriza tratá-la como fato provado.
2. **Causalidade versus inferência causal.** A abertura define causalidade amplamente, mas o desenvolvimento privilegia a tradição contrafactual. As linhas 113–115 reconhecem um universo causal mais amplo; falta apenas decidir se a relação será formulada como recorte explícito já no início.
3. **A promessa “se e como”.** “Como” na linha 28 pode prometer explicação de mecanismos, mas o texto depois distingue efeitos de mecanismos e não oferece testes de mecanismo. Pode significar simplesmente direção/modificação, mas a redação admite leitura mais ampla.
4. **“Fronteira internacional”.** O texto a associa a parte crescente e influente, prestígio editorial e ranking institucional, porém não fornece definição operacional única de “fronteira”.
5. **“O debate já se deslocou para a qualidade da identificação”.** É uma interpretação autoral plausível dos resultados de Torreblanca et al., mas não aparece como indicador diretamente medido; precisa permanecer sinalizada como interpretação, não resultado bruto.
6. **“Prêmio de citações”.** O termo pode sugerir efeito causal apesar do hedge “associado”. “Associação positiva com citações” preservaria melhor o claim descrito.
7. **“Outros 1.885 artigos”.** Pode soar como complemento simples dos 59, embora não seja; a categoria deve ser lida como artigos que combinam linguagem causal ou explicativa, análise quantitativa e ausência de menção explícita, com denominador de 4.144.
8. **SCM e operador `do`.** Modelos causais estruturais são nomeados na linha 51 e o operador aparece na linha 67, mas a relação entre SCM, DAG e intervenção não é explicitada em uma oração única.
9. **Necessidade de precisão.** “Dimensões necessárias” na linha 63 pode significar necessidade de avaliar incerteza ou necessidade de intervalos estreitos; a primeira leitura é compatível com a tese, a segunda não está sustentada.
10. **Estimando e especificação no exemplo de RDD.** A janela dos 266 municípios, o efeito no ponto de corte e o polinômio de quarto grau não são articulados com precisão suficiente para reconstruir o estimando e a especificação completa; os “padrões atuais” também não recebem referência específica.
11. **Inferência nas aplicações.** Os exemplos expõem estimando e identificação, mas omitem erros-padrão, intervalos e regras inferenciais. Isso pode ser uma escolha legítima de espaço, porém deixa a cadeia didática incompleta nas aplicações.
12. **Generalizações históricas.** Expressões como “durante boa parte do século XX” e a mudança geral de padrão metodológico são amplas em relação às referências locais e podem precisar de qualificação ou apoio adicional.

## Perguntas enviadas a leitores de seção

| Pergunta consolidada | Leitura(s) de origem |
|---|---|
| O texto trata causalidade e inferência causal como equivalentes ou como relação entre conceito amplo e recorte metodológico? | Seção 1; Seção 5 |
| A cadeia pergunta → contrafactual → estimando → identificação → estimador → inferência aparece explicitamente? | Seção 1; Seção 2 |
| A promessa inicial de explicar “se e como” inclui mecanismos? | Seção 1; Seção 3 |
| Resultados potenciais e DAGs/SCM são apresentados sem atribuir descoberta automática da estrutura causal? | Seções 1 e 2 |
| A distinção entre identificação, inferência, mecanismo e validade externa permanece estável? | Seções 2 e 3 |
| Os exemplos definem tratamento, resultado, estimando e comparação sem transformar quase experimento em experimento? | Seção 4 |
| A especificação preferida do RDD e sua população local estão determinadas? | Seção 4 |
| O contraste internacional–Brasil preserva corpus, períodos, categorias e denominadores? | Seções 1 e 5 |
| “Tardia” e “incompleta” recebem o mesmo nível de sustentação? | Seção 5 |
| A exclusão de *process tracing*, QCA e abordagens afins é apresentada como escolha de escopo? | Seções 1 e 5 |

## Respostas recebidas

1. **Conceito amplo e recorte:** o texto abre com causalidade, desenvolve sobretudo inferência contrafactual e, nas linhas 113–115, reconhece que causalidade e explicação social ultrapassam efeitos de intervenção. A leitura fiel é de recorte metodológico dentro de um conceito mais amplo, embora isso possa ser dito mais cedo.
2. **Cadeia argumentativa:** sim. A sequência completa está explícita na linha 71 e é preparada pelas definições das linhas 57–69.
3. **Mecanismos:** não há promessa cumprida de análise de mecanismo. As linhas 79 e 115 separam efeito e mecanismo. Portanto, “como” é ambíguo e não deve ser usado pelo DA para imputar ao texto um mecanismo inexistente sem primeiro reconhecer essa ambiguidade lexical.
4. **Linguagens formais:** o texto afirma complementaridade e dependência de conhecimento substantivo (linhas 51, 67 e 69); não atribui descoberta automática. A relação SCM–DAG–`do` é apenas compacta, não errada de maneira demonstrada no texto.
5. **Distinções metodológicas:** identificação e inferência são explicitamente separadas na linha 63; mecanismos, efeitos totais e mediadores na linha 79; alcance e transporte na linha 85. O contrato deve preservá-las como problemas diferentes.
6. **Aplicações:** sim quanto aos elementos conceituais centrais. O RDD é chamado de observacional e de variação aproximadamente aleatória perto do limiar, não de experimento aleatorizado (linha 99). A inferência estatística não é detalhada.
7. **RDD:** apenas parcialmente. O efeito deve ser local e o artigo usa polinômio de quarto grau, mas o texto não fixa o estimando no ponto de corte nem uma especificação contemporânea completa. Isso é ambiguidade/exposição incompleta, não autorização para inventar uma especificação.
8. **Denominadores:** sim. O texto distingue 743/1.994 de 59/4.144 e 1.885/4.144 e proíbe a comparação direta com Torreblanca et al. (linhas 107–111).
9. **Temporalidade:** não. “Incompleta” tem apoio descritivo direto; “tardia” requer referência temporal comum ou formulação mais cautelosa.
10. **Pluralidade:** sim. A linha 113 atribui a delimitação ao espaço e a lógicas inferenciais distintas, não à irrelevância das tradições excluídas.

## Contrato interpretativo para o DA

1. Tratar o manuscrito como **verbete conceitual-metodológico**, não como paper empírico com hipótese causal própria.
2. Usar como tese central a cadeia pergunta → estimando → estrutura causal → desenho → identificação → estimador → inferência; não imputar ao texto uma preferência universal por uma técnica.
3. Distinguir rigorosamente **identificação**, **inferência estatística**, **mecanismo**, **mensuração**, **validade externa** e **escopo**. Uma limitação em uma dimensão não prova falha nas demais.
4. Não exigir “tratamento”, “outcome”, estimando ou especificação próprios onde são não aplicáveis. Avaliar esses elementos apenas nas aplicações didáticas, de acordo com o nível de detalhe que o texto promete.
5. Tratar Card e Krueger e Avelino, Biderman e Barone como **ilustrações observacionais**. O verbete não afirma que o rótulo DiD/RDD garanta validade nem que os estudos encerrem seus debates substantivos.
6. Não atribuir mecanismo aos exemplos. Se a abertura “se e como” for criticada, classificá-la como ambiguidade textual ou promessa excessiva, não como evidência de que o texto apresentou um mecanismo falso.
7. Ler Torreblanca et al. como diagnóstico de difusão **parcial e desigual** em parte crescente e influente da disciplina, nunca como adoção homogênea por toda a Ciência Política.
8. Ler Galdino e Martins da Silva como diagnóstico de **práticas textualmente registradas** nos nove periódicos do corpus, não como auditoria individual, medida direta de qualidade ou retrato exaustivo do Brasil.
9. Preservar os denominadores: 37,3% de 1.994 quantitativos; 1,4% e 45,5% de 4.144 elegíveis. Não comparar diretamente essas proporções com as de Torreblanca et al.
10. Considerar “incorporação incompleta” sustentada no escopo descritivo; considerar “tardia” **não diretamente identificada** e classificá-la como claim a calibrar. O DA não pode citá-la como conclusão empiricamente estabelecida pelo contraste atual.
11. Não interpretar “associação/prêmio de citações” como efeito causal sem evidência adicional.
12. Não converter a delimitação de *process tracing*, QCA, análise histórico-comparativa e abordagens configuracionais em exclusão epistemológica; o texto afirma expressamente que a escolha decorre de espaço e escopo.
13. Não imputar ao verbete uma especificação empírica preferida própria. No RDD, distinguir a especificação histórica atribuída ao artigo da preferência metodológica geral por polinômios locais, cuja parametrização e referência não são dadas.
14. Toda crítica deve citar o claim e as linhas correspondentes. Quando depender de uma das ambiguidades listadas, deve ser rotulada como **ambiguidade textual/claim a calibrar**, não como falha substantiva já demonstrada.

## Status do gate

**PASS.** O contrato distingue identificação, inferência, mecanismo e escopo; identifica corretamente que não há especificação empírica própria; liga os claims centrais a linhas do manuscrito; explicita o que o texto não afirma; e separa ambiguidades reais de críticas substantivas. O PASS autoriza o Devil’s Advocate somente sob o contrato acima e **não** valida “incorporação tardia” como fato demonstrado pelos denominadores atuais.
