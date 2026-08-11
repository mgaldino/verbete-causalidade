# Devil's Advocate Report — Round 1

**Manuscrito:** `paper/verbete-causalidade.Rmd`  
**Gate de fidelidade:** `quality_reports/argument_fidelity_gate_round1.md` — PASS  
**Papel:** Agente Reviewer; nenhuma edição do manuscrito foi realizada  
**Status:** **REPROVADO [57]**

## Score segundo a rubrica de quality-gates

Score inicial: **100/100**

1. **Conclusão temporal não sustentada pela evidência — “incorporação tardia” (Crítico): -25.** O manuscrito reconhece que período, seleção de revistas, unidade de análise e regras de classificação diferem e proíbe a comparação direta, mas conclui que o contraste sustenta incorporação “tardia e incompleta” (linha 111). “Incompleta” é compatível com o diagnóstico brasileiro; “tardia” não é identificada pelos dois levantamentos tal como apresentados.
2. **Generalização além do escopo dos dados — deslocamento do debate internacional (Major): -5.** O claim de que “o debate já se deslocou para a qualidade da identificação” (linha 111) é mais abrangente do que os indicadores atribuídos a Torreblanca et al. e não é apresentado como interpretação autoral. O próprio texto limita a transformação a uma parte crescente, influente, parcial e desigual da disciplina (linha 105).
3. **Literatura relevante não citada — padrão contemporâneo de RDD (Major): -5.** A afirmação de que “padrões atuais de RDD favorecem polinômios locais e diagnósticos adicionais” (linha 99) fundamenta a avaliação crítica de uma das duas aplicações centrais, mas não recebe referência metodológica contemporânea.
4. **Literatura relevante não citada — generalização histórica (Major): -5.** A formulação “durante boa parte do século XX, a estatística tratou com mais segurança” associação e descrição do que causalidade fora de experimentos (linha 47), bem como a transformação abrangente descrita na linha 53, excedem o apoio histórico local oferecido por Hill, Rubin e Holland.
5. **Ambiguidade textual/hedging insuficiente — promessa de explicar “se e como” (Minor): -2.** A frase de abertura (linha 28) pode prometer mecanismos, embora o manuscrito depois separe expressamente efeito e mecanismo (linhas 79 e 115) e não apresente evidência de mecanismo nos exemplos.
6. **Ambiguidade textual/hedging insuficiente — “dimensões necessárias” (Minor): -2.** Dizer que credibilidade causal e precisão estatística são dimensões “necessárias” (linha 63) permite a leitura incorreta de que elevada precisão é condição necessária; o argumento demonstrado é que a incerteza deve ser avaliada e não substitui identificação.
7. **Ambiguidade textual/hedging insuficiente — estimando versus janela no RDD (Minor): -2.** O texto associa os 3,7 pontos percentuais à média nos 266 municípios da janela e, na sequência, exige interpretação local (linha 99), sem esclarecer se o número é uma média descritiva na janela, uma descontinuidade estimada no limiar ou outro parâmetro da especificação publicada.
8. **Transição argumentativa incompleta entre arquitetura e aplicações (Minor): -1.** A cadeia apresentada termina em inferência (linha 71), mas os dois exemplos chegam essencialmente até estimando e identificação (linhas 93–99); nenhuma oração mostra como a incerteza deve ser tratada de modo compatível com DiD e RDD.

**Score final: 57/100 → REPROVADO [57].**

## Vulnerabilidade principal

O claim mais vulnerável está no fecho do contraste internacional–Brasil. O manuscrito afirma corretamente que os indicadores não são diretamente comparáveis porque diferem em corpus, período, unidade e classificação, mas usa esse mesmo contraste para sustentar incorporação “tardia” (linha 111). A conclusão de incompletude cabe no universo brasileiro descrito; a conclusão temporal exige uma série, um marco ou critérios comparáveis que o texto não oferece.

## Ataques por dimensão

### 1. Lógica interna

1. **O texto enuncia uma proibição inferencial e logo a ultrapassa.**
   - **Claim criticado:** “Também seria incorreto comparar diretamente o 1,4% brasileiro com as proporções internacionais” e “Isso sustenta a ideia de incorporação tardia e incompleta” (linha 111).
   - **Problema:** a primeira oração reconhece ausência de comparabilidade; a segunda extrai uma conclusão temporal comparativa. O adjetivo “tardia” não decorre da frequência brasileira isolada nem de uma comparação que o texto tenha tornado válida.
   - **Severidade:** Crítica.
   - **Como o autor poderia responder:** manter “incorporação ainda incompleta” como conclusão descritiva e apresentar “possivelmente tardia” como hipótese a testar com séries e regras harmonizadas.

