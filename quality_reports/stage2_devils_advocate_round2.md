# Devil's Advocate Report — Round 2

**Manuscrito:** `paper/verbete-causalidade.Rmd`  
**Gate de fidelidade:** `quality_reports/argument_fidelity_gate_round2.md` — PASS  
**Controle anterior:** `quality_reports/stage2_devils_advocate_round1.md` — REPROVADO [57]  
**Papel:** Agente Reviewer; nenhuma edição do manuscrito foi realizada  
**Status:** **APROVADO [100]**

## Score segundo a rubrica de quality-gates

Score inicial: **100/100**

- **Deduções críticas:** nenhuma.
- **Deduções major:** nenhuma.
- **Deduções minor:** nenhuma.

**Score final: 100/100 → APROVADO [100].**

Não foi mantida artificialmente nenhuma dedução do Round 1. As oito vulnerabilidades que sustentavam o score 57 foram corrigidas no texto atual, e a rubrica não prevê penalizar limitações que o próprio manuscrito declara e respeita.

## Reavaliação das oito condições de passagem

| # | Condição do Round 1 | Evidência no manuscrito atual | Veredicto |
|---:|---|---|---|
| 1 | Retirar ou qualificar “tardia”. | A linha 111 restringe a conclusão à incorporação “ainda incompleta” no corpus e afirma que avaliar se ela foi tardia exige evidência temporal comparável. | **Cumprida.** Não há conclusão temporal não sustentada. |
| 2 | Marcar o deslocamento internacional como interpretação restrita. | A linha 105 define “fronteira internacional” como os segmentos cobertos por Torreblanca et al.; a linha 111 diz expressamente que a atenção crescente à identificação é uma interpretação compatível, não um resultado diretamente medido. | **Cumprida.** O claim está restrito e corretamente classificado. |
| 3 | Apoiar ou reformular a afirmação sobre padrões contemporâneos de RDD. | A linha 99 não afirma mais que “padrões atuais” favorecem uma especificação particular. Registra a especificação de quarto grau do artigo e formula a conclusão mais modesta de que essa escolha exige cautela, justificativa e diagnósticos antes de certificar a interpretação. | **Cumprida por reformulação.** Não subsiste claim bibliográfico amplo sem fonte. |
| 4 | Distinguir estimando local, janela e estimativas de 3,7/3,4 pontos. | A linha 97 localiza a comparação imediatamente acima e abaixo do limiar; a linha 99 separa a janela de 266 municípios, as duas diferenças estimadas reportadas e o alcance local, sem generalização automática para todos os municípios. | **Cumprida.** O texto não inventa um parâmetro formal ausente nem confunde os números com efeito populacional geral. |
| 5 | Delimitar o foco contrafactual no preâmbulo e retirar a promessa ambígua de mecanismos. | A linha 28 pergunta por direção e magnitude, não por “como” no sentido de mecanismo. A linha 30 anuncia explicitamente a tradição contrafactual voltada à estimação de efeitos e exclui pretensão de esgotar mecanismos, *process tracing*, QCA ou outras tradições. | **Cumprida.** O título amplo recebe escopo inequívoco antes do desenvolvimento. |
| 6 | Tratar avaliação da incerteza, não alta precisão, como elo necessário. | A linha 63 afirma que identificação e inferência são dimensões distintas e conjuntamente relevantes, depois de mostrar que estimativas imprecisas podem ter identificação plausível. | **Cumprida.** Não se exige precisão alta como condição da causalidade. |
| 7 | Qualificar a narrativa histórica ampla ou sustentá-la. | A linha 47 restringe a síntese a “parte importante da tradição estatística aplicada”; a linha 53 atribui a mudança às áreas que incorporaram as formalizações e evita narrar uma transformação universal. | **Cumprida por qualificação.** A generalização disciplinar excessiva foi removida. |
| 8 | Fechar o elo de inferência nas aplicações. | A linha 95 diz que a inferência em Card–Krueger deve refletir a estrutura do desenho e a dependência entre observações; a linha 99 diz que, no RDD, ela deve acompanhar a estimação e a janela escolhida. | **Cumprida.** O nível de detalhe é proporcional a um verbete, não a uma auditoria dos artigos. |

## Vulnerabilidade principal

