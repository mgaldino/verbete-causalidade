# Parecer de Execution (Framework Edmans)

## Score: 8/10

## Tipo de paper: Conceitual/metodológico

## Resumo da estratégia

O verbete apresenta a inferência causal como uma arquitetura argumentativa: pergunta causal → contrafactual → estimando → estrutura causal → desenho → identificação → estimador → inferência. Não produz análise empírica própria. Usa Card e Krueger e Avelino, Biderman e Barone como ilustrações observacionais e mobiliza Torreblanca et al. e Galdino e Martins da Silva como diagnósticos descritivos, respectivamente, da fronteira internacional e dos periódicos brasileiros.

A execução é forte para o gênero. O texto define com precisão os conceitos centrais, distingue identificação de precisão estatística, limita corretamente o alcance dos exemplos e reconhece outras tradições causais. Os problemas remanescentes são localizados e corrigíveis: uma conclusão temporal não autorizada pelos dados, algumas sínteses históricas excessivamente amplas, uma recomendação contemporânea sobre RDD sem referência específica e uma seção editorial vazia.

## Princípio Dados vs. Evidência

Os números brasileiros são dados que se tornam evidência para uma conclusão delimitada: nos nove periódicos analisados, estratégias explícitas de identificação são raras e a inferência estatística não é majoritária entre artigos quantitativos. Eles não autorizam uma medida exata da distância em relação à fronteira internacional nem, sozinhos, demonstram que a incorporação brasileira foi temporalmente “tardia”.

Os valores do verbete — 743 de 1.994, 59 de 4.144 e 1.885 de 4.144, na linha 107 — coincidem com o resumo do manuscrito-fonte (`metodos_CP/paper/paper.Rmd`, linha 17). O fonte também estabelece que:

- a classificação registra presença, não qualidade (`paper.Rmd`, linhas 474–476);
- a classificação automatizada ainda não foi integralmente adjudicada por humanos (`paper.Rmd`, linha 482);
- os indicadores brasileiros e internacionais usam denominadores diferentes (`paper.Rmd`, linha 741);
- menção a um desenho não audita execução ou pressupostos (`paper.Rmd`, linha 657).

O verbete incorpora quase todas essas cautelas nas linhas 109–111. Portanto, os dados autorizam “incorporação incompleta no corpus estudado”. Não autorizam de maneira independente “incorporação tardia”, porque não há medida temporal comparável entre os dois levantamentos. Esse é o principal ponto em que a conclusão excede a evidência.

## Avaliação por dimensões

### Fidelidade das definições: forte

A distinção entre estimando, estimador e estimativa é clara e correta na linha 59. A definição de identificação como ligação entre uma quantidade causal e a distribuição observada, sob suposições, está bem formulada na linha 61. A separação entre identificação e inferência estatística, na linha 63, é particularmente bem executada: erros-padrão pequenos não reparam confundimento, e um desenho plausível pode produzir estimativas imprecisas.

A cadeia completa aparece explicitamente na linha 71 e organiza de fato o restante do texto, em vez de funcionar apenas como enumeração. A relação entre resultados potenciais e DAGs é apresentada como complementar e dependente de conhecimento substantivo nas linhas 51, 67 e 69. Isso evita tanto a redução de causalidade a uma técnica quanto a sugestão de que grafos descobrem automaticamente a estrutura causal.

Há três pequenas imprecisões:

1. “Se e como” na abertura, linha 28, pode prometer mecanismos que o verbete não pretende demonstrar. “Se e em que medida” seria mais fiel ao desenvolvimento.
2. Na linha 63, credibilidade e “precisão” são chamadas de dimensões “necessárias”. Avaliar a incerteza é necessário; obter precisão elevada não é. “Dimensões distintas e conjuntamente relevantes” seria mais exato.
3. SCM, DAG e o operador `do` aparecem nas linhas 51 e 67, mas a conexão entre modelo estrutural, representação gráfica e intervenção poderia ser explicitada em uma oração.

