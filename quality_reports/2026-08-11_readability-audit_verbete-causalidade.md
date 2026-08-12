# Parecer completo — readability-audit

**Data**: 2026-08-11
**Documento**: `paper/verbete-causalidade.Rmd`
**Campo**: Ciência Política
**Pangram**: não executado nesta rodada (reservado para o fim do pipeline, com
autorização explícita do autor)
**Referência do protocolo**: Gartenberg et al. (2026), *More Versus Better: AI,
Incentives, and the Emerging Crisis in Peer Review*, Organization Science

---

## AVISO METODOLÓGICO QUE PRECEDE QUALQUER NÚMERO

O script `readability_audit.py` tem três detectores de estilo **hardcoded em
inglês**. Aplicados a texto em português, eles não disparam e retornam zero.

| Detector | Implementação | Efeito em português |
|---|---|---|
| Passiva | regex `am\|is\|are\|was\|were\|be\|been\|being` + particípio `-ed/-en/-wn/-lt/-nt/-pt/-xt` | "foi publicada", "é sustentada" nunca casam |
| Nominalização | sufixos `tion, sion, ment, ness, ity, ance, ence, ism` | "identificação", "causalidade", "mecanismo" nunca casam |
| Hedging | lista `might, could, may, would, suggest, perhaps...` | "pode", "talvez", "tende", "tipicamente" nunca casam |

O script reportou **0,0% de passiva, 0,1% de nominalização e 0,0% de hedging**
em todas as seções. O benchmark de CP tem mediana de 3,8% de passiva, 2,4% de
nominalização e 0,4% de hedging, medidos sobre **19 artigos em inglês**.