Não resta vulnerabilidade material entre as oito que bloquearam o Round 1. O ponto mais sensível continua sendo o exemplo de Avelino, Biderman e Barone: o verbete não reconstrói a parametrização formal que liga a janela de 266 municípios às estimativas de 3,7 e 3,4 pontos percentuais. Isso, porém, está tratado de forma conservadora — os números são apresentados como diferenças estimadas reportadas pelo artigo, o alcance é delimitado localmente e nenhuma largura de banda, ordem local, kernel ou estimando adicional é inventado (linhas 97–99). Trata-se de limite de detalhe declarado, não de claim falso ou ambíguo que justifique dedução.

## Ataques por dimensão

### 1. Lógica interna

1. **O contraste internacional–Brasil agora respeita a proibição que enuncia.**
   - **Claim examinado:** os indicadores não admitem comparação direta, a incorporação é incompleta no corpus brasileiro e a hipótese de atraso requer evidência temporal comparável (linha 111).
   - **Avaliação:** a antiga contradição foi eliminada. O texto não extrai uma conclusão temporal da comparação que ele mesmo declara não harmonizada.
   - **Severidade:** nenhuma; sem dedução.

2. **O título amplo e o recorte desenvolvido deixaram de competir.**
   - **Claim examinado:** a abertura define a pergunta sobre efeitos em direção e magnitude, e o preâmbulo delimita a tradição contrafactual (linhas 28–30).
   - **Avaliação:** não há promessa implícita de reconstruir mecanismos. A pluralidade causal retorna de modo coerente nas linhas 113–117.
   - **Severidade:** nenhuma; sem dedução.

### 2. Mecanismo causal

1. **Não há mecanismo empírico próprio a exigir.**
   - **Claim examinado:** mecanismos constituem pergunta distinta, com estimandos e suposições adicionais, e ficam fora do desenvolvimento central por escolha de escopo (linhas 79, 113 e 115).
   - **Avaliação:** o manuscrito é um verbete conceitual-metodológico e usa Card–Krueger e Avelino–Biderman–Barone para ilustrar identificação, não para testar mecanismos. Criticar a ausência de mecanismo próprio seria um *strawman* proibido pelo Gate.
   - **Severidade:** nenhuma; sem dedução.

### 3. Evidência empírica e aplicações didáticas

1. **Torreblanca et al. sustentam exatamente o alcance agora atribuído.**
   - **Claim examinado:** há difusão parcial e desigual de pesquisas baseadas em desenho nos segmentos editoriais e institucionais cobertos, com associação positiva — não efeito causal — com citações (linha 105).
   - **Avaliação:** o manuscrito não transforma o levantamento em descrição de toda a disciplina e marca como interpretação a leitura conjunta feita na linha 111.
   - **Severidade:** nenhuma; sem dedução.

2. **As aplicações fecham a cadeia didática sem fingir ser replicações.**
   - **Claim examinado:** Card–Krueger ilustram a trajetória contrafactual do DiD (linhas 93–95); Avelino–Biderman–Barone ilustram identificação local e cautela com execução do RDD (linhas 97–99).
   - **Avaliação:** pergunta, estimando, identificação, limites e inferência aparecem em ambos na profundidade compatível com o gênero. Não há base para exigir testes, erros-padrão ou reestimações que o verbete não promete.
   - **Severidade:** nenhuma; sem dedução.

3. **Os diagnósticos brasileiros preservam denominadores e estatuto descritivo.**
   - **Claim examinado:** 743/1.994, 59/4.144 e 1.885/4.144 medem práticas textualmente registradas em categorias distintas (linhas 107–109).
   - **Avaliação:** o texto não trata presença de rótulo como qualidade, ausência como invalidade, nem as classificações automatizadas como infalíveis.
   - **Severidade:** nenhuma; sem dedução.

### 4. Escopo e generalização

1. **As fronteiras de generalização estão expressas onde importam.**
   - **Claims examinados:** efeito de RDD tipicamente local (linha 85); exemplo eleitoral restrito a disputas apertadas (linha 99); Torreblanca et al. restritos aos segmentos cobertos (linha 105); diagnóstico brasileiro restrito a nove periódicos SciELO e ao corpus de 2005–2025 (linhas 107–111).
   - **Avaliação:** nenhum desses claims é generalizado para população, disciplina ou período não observado.
   - **Severidade:** nenhuma; sem dedução.