### Sustentação das sínteses históricas: adequada, com necessidade de calibragem

Rubin, Holland, Imbens e Angrist–Pischke sustentam adequadamente a passagem do problema contrafactual para a orientação baseada em desenho, nas linhas 49–65. Hill é usado com o cuidado correto: suas considerações não são apresentadas como algoritmo causal, linha 45.

A afirmação da linha 47 — de que “durante boa parte do século XX” a estatística tratou associações com mais segurança que causalidade observacional — é plausível, mas ampla para a sustentação bibliográfica mobilizada. O mesmo vale para a mudança geral de padrão descrita na linha 53. A solução não exige ampliar muito a revisão: basta qualificar como trajetória de uma tradição específica ou apoiar a síntese com uma referência histórica mais diretamente voltada a essa transformação.

Na linha 105, “prêmio de citações associado” conserva formalmente o caráter associacional, mas “prêmio” pode insinuar retorno causal. “Associação positiva com citações” seria semanticamente mais disciplinado.

### Seleção da literatura e dos exemplos: forte

As 12 referências cumprem funções distintas e estão bem distribuídas: fundamentos, linguagens formais, desenho, estimandos, exemplos, crítica, fronteira internacional e diagnóstico brasileiro. A validação registra 12 chaves, nenhuma ausente e nenhum metadado obrigatório incompleto (`manuscript_validation.md`, linhas 4–8).

Card e Krueger são usados para decompor verbalmente o contraste de diferença-em-diferenças e explicitar tendências paralelas, linhas 93–95. O texto não transforma o estudo em palavra final sobre salário mínimo.

Avelino, Biderman e Barone constituem escolha especialmente adequada: são um exemplo observacional brasileiro de RDD, com tratamento, resultado, limiar e alcance local apresentados nas linhas 97–99. O verbete também evita confundir eleição apertada com experimento aleatorizado.

Há duas limitações pedagógicas:

- A cadeia conceitual termina em inferência na linha 71, mas os exemplos param essencialmente na identificação. Uma frase curta sobre como a incerteza deveria ser quantificada de forma compatível com cada desenho fecharia a cadeia sem transformar os exemplos em auditorias empíricas.
- A linha 99 afirma que padrões atuais favorecem polinômios locais e diagnósticos adicionais. A afirmação é correta em direção geral, mas exige referência contemporânea específica de RDD ou formulação menos prescritiva. O verbete também deve distinguir mais nitidamente os 266 municípios na janela descritiva do estimando no ponto de corte.

### Mensuração dos diagnósticos disciplinares: adequada

O conceito medido no diagnóstico brasileiro é descrito com precisão nas linhas 107–109: menção explícita a uma estratégia, quantificação formal da incerteza e combinação de linguagem causal ou explicativa com análise quantitativa. O texto não converte presença do rótulo em qualidade da execução.

A ressalva de que a categoria “causal ou explicativa” reúne ambições diferentes é importante, linha 109, pois reduz o risco de tratar toda explicação como claim contrafactual estrito. A restrição a nove periódicos SciELO, 2005–2025, também está explicitada.

A palavra “Outros” antes dos 1.885 artigos, na linha 107, pode fazer a categoria parecer complemento simples dos 59. “Em outra categoria, 1.885 artigos...” evitaria essa leitura.

### Correspondência entre dados e claims: boa, com uma extrapolação material

As três frequências brasileiras e seus denominadores estão corretos. O texto também distingue práticas registradas de qualidade e proíbe a comparação métrica direta com Torreblanca et al., linhas 109–111.

Apesar disso, o fecho da linha 111 afirma que o contraste “sustenta a ideia de incorporação tardia e incompleta”. “Incompleta” é sustentada no corpus. “Tardia” exige uma linha do tempo comparável ou evidência adicional sobre o momento da adoção. A própria frase anterior reconhece que períodos, revistas e regras de classificação diferem. A redação produz, assim, uma tensão interna: preserva denominadores e depois extrai uma conclusão temporal que eles não identificam.

