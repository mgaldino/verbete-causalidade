# Revisão: paper/verbete-causalidade.Rmd

**Data**: 2026-08-11
**Fase**: 1 de 3 (propor). Nenhum arquivo foi editado. Aplicação só após
aprovação do autor, por agente implementador separado.
**Estado do texto**: após as dez edições de `verify-claims` e
`edmans-exposition` desta mesma data.

## Resumo

Texto limpo e tecnicamente consistente: nenhum typo, nenhuma citação quebrada,
notação matemática correta, numerais e aspas tipográficas uniformes,
estrangeirismos sempre em itálico, siglas QCA, RDD e LATE definidas na
primeira ocorrência. Encontrei **dois problemas maiores** — uma sigla nunca
expandida e uma coordenação não paralela — e cinco itens menores. Ambos os
maiores se resolvem em uma linha cada.

---

## Erros a corrigir (por ordem de aparição)

| Linha | Trecho original | Problema | Sugestão |
|-------|----------------|----------|----------|
| 47 | "O gênio de Donald Rubin **esteve em colocar** a linguagem..." | Regência. "Estar em + infinitivo" é pouco idiomático no sentido de *consistir em*. | "O gênio de Donald Rubin **consistiu em colocar** a linguagem..." |
| 49 | "$Y_i(1)=1$ significa que a pessoa $i$ desenvolveria câncer caso fumasse, **e zero caso contrário**" | Elipse de notação. O "zero" refere-se a $Y_i(1)$, mas o período fixou $Y_i(1)=1$; o leitor precisa reconstruir o sujeito elidido. | "...caso fumasse; $Y_i(1)=0$, caso contrário" |
| 51 | "a tradição dos modelos causais estruturais e dos **grafos acíclicos direcionados**" ... "Resultados potenciais e **DAGs** diferem" | **Sigla nunca introduzida.** "DAGs" aparece cinco vezes no verbete (51 duas vezes, 71, 83) e em nenhuma delas é ligada à expressão em português. As demais siglas do texto (QCA, RDD, LATE) são todas definidas na primeira ocorrência. | "...e dos grafos acíclicos direcionados (**DAGs**, na sigla em inglês)" |
| 85 | "A solução **não é sempre** eliminar a interferência, **mas** redefinir tratamentos e estimandos" | Coordenação frouxa. "Não é sempre X" é hedge ("nem sempre é X"), e "mas Y" pede negação plena ("não é X"). As duas metades não se encaixam. | "A solução **nem sempre é** eliminar a interferência; **frequentemente é** redefinir tratamentos e estimandos" |
| 103 | "A **lógica identificadora** do RDD e seu alcance..." | Adjetivo pouco usual. O texto usa "estratégia de identificação" e "argumento de identificação" em toda parte. | "A **lógica de identificação** do RDD" |
| 119 | "essas tradições são delimitadas **por espaço** e **porque exigiriam** apresentar outras unidades de evidência" | **Coordenação não paralela.** Une um sintagma preposicional a uma oração causal. | "essas tradições são delimitadas **pelo espaço disponível e pela necessidade de** apresentar outras unidades de evidência e lógicas inferenciais" |
| 127 | "Rubin os coloca no centro de estudos experimentais e observacionais **e** reconstrói essa passagem em entrevista" | Cacofonia de "e" coordenativo triplo no mesmo período. | "...no centro de estudos experimentais e observacionais, **reconstruindo** essa passagem em entrevista" |

---

## Inconsistências encontradas

**Uma, já listada acima como erro maior**: a sigla DAGs. Vale explicitar o
contraste, porque mostra que é desvio de um padrão que o texto segue com
disciplina em todos os outros casos:

| Sigla | Primeira ocorrência | Definida? |
|---|---|---|
| QCA | linha 30 | Sim — "análise qualitativa comparativa (QCA)" |
| RDD | linha 63 | Sim — "regressão descontínua (RDD)" |
| LATE | linha 61 | Sim — "*Local Average Treatment Effect*, LATE" |
| **DAGs** | linha 51 | **Não** |

**Nenhuma outra inconsistência.** Verifiquei explicitamente:

- **Numerais**: por extenso abaixo de dez ("nove pontos de vista", "nove
  periódicos", "um ponto percentual", "dois estudos"), em algarismos acima
  ("266 municípios", "4.144", "91.632", "1.885"). Sem exceção.
- **Decimais e milhares**: vírgula decimal e ponto de milhar em todo o texto
  ("3,7 pontos", "37,3%", "1.994"). Uniforme.
- **Aspas**: tipográficas curvas em todas as oito ocorrências.
- **Travessões**: `---` para aposto em todas as quatro ocorrências (59, 69,
  71, 83); `--` para o composto "dose--resposta". Correto e consistente.
- **Itálico**: *process tracing*, *fast-food*, *compliers*, *bad controls*,
  *Local Average Treatment Effect*, *Better LATE Than Nothing*. Todos os
  estrangeirismos, sem exceção.
- **Negrito**: reservado a termos sendo definidos (estimando, estimador,
  estimativa, identificação, confundimento, mediador, colisor pós-tratamento,
  nove pontos de vista). Uso disciplinado e coerente.
- **Tempo verbal**: presente para exposição conceitual, pretérito para
  narrativa histórica, futuro do pretérito para contrafactuais. Consistente
  dentro de cada seção.
- **Sumário × títulos**: os oito itens correspondem exatamente aos títulos das
  seções, incluindo "5. Debates contemporâneos, escopo e Brasil".
- **Citações**: doze chaves, todas resolvidas na bibliografia, formato
  uniforme.

---

## Sugestões de estilo

Opcionais. Nenhuma afeta correção.

1. **Linha 45 — `[@hill1965]` duas vezes no mesmo parágrafo.** As duas
   sustentam afirmações distintas (a consistência entre populações; os nove
   pontos de vista), então a repetição é defensável. Mas no PDF renderizado
   sairá "(Hill, 1965)" duas vezes em nove linhas. A segunda poderia cair sem
   perda, já que a primeira estabelece a fonte do parágrafo.

2. **Linha 69 — período iniciado por "Mas".** "Mas a interpretação causal não
   é propriedade automática do coeficiente." Aceitável em prosa acadêmica
   brasileira contemporânea; alguns editores preferem "Contudo" ou "No
   entanto" em registro de referência. Questão de gosto editorial da EBCS.

3. **Linha 47 — "convertê-la"**, cujo antecedente ("a linguagem dos resultados
   potenciais") está a duas orações de distância. Recuperável, mas repetir o
   nome custaria pouco e leria melhor: "Ao converter essa linguagem de uma
   ferramenta do experimento em..."

4. **Linha 75 — mistura de modos.** "impede que a interpretação causal **seja**
   acrescentada apenas depois que um coeficiente ... **apareceu**." O
   subjuntivo seguido de indicativo pretérito é defensável (evento anterior
   concluído), mas "tenha aparecido" harmonizaria.

5. **Linha 121 — enumeração densa.** "condições dentro de configurações,
   processos que conectam eventos ou estruturas que constituem atores e
   possibilidades" acumula três itens com orações relativas encaixadas. Correto,
   mas é o período de leitura mais custosa do texto. Não sugiro mexer com o
   teto de palavras tão apertado.

---

## Score

Rubrica: `.claude/rules/quality-gates.md`, seção RMarkdown/Quarto.

```
Score: 100
- Sigla DAGs nunca introduzida (inconsistência): -3
- Coordenação não paralela, linha 119 (erro gramatical): -3
- Elipse de notação, linha 49 (typo em texto): -1
- Coordenação frouxa, linha 85 (typo em texto): -1
- Regência "esteve em colocar", linha 47 (typo em texto): -1
- "lógica identificadora", linha 103 (formatação inconsistente): -1
- Cacofonia de "e", linha 127 (typo em texto): -1
Score final: 89/100
Status: REPROVADO (<90)
```

**Leitura honesta do score**: 89 é reprovação por um ponto, e seria enganoso
apresentar isso como texto problemático. Não há erro crítico — nada que
impeça compilação, nenhuma citação quebrada, nenhum typo em equação. Os dois
itens Major são pontuais e de uma linha cada.

**Corrigidos apenas os dois Major**, o score vai a **95/100** e o documento
entra na faixa de excelência da rubrica. Corrigidos todos os sete, chega a
100.

Recomendo aplicar os sete: são todos de baixo risco e o custo em palavras é
próximo de zero. A sugestão da linha 119 adiciona 4 palavras e a da linha 51
adiciona 4; há 13 palavras de folga sob o teto de 5.000, então cabem.
Conferir a contagem após a aplicação.
