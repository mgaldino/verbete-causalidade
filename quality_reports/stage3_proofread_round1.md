# Revisão: `paper/verbete-causalidade.Rmd`

## Resumo

Revisão integral realizada pelo protocolo **propor → aprovar → aplicar**, sem alteração do manuscrito. O texto está gramaticalmente sólido e preserva o contrato interpretativo aprovado no gate de fidelidade; restam seis correções reais e acionáveis, concentradas em uma exigência editorial, duas construções sintáticas, definição de siglas e substituição de anglicismos desnecessários.

O título, o sumário e os títulos das seções coincidem; as 12 citações resolvem; não há referência cruzada, equação ou marcação Markdown/LaTeX quebrada; os números e denominadores brasileiros permanecem consistentes — 743/1.994 = 37,3%, 59/4.144 = 1,4% e 1.885/4.144 = 45,5%. A seção “Como citar este verbete” está corretamente vazia, conforme a instrução editorial, e não constitui pendência.

## Correções propostas, por ordem de aparição

| Linha | Trecho atual | Correção proposta | Categoria | Prioridade |
|---:|---|---|---|---|
| 28–30 | Preâmbulo com **218 palavras**; `QCA` aparece sem expansão. | Reduzir o preâmbulo a no máximo 200 palavras e definir a sigla na primeira ocorrência. Substituições mínimas, verificadas e preservadoras das afirmações: `Causalidade é o conceito que permite perguntar não apenas` → `Causalidade permite perguntar não apenas`; `políticas públicas, instituições` → `políticas, instituições`; `Também impõe uma dificuldade fundamental: para saber se uma causa produziu determinado resultado, seria necessário comparar` → `Isso impõe uma dificuldade fundamental: saber se uma causa produziu determinado resultado exigiria comparar`; `Como apenas um desses mundos é observado, efeitos causais não são diretamente revelados pelos dados` → `Como apenas um desses mundos é observado, os dados não revelam diretamente efeitos causais`; `Sua contribuição mais importante não foi declarar toda causalidade redutível a uma única técnica` → `Sua contribuição não foi reduzir toda causalidade a uma técnica`; `uma alegação causal persuasiva` → `uma alegação causal`; `O foco deste verbete é a tradição contrafactual voltada à estimação de efeitos` → `Este verbete focaliza a tradição contrafactual de estimação de efeitos`; `ele não pretende` → `não pretende`; `QCA` → `análise qualitativa comparativa (QCA)`; `O texto reconstrói` → `Reconstrói`; `discute seus ganhos e limites` → `discute ganhos e limites`; e `contrasta essa trajetória` → `a contrasta`. O resultado tem **200 palavras**. | Exigência editorial; consistência de sigla | Alta |
| 47 | `parte importante da tradição estatística aplicada tratou com mais segurança a descrição de distribuições e associações do que afirmações causais fora de experimentos` | `parte importante da tradição estatística aplicada mostrou mais segurança na descrição de distribuições e associações do que em afirmações causais fora de experimentos` | Regência e paralelismo | Alta |
| 61 | `diferença-em-diferenças, RDD ou variáveis instrumentais` | `diferença-em-diferenças, regressão descontínua (RDD) ou variáveis instrumentais` | Definição de sigla | Média |
| 83 | `O erro não necessariamente apenas aumenta a incerteza` | `O erro não se limita necessariamente a aumentar a incerteza` | Sintaxe; escopo da negação | Alta |
| 105 | `instituições em posições mais altas nos rankings, é impulsionada em grande medida por experimentos de survey e convive com uso ainda raro de placebos e cálculos de poder` | `instituições mais bem posicionadas nas classificações, é impulsionada em grande medida por experimentos de levantamento e convive com o uso ainda raro de testes de placebo e cálculos de poder estatístico` | Consistência lexical; português acadêmico | Média |
| 111 | `esse claim` | `essa afirmação` | Anglicismo desnecessário | Média |

## Consistência e controles preservados

- Não se propõe mudança nas afirmações sobre Card e Krueger ou Avelino, Biderman e Barone.
- Não se propõe mudança na caracterização descritiva de Torreblanca et al. nem no diagnóstico de Galdino e Martins da Silva.
- Os três denominadores e a proibição de comparação métrica direta entre os estudos permanecem intactos.
- A expressão “incorporação incompleta” continua restrita ao corpus; não se reintroduz a conclusão de incorporação “tardia”.
- A delimitação de *process tracing*, análise histórico-comparativa, QCA e abordagens configuracionais permanece uma escolha de escopo, não uma exclusão epistemológica.
- A lista de “Ver também” contém sete remissões, dentro do intervalo editorial de três a oito.
- O manuscrito validado tem 4.118 palavras, incluindo referências, e 12 referências citadas; ambos os limites são atendidos.

## Score — rubrica *Quality Gates* para R Markdown

Base: **100/100**.

- Preâmbulo acima da faixa editorial de 150–200 palavras: **−1** (*formatação inconsistente*).
- Sigla QCA sem expansão na primeira ocorrência: **−1** (*formatação inconsistente*).
- Construção com regência/paralelismo defeituosos na linha 47: **−3** (*erro gramatical*).
- Sigla RDD sem expansão na primeira ocorrência: **−1** (*formatação inconsistente*).
- Escopo sintático ambíguo de `não necessariamente apenas` na linha 83: **−3** (*erro gramatical*).
- Anglicismos não destacados e substituíveis na linha 105: **−1** (*formatação inconsistente*).
- Anglicismo isolado `claim` na linha 111: **−1** (*typo/uso lexical em texto português*).

**Score final: 89/100**  
**Status: REPROVADO para circular (< 90).**

Não há erro crítico nem problema substantivo. A aplicação das seis propostas acima deve eliminar todas as deduções identificadas e tornar o texto elegível para nova rodada independente de proofread.