Correção recomendada: “Isso sustenta a ideia de incorporação incompleta e é compatível com uma difusão tardia, hipótese que exigiria evidência temporal comparável.”

### Explicações alternativas e limites de interpretação: fortes

O verbete é cuidadoso ao separar associação, identificação, mecanismo, mensuração, interferência e validade externa nas linhas 75–89. Ele não apresenta placebos ou testes de pré-tendência como certificação automática, linha 89.

O diagnóstico internacional é descrito como parcial e desigual, linha 105. O brasileiro é apresentado como diagnóstico textual, não explicação causal da trajetória disciplinar, linhas 107–111. Isso atende bem ao princípio de não transformar descrição em causalidade.

A delimitação de *process tracing*, análise histórico-comparativa, QCA e abordagens configuracionais é particularmente bem executada nas linhas 113–115: a exclusão decorre de escopo e espaço, não de irrelevância epistemológica. O texto também reconhece mecanismos, condições configuracionais, constituição e agência como objetos que não se reduzem ao estimando contrafactual.

### Regras editoriais, bibliografia e reprodutibilidade: quase completas

A validação registra 3.967 palavras incluindo referências, 12 referências, citações resolvidas, metadados completos, seções obrigatórias presentes e ausência de marcadores (`manuscript_validation.md`, linhas 4–23). O PDF existe, tem sete páginas e o texto é extraível.

Há, contudo, uma falha editorial objetiva: o Rmd termina na linha 142 com o título “Como citar este verbete”, sem qualquer conteúdo. A seção também aparece vazia no PDF. Isso contradiz a condição substantiva de primeira versão completa, embora o validador não a detecte. É necessário incluir a referência bibliográfica sugerida.

Além disso, a entrada de Galdino e Martins da Silva contém a informação do congresso em `references.bib`, linhas 216–220, mas essa nota não aparece na bibliografia renderizada. Convém ajustar o tipo bibliográfico ou os campos para que o PDF informe que se trata de paper apresentado à ABCP, e não pareça um manuscrito sem fonte ou veículo.

## Veredicto geral sobre execution

O leitor pode extrair conclusões conceituais precisas do verbete. Sua principal contribuição de execução é fazer com que as distinções ensinadas sejam também praticadas: os exemplos são limitados ao que seus desenhos ilustram, os números brasileiros preservam denominadores, e a comparação internacional é quase inteiramente calibrada como descrição. Não há motivo para exigir robustez, controles ou identificação de uma análise que o verbete não produz.

A execução ainda não está pronta para entrega final porque uma conclusão temporal ultrapassa a evidência disponível e a seção “Como citar” está vazia. Corrigidos esses pontos, além de pequenos ajustes de linguagem e sustentação, o texto alcançaria padrão alto para um verbete conceitual-metodológico.

## Sugestões construtivas

1. Substituir “incorporação tardia e incompleta” por formulação que trate apenas a incompletude como resultado demonstrado e a temporalidade como hipótese compatível.
2. Trocar “prêmio de citações associado” por “associação positiva com citações”.
3. Preencher “Como citar este verbete” e fixar o ano bibliográfico, evitando depender apenas de `Sys.Date()`.
4. Ajustar a entrada de Galdino e Martins da Silva para que o evento e o status de paper de congresso apareçam no PDF.
5. Citar uma referência metodológica contemporânea para a observação sobre polinômios locais em RDD ou suavizar a afirmação.
6. Acrescentar uma frase sobre inferência estatística em cada aplicação, fechando a cadeia didática formulada na linha 71.
7. Trocar “se e como” por “se e em que medida” e “dimensões necessárias” por “dimensões distintas e conjuntamente relevantes”.
8. Substituir “Outros 1.885 artigos” por expressão que deixe claro que se trata de categoria com definição própria, não simples complemento dos 59.
9. Qualificar as sínteses históricas amplas das linhas 47 e 53 ou acrescentar apoio bibliográfico mais direto.