2. **A proposição-mestra compete com um título e uma abertura mais amplos.**
   - **Claim criticado:** causalidade permite perguntar “se e como a ocorrência de um modifica o outro” (linha 28), enquanto o texto declara que seu núcleo é a inferência contrafactual e que mecanismos e outras tradições excedem esse recorte (linhas 30, 79 e 113–117).
   - **Problema:** **ambiguidade textual**, não falsidade substantiva. “Como” pode significar direção/magnitude ou mecanismo; apenas o primeiro sentido é desenvolvido nas aplicações.
   - **Severidade:** Baixa.
   - **Como o autor poderia responder:** anunciar desde a abertura que o verbete focaliza a tradição contrafactual para estimar efeitos, sem pretender esgotar mecanismos ou causalidade em sentido amplo.

3. **A precisão aparece como necessidade, embora o argumento sustente a necessidade de avaliá-la.**
   - **Claim criticado:** “Credibilidade causal e precisão estatística são dimensões necessárias, mas diferentes” (linha 63).
   - **Problema:** **ambiguidade textual**. Uma estimativa imprecisa pode ser causalmente bem identificada; o necessário é representar a incerteza, não obter intervalos estreitos.
   - **Severidade:** Baixa.
   - **Como o autor poderia responder:** substituir “necessárias” por “distintas e conjuntamente relevantes” ou nomear explicitamente a avaliação da incerteza.

### 2. Mecanismo causal

1. **Não há mecanismo próprio a atacar — e sua ausência não é falha substantiva deste gênero.**
   - **Claim preservado:** o manuscrito diz que perguntas sobre mecanismos exigem estimandos e suposições adicionais (linha 79) e que estimar um efeito não equivale a reconstruir mecanismos (linha 115).
   - **Avaliação:** o verbete não é um paper empírico original e não promete teste de mecanismo para Card–Krueger ou Avelino–Biderman–Barone. Imputar-lhe mecanismo omitido violaria o Gate.
   - **Severidade:** nenhuma dedução.
   - **Resposta necessária:** somente retirar a ambiguidade lexical de “se e como” na linha 28; não é preciso inventar mecanismos para os exemplos.

### 3. Evidência empírica e aplicações didáticas

1. **O contraste internacional sustenta difusão desigual, não demonstra por si só uma mudança geral na natureza do debate.**
   - **Claim criticado:** em segmentos influentes da produção internacional, “o debate já se deslocou para a qualidade da identificação” (linha 111).
   - **Evidência invocada:** crescimento de pesquisas baseadas em desenho, associação com citações, concentração institucional/editorial, peso de survey experiments e raridade de placebos e cálculos de poder (linha 105).
   - **Problema:** os indicadores sustentam difusão e desigualdade. A própria raridade de diagnósticos pode tensionar a leitura de que a qualidade da identificação já organiza o debate. “Deslocamento do debate” é uma inferência autoral que precisa ser explicitamente marcada e restringida.
   - **Severidade:** Alta.
   - **Como o autor poderia responder:** escrever que “os achados são compatíveis com atenção crescente à qualidade da identificação em segmentos influentes”, sem apresentar essa formulação como medida direta de Torreblanca et al.

2. **A expressão “prêmio de citações associado” preserva formalmente o hedge, mas mantém uma metáfora causal.**
   - **Claim criticado:** Torreblanca et al. encontram “um prêmio de citações associado” a pesquisas baseadas em desenho (linha 105).
   - **Problema:** **ambiguidade textual**. “Associado” impede o claim causal explícito, mas “prêmio” sugere retorno produzido pela estratégia metodológica.
   - **Severidade:** Baixa; incluída na dedução do problema de escopo da evidência internacional, sem dedução adicional.
   - **Como o autor poderia responder:** usar “associação positiva com citações”.