2. **A exclusão de outras tradições é escolha de escopo, não hierarquia epistemológica.**
   - **Claim examinado:** *process tracing*, análise histórico-comparativa, QCA e abordagens configuracionais exigiriam outras unidades de evidência e lógicas inferenciais (linhas 113–115).
   - **Avaliação:** o texto reconhece explicitamente sua relevância causal e encerra afirmando que a virada moderna não elimina a pluralidade explicativa (linha 117).
   - **Severidade:** nenhuma; sem dedução.

### 5. Contra-argumentos e literatura

1. **A crítica ao RDD não depende mais de uma alegação bibliográfica contemporânea não documentada.**
   - **Claim examinado:** o uso de polinômio de quarto grau no artigo requer cautela e diagnósticos antes de certificar a interpretação (linha 99).
   - **Avaliação:** a formulação não declara consenso, padrão dominante nem superioridade universal de uma alternativa; aplica ao exemplo o princípio geral, já defendido na linha 89, de que nomear um desenho ou especificação não comprova suas condições.
   - **Severidade:** nenhuma; sem dedução.

2. **A narrativa histórica foi tornada proporcional à literatura mobilizada.**
   - **Claims examinados:** “parte importante” da estatística aplicada (linha 47) e mudança nas “áreas que incorporaram” as formalizações (linha 53).
   - **Avaliação:** essas qualificações retiram o alcance universal que anteriormente demandava história disciplinar mais extensa. Hill, Rubin, Holland, Imbens e Angrist–Pischke cumprem funções delimitadas na genealogia apresentada.
   - **Severidade:** nenhuma; sem dedução.

## Ranking de vulnerabilidades residuais

Nenhuma vulnerabilidade residual alcança severidade da rubrica. Três pontos merecem apenas preservação editorial nas próximas etapas:

1. **Não fortalecer “tardia”** além da formulação negativa atual da linha 111.
2. **Não converter “diferenças estimadas reportadas”** em um estimando formal mais específico sem voltar à fonte de Avelino, Biderman e Barone (linhas 97–99).
3. **Não preencher manualmente “Como citar este verbete”**, pois a carta editorial determina que a plataforma da EBCS gere o conteúdo (linha 142 do manuscrito; linha 20 da carta).

Esses itens não geram dedução porque o manuscrito atual já os trata corretamente.

## O que sobrevive ao escrutínio

- A tese central está nítida: pergunta, estimando, estrutura causal, desenho, identificação, estimador e inferência formam uma ordem de justificação, não uma lista de técnicas (linhas 57–71 e 117).
- Resultados potenciais e DAGs/SCM são apresentados como linguagens complementares, dependentes de conhecimento substantivo (linhas 49–51 e 67–69).
- Identificação e inferência estatística são separadas corretamente, sem fazer da alta precisão um certificado causal (linha 63).
- Confundimento, seleção, colisores, pós-tratamento, interferência, mensuração e transporte permanecem ameaças distintas e bem delimitadas (linhas 75–89).
- Card–Krueger e Avelino–Biderman–Barone são aplicações observacionais adequadas ao objetivo pedagógico e não são apresentados como efeitos produzidos pelo verbete (linhas 91–99).
- Torreblanca et al. documentam difusão parcial e desigual em segmentos cobertos; Galdino e Martins da Silva documentam práticas nos periódicos brasileiros analisados. O texto não compara diretamente seus percentuais (linhas 105–111).
- A escolha de escopo preserva *process tracing*, QCA e outras tradições como formas legítimas de investigação causal (linhas 30 e 113–117).
- A validação atual registra 4.118 palavras incluindo referências, 12 referências resolvidas, metadados completos e todos os checks do manuscrito como PASS (`quality_reports/manuscript_validation.md`, linhas 3–25).

## Veredicto final

As oito condições de passagem foram satisfeitas. O manuscrito atual não contém conclusão causal própria a ser auditada como paper empírico e não apresenta nenhuma vulnerabilidade crítica, major ou minor dentro das categorias da rubrica que justifique nova rodada de implementação. Está apto a avançar ao proofread independente.

**APROVADO [100]**