Comparar os dois produziria a conclusão de que o verbete tem estilo
espetacularmente superior à mediana de top journals. **Essa conclusão seria
falsa.** Os 0,1% de nominalização detectados correspondem a estrangeirismos
presentes no texto ("Local Average Treatment Effect", "treatment", "bad
controls"), não a prosa portuguesa.

Os índices de sílabas (Flesch RE, FK Grade, FOG, SMOG) sofrem do mesmo
problema em grau menor: são calibrados para inglês e o português tem
sistematicamente mais sílabas por palavra, o que os infla mecanicamente na
direção "mais difícil". A adaptação brasileira do Flesch (Martins et al.,
1996) reescalona justamente por isso.

**Consequência para este parecer**: a comparação com o benchmark de CP foi
**descartada por invalidade**. O que segue é (a) comparação interna entre
seções do mesmo texto, onde o viés de idioma é constante e portanto se
cancela, e (b) medição de estilo refeita com padrões de português.

---

## 1. Resumo agregado

**Medição com padrões de português** (instrumento próprio, documentado na
seção 5):

| Métrica | Valor | Leitura |
|---|---|---|
| Palavras (prosa) | 4.430 | — |
| Frases | 229 | — |
| Palavras por frase | 19,3 | Média acadêmica saudável |
| Passiva analítica | 7,0% das frases | Baixa para prosa acadêmica em português |
| Passiva sintética ("-se") | 1,3% das frases | Baixa |
| Passiva total | ~8,3% | Bom |
| Hedging | 1,17% das palavras | Moderado |
| Nominalização | 8,8% das palavras | Alta em termos absolutos — ver diagnóstico |

**Índices de sílabas** (calibrados para inglês; use apenas para comparar
seções entre si, nunca em termos absolutos):

| Métrica | Valor |
|---|---|
| Flesch RE | 17,5 |
| FK Grade | 15,5 |
| FOG | 18,9 |
| SMOG | 16,3 |

---

## 2. Tabela por seção

### Estilo, padrões de português

| Seção | Palavras | Pal./frase | Passiva analít. | Passiva "-se" | Hedging | Nominaliz. |
|---|---:|---:|---:|---:|---:|---:|
| Preâmbulo | 199 | **22,1** | **11,1%** | 0,0% | 0,00% | **11,1%** |
| 1. Histórico e fundamentos | 726 | **23,4** | 6,5% | 0,0% | 0,41% | 9,2% |
| 2. Lógica de aplicação | 1.285 | 18,4 | 7,1% | 1,4% | 1,40% | 9,1% |
| 3. Vantagens, limites e vieses | 671 | 17,2 | 7,7% | 2,6% | **2,98%** | **10,4%** |
| 4. Exemplos de aplicação | 472 | 20,5 | **4,3%** | 0,0% | 0,85% | **5,7%** |
| 5. Debates, escopo e Brasil | 902 | 19,6 | **8,7%** | 2,2% | 0,78% | 8,1% |
| 6. Referências | 109 | 27,2 | 0,0% | 0,0% | 0,00% | 5,5% |

### Índices de sílabas, comparação interna

| Seção | Flesch RE | FK Grade | FOG | SMOG |
|---|---:|---:|---:|---:|
| Preâmbulo / seção 1 | **20,3** | 16,1 | 19,3 | 16,9 |
| 2. Lógica de aplicação | 19,9 | 15,0 | 18,0 | 15,8 |
| 3. Vantagens, limites e vieses | **15,2** | 15,3 | 19,1 | 16,2 |
| 4. Exemplos de aplicação | 18,4 | 15,8 | 19,5 | 16,9 |
| 5. Debates, escopo e Brasil | **15,1** | 15,7 | 19,6 | 16,7 |
| 6. Referências | −13,8 | 22,5 | 25,4 | 21,2 |
| 7. Ver também | −18,9 | 19,4 | 28,5 | 19,3 |

As seções 6 e 7 são listas de nomes e títulos. Seus índices não têm
interpretação e foram excluídos de qualquer leitura.

---

## 3. Diagnóstico por seção

### Preâmbulo — o ponto mais consequente

É a seção mais densa do texto em duas dimensões simultâneas: **22,1 palavras
por frase** e **11,1% de nominalização**, ambas as maiores do corpo. Também
tem a maior taxa de passiva analítica (11,1% das frases, ou 1 em 9).

Isso importa desproporcionalmente porque a EBCS destina 150 a 200 palavras a
delimitar o conceito e prender um leitor que pode ser estudante de graduação.
É o único trecho que muitos leitores lerão inteiro. Densidade máxima no ponto
de entrada é a inversão do que se quer.

Ressalva honesta: com 9 frases, uma única frase longa move a média em ~2
palavras. A magnitude é real, a precisão é baixa.

### Seção 1 — frases mais longas do texto

**23,4 palavras por frase**, o maior valor do corpo. Curiosamente é também a
seção com maior Flesch RE (20,3), isto é, a de vocabulário mais leve. As duas
coisas são consistentes: é prosa narrativa (Hill, Neyman, Rubin, o episódio do
tabagismo) com palavras curtas em períodos longos. O material é o mais
acessível do verbete e está embalado nas frases mais compridas.

### Seção 3 — hedging concentrado

**2,98% de hedging**, mais que o dobro da média do texto (1,17%) e quase
quatro vezes a seção 1. Também a maior nominalização (10,4%).

Este é o caso em que a métrica alta **não é defeito**. A seção trata de
"vantagens, limites e vieses conhecidos"; hedgear é o conteúdo, não o estilo.
Um texto que afirmasse limites metodológicos sem qualificação seria pior, não
melhor. Registro o número para completude e recomendo não agir sobre ele.

### Seção 4 — a mais legível, e no lugar certo

Menor passiva do texto (4,3%), menor nominalização (5,7%), zero passiva
sintética. É a seção dos exemplos concretos, e é justamente onde a prosa
respira. Isso é acerto de composição: o leitor que se cansa na seção 3
encontra alívio exatamente quando o texto vai lhe mostrar Card–Krueger e o RDD
brasileiro. Nada a fazer.

### Seção 5 — maior passiva do texto

**8,7% analítica + 2,2% sintética = 10,9% das frases**, o pico do documento.
Parte é inerente: a seção relata achados alheios ("são classificados", "foram
encontrados", "documenta-se"), e a voz passiva é o registro natural para
reportar o que outro estudo fez sem transformar cada frase em "os autores
fizeram". Parte, porém, é acumulação — é a segunda seção mais longa e a que
mais encadeia números.

É a candidata mais natural para o corte de 17 palavras que ainda falta, se o
corte puder vir de reescrever passivas em ativa (tipicamente economiza 1–2
palavras por frase convertida).

---

## 4. Nominalização de 8,8%: por que não estou chamando de defeito

O valor agregado é alto para prosa geral. Mas o vocabulário técnico
obrigatório deste verbete é intrinsecamente nominalizado: identificação,
causalidade, inferência, aleatorização, mensuração, estimação, confundimento,
monotonicidade, interferência. Não há sinônimo verbal para "estratégia de
identificação".

Um audit que recomendasse "reduzir nominalizações" aqui estaria pedindo ao
autor que abandonasse os termos do campo. O número informativo não é o nível,
é o **contraste entre seções**: 11,1% no preâmbulo contra 5,7% nos exemplos.
Como os dois trechos tratam do mesmo assunto, a diferença é escolha de
registro, não imposição do tema. O preâmbulo pode se aproximar do registro da
seção 4 sem perder precisão.

---

## 5. Instrumento usado na medição em português

Script em `scratchpad/pt_style.py`. Padrões:

- **Passiva analítica**: `(é|são|era|eram|foi|foram|será|serão|seja|sejam|
  sendo|sido|fosse|fossem)` + particípio em `-ado/-ada/-ados/-adas/-ido/-ida/
  -idos/-idas`, mais irregulares (feito, dito, visto, posto, escrito, aberto).
- **Passiva sintética**: clítico `-se` pospreso a verbo.
- **Hedging**: pode, podem, poderia, poderiam, talvez, possivelmente,
  provavelmente, plausível, sugere, sugerem, parece, parecem, tende, tendem,
  tipicamente, geralmente, frequentemente, em geral, aparentemente,
  eventualmente, raramente.
- **Nominalização**: sufixos `-ção, -ções, -são, -sões, -mento, -mentos,
  -dade, -dades, -ância, -ência, -ências, -ismo, -ismos, -agem`, palavras com
  5+ caracteres.

Pré-processamento: remoção de YAML, chunks de R, chaves de citação e marcadores
de bloco de referências. Frases com 3 palavras ou menos descartadas.

Limitações do instrumento: regex não desambigua particípio adjetivo ("está
baseado" é estado, não passiva) nem `-se` reflexivo de `-se` apassivador.
Os valores de passiva são, portanto, **limite superior**. Como o objetivo é
comparação entre seções do mesmo texto, o viés é constante e não afeta o
ranking.

---

## 6. Ações recomendadas

| Prioridade | Ação | Seção |
|---|---|---|
| Alta | Reduzir densidade do preâmbulo: quebrar 1–2 períodos, converter 1 passiva em ativa, trocar 2–3 nominalizações por verbos | Preâmbulo |
| Média | Quebrar os períodos mais longos da abertura histórica | 1 |
| Média | Converter passivas em ativa como fonte do corte de 17 palavras | 5 |
| Nenhuma | Hedging alto | 3 |
| Nenhuma | Legibilidade da seção de exemplos | 4 |

---

## 7. Caveats

1. **Benchmarks são descritivos, não prescritivos.** Mesmo válidos, indicariam
   onde o texto está na distribuição, não onde deveria estar. Um verbete
   enciclopédico e um artigo de periódico têm públicos diferentes.
2. **A comparação com o benchmark de CP foi descartada nesta rodada** por
   incompatibilidade de idioma entre instrumento e objeto. Não é resultado
   "neutro" nem "positivo": é ausência de resultado.
3. **Métricas medem superfície da escrita, não qualidade das ideias.** Nenhum
   número aqui diz se o argumento do verbete é bom.
4. **Pangram não foi executado.** Quando for, o score é estimativa
   probabilística, não prova de autoria.
5. **O instrumento em português é próprio, não validado externamente.** Serve
   para comparação interna; não deve ser reportado como métrica canônica.

---

## 8. Nota sobre o CSV incremental

`metodos_CP/data/processed/readability_data.csv` não existia. O verbete é a
primeira linha, o que significa que este parecer fixa o schema.

Gravar `passive_voice_pct=0.0` vindo do detector inglês corromperia o dataset
na origem. O schema foi estendido com `lang` e `style_instrument` para que
linhas em português e em inglês nunca sejam agregadas por engano, e os valores
de estilo gravados são os medidos com padrões de português.

O campo `pangram_score` está como `NA` e deve ser atualizado se e quando o
Pangram for autorizado.