3. **O exemplo brasileiro mistura janela observada, estimativa e estimando local.**
   - **Claim criticado:** “Nos 266 municípios decididos por menos de um ponto percentual, o artigo relata que o partido vencedor obteve, em média, 3,7 pontos percentuais a mais” e “Seu alcance deve ser formulado localmente” (linha 99).
   - **Problema:** **ambiguidade textual/claim a calibrar**. A primeira formulação soa como média na janela; a segunda aponta para efeito no limiar. Sem distinguir o parâmetro reportado da população usada na estimação, o exemplo enfraquece justamente a lição de separar estimando de estimativa (linha 59).
   - **Severidade:** Baixa.
   - **Como o autor poderia responder:** confirmar na fonte se 3,7 é a descontinuidade estimada e descrevê-la como tal; depois delimitar o estimando no ponto de corte e a janela utilizada.

4. **A cadeia didática termina antes da inferência nos dois exemplos.**
   - **Claim criticado:** a ordem correta termina em estimador e procedimento de inferência compatíveis (linha 71), mas Card–Krueger e Avelino et al. são narrados apenas por pergunta, contraste, estimando, identificação e ameaça à especificação (linhas 93–99).
   - **Problema:** não é necessário auditar erros-padrão dos artigos. Contudo, a ausência de qualquer frase sobre incerteza deixa incompleta a demonstração prática da arquitetura defendida pelo próprio verbete.
   - **Severidade:** Baixa.
   - **Como o autor poderia responder:** acrescentar uma oração comum aos exemplos dizendo que intervalos e erros-padrão devem refletir a estrutura de dependência e a estimação local de cada desenho.

### 4. Escopo e generalização

1. **“Fronteira internacional” não tem definição operacional única.**
   - **Claim criticado:** o verbete promete situar a revolução da credibilidade na “fronteira internacional” (linha 30) e depois a define por parte “crescente e influente” da produção (linha 105).
   - **Problema:** **ambiguidade textual**. Prestígio dos periódicos, posição institucional, crescimento de desenhos e influência por citações são dimensões distintas; o texto não diz qual delas constitui “fronteira”.
   - **Severidade:** Baixa; sem dedução adicional porque se sobrepõe à generalização da linha 111.
   - **Como o autor poderia responder:** definir fronteira como um padrão metodológico crescente nos segmentos editoriais e institucionais de maior influência cobertos por Torreblanca et al., sem equivalê-lo à disciplina inteira.

2. **A notação e a lógica ensinadas são mais estreitas que o conceito do título, mas o próprio texto reconhece esse limite tarde.**
   - **Claim criticado:** “Causalidade” é apresentada de maneira geral (linhas 28–30), enquanto tratamentos binários, resultados potenciais e desenhos ocupam o centro da exposição (linhas 49–89); configurações, processos, estruturas, QCA e *process tracing* aparecem apenas ao final (linhas 113–115).
   - **Problema:** trata-se de assimetria de escopo, não exclusão epistemológica. O manuscrito afirma explicitamente que as outras tradições ficam fora por espaço e lógica inferencial distinta.
   - **Severidade:** Baixa; já capturada pela ambiguidade da abertura, sem nova dedução.
   - **Como o autor poderia responder:** antecipar a escolha de escopo no preâmbulo, sem ampliar o desenvolvimento das tradições excluídas.

### 5. Contra-argumentos e literatura

1. **A crítica ao RDD histórico depende de um padrão contemporâneo não documentado.**
   - **Claim criticado:** “padrões atuais de RDD favorecem polinômios locais e diagnósticos adicionais” (linha 99).
   - **Problema:** o claim é central para dizer que reconhecer um desenho não certifica sua execução, mas as 12 referências não incluem uma fonte metodológica contemporânea específica de RDD. O leitor não consegue distinguir recomendação consolidada de avaliação editorial do verbete.
   - **Severidade:** Alta.
   - **Como o autor poderia responder:** substituir uma referência menos indispensável por uma fonte contemporânea de RDD ou reformular o trecho como cautela delimitada e verificável na fonte citada.

2. **A narrativa histórica é ampla para a bibliografia que a acompanha.**
   - **Claim criticado:** “Durante boa parte do século XX, a estatística tratou com mais segurança a descrição de distribuições e associações do que afirmações causais fora de experimentos” (linha 47) e as formalizações “alteraram o padrão de argumentação” (linha 53).
   - **Problema:** a formulação pode apagar diferenças entre tradições estatísticas e áreas. Hill, Rubin e Holland sustentam marcos importantes, mas não bastam, tal como citados, para demonstrar uma caracterização tão abrangente da disciplina ao longo do século.
   - **Severidade:** Alta.
   - **Como o autor poderia responder:** restringir a afirmação a “parte importante da tradição estatística aplicada” ou apoiar a síntese com referência histórica diretamente voltada à mudança.

3. **O contraponto sobre agência é mencionado, mas não substitui o recorte explícito.**
   - **Claim preservado:** variação exógena pode alterar o fenômeno que a teoria queria explicar (linhas 87 e 115, com Williams).
   - **Avaliação:** esta crítica está de fato incorporada, assim como a delimitação de QCA, análise histórico-comparativa e *process tracing* (linhas 113–115). Não há base para acusar o texto de excluir essas tradições.
   - **Severidade:** nenhuma dedução.

## Ranking de vulnerabilidades

1. **“Incorporação tardia” sem comparação temporal harmonizada (linha 111)** — conclusão não sustentada e internamente tensionada pela proibição de comparação direta.
2. **“O debate já se deslocou” (linha 111)** — transforma indicadores de difusão desigual em síntese mais ampla que a evidência descrita.
3. **Crítica ao RDD sem referência contemporânea (linha 99)** — fragiliza uma das duas aplicações didáticas centrais.
4. **Generalização histórica ampla (linhas 47 e 53)** — formula uma narrativa disciplinar mais extensa do que o apoio bibliográfico local.
5. **Estimando local versus média/janela do RDD (linha 99)** — ameaça a coerência pedagógica com a distinção ensinada na linha 59.
6. **Promessa ambígua de “se e como” (linha 28)** — pode fazer o verbete parecer incompleto em mecanismos, embora o recorte real seja legítimo.
7. **Aplicações sem elo inferencial (linhas 93–99)** — não invalida os exemplos, mas impede que demonstrem a cadeia inteira anunciada na linha 71.

## O que sobrevive ao escrutínio

- A tese central é coerente e importante: pergunta, estimando, estrutura causal, desenho, identificação, estimador e inferência formam uma ordem de justificação, não uma lista de técnicas (linhas 57–71 e 117).
- Estimando, estimador e estimativa são distinguidos corretamente (linha 59); identificação e inferência estatística também (linha 63).
- Resultados potenciais e DAGs/SCM são tratados como linguagens complementares dependentes de conhecimento substantivo, sem promessa de descoberta automática da estrutura causal (linhas 49–51 e 67–69).
- Confundimento, seleção, colisores, variáveis pós-tratamento, interferência, mensuração e validade externa são apresentados como ameaças diferentes, sem a inferência indevida de que uma invalida automaticamente todas as demais dimensões (linhas 75–89).
- Card–Krueger e Avelino–Biderman–Barone são corretamente usados como aplicações observacionais e não como efeitos produzidos pelo próprio verbete (linhas 91–99).
- Os denominadores brasileiros estão preservados: 743/1.994 para quantificação de incerteza e 59/4.144 e 1.885/4.144 para os indicadores no corpus completo (linha 107). O texto também deixa claro que essas categorias medem práticas registradas, não qualidade de execução (linha 109).
- Torreblanca et al. são apresentados como evidência de difusão parcial e desigual, não como adoção homogênea por toda a Ciência Política (linha 105).
- *Process tracing*, QCA, análise histórico-comparativa e abordagens configuracionais são excluídos do desenvolvimento por escopo, não por irrelevância causal (linhas 113–115).
- O manuscrito não oferece mecanismo, estimando ou especificação próprios e não deve ser reprovado por isso: é um verbete conceitual-metodológico, não um paper empírico original.

## Condições de passagem para o Round 2

1. Retirar ou qualificar “tardia” como hipótese que requer evidência temporal comparável.
2. Marcar como interpretação restrita — não resultado diretamente medido — a ideia de deslocamento do debate internacional para a qualidade da identificação.
3. Apoiar ou reformular a afirmação sobre padrões contemporâneos de RDD.
4. Distinguir, no exemplo eleitoral, estimando no limiar, janela de análise e estimativa de 3,7/3,4 pontos percentuais.
5. Delimitar já no preâmbulo o foco contrafactual e retirar a promessa ambígua de mecanismos.
6. Tratar avaliação da incerteza, e não alta precisão, como o elo necessário.
7. Qualificar a narrativa histórica ampla ou sustentá-la com referência adequada.
8. Fechar ao menos em uma oração o elo de inferência nas aplicações.

