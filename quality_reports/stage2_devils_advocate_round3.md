# Devil's Advocate final — Round 3

**Objeto:** linhas 28–152 de `paper/verbete-causalidade.Rmd`, sob o contrato `argument_fidelity_gate_round3.md`.

## Resumo executivo

**Score: 81/100** — iniciado em 100; deduções: 19 pontos.

Não há falha substantiva bloqueadora de fidelidade argumental. A tese design-first, a distinção entre identificação, inferência, mecanismo e validade externa, o caráter ilustrativo dos exemplos e os denominadores brasileiros sobrevivem. As duas vulnerabilidades reais são mais estreitas: (i) a conclusão “Estamos longe da fronteira metodológica nas publicações nacionais” excede o corpus e a comparabilidade efetivamente apresentados; e (ii) a frase sobre algoritmos contemporâneos para definir eleições apertadas mistura avanços distintos da implementação de RDD.

## Vulnerabilidade principal

**Linha 121 — “O descompasso entre ambição e método é evidente. Estamos longe da fronteira metodológica nas publicações nacionais.”**

**Tipo:** crítica substantiva. **Severidade:** alta. **Dedução:** −7.

Os dados sustentam um descompasso textual dentro do corpus descrito: 59/4.144 mencionam identificação explícita, enquanto 1.885/4.144 têm pretensão explicativa. Mas não sustentam, sozinhos, uma distância mensurada em relação à “fronteira metodológica”: os estudos internacional e brasileiro têm universos, períodos e regras classificatórias diferentes, e o diagnóstico brasileiro mede registro textual, não qualidade da identificação. “Publicações nacionais” também pode ser lido como toda a produção brasileira, embora o corpus seja de nove periódicos SciELO. A crítica é não bloqueadora se a frase for lida como síntese restrita ao corpus; é forte se lida literalmente.

## Ataques por dimensão

### Lógica interna

1. **Linha 121 — “Descompasso entre ambição e método”.** **Tipo:** crítica substantiva. **Severidade:** média. **Dedução:** −4. A comparação põe em relação uma categoria ampla de “pretensão explicativa” com a menção explícita a uma estratégia de identificação. Ausência de menção não prova ausência de identificação, e “pretensão explicativa” não equivale a uma alegação causal individual auditada. O claim sobre um descompasso de registro textual sobrevive; o claim sobre qualidade ou inadequação metodológica não é demonstrado.

2. **Linhas 119–121 — “Em estudo similar, mas para o caso brasileiro”.** **Tipo:** ambiguidade textual. **Severidade:** média. **Dedução:** −2. “Similar” pode sugerir comparabilidade métrica que o próprio contrato rejeita: os estudos diferem em corpus, período, seleção de periódicos, unidade e classificação. O texto não afirma explicitamente uma comparação de percentuais, mas a sequência “similar” → “descompasso” → “longe da fronteira” deixa essa leitura disponível.

### Mecanismo causal

Não há ataque substantivo válido. O texto não atribui mecanismo próprio aos exemplos e afirma expressamente que explicar um efeito não é reconstruir seu mecanismo (linhas 87 e 123–125). A ausência de teste de mecanismo é compatível com o escopo anunciado nas linhas 28–30, não uma lacuna do claim central.

### Evidência empírica

3. **Linha 107 — “diferença estimada de 3,7 pontos percentuais ... em comparação com o partido do prefeito que ficou em segundo lugar”.** **Tipo:** limite de detalhe. **Severidade:** baixa. **Dedução:** −1. A formulação atual é factual: o artigo define o indicador como 1 para o partido vencedor e 0 para o segundo colocado e reporta 0,0365 para a margem inferior a 1%, descrito no texto como 3,7%; também reporta 0,034 com controle por votos para vereador. A redação do verbete, contudo, não informa a janela inferior a 1%, não explica a conversão para pontos percentuais e não diz que está preservando a estimativa sem o controle. Isso limita a auditabilidade, mas não torna o claim atual errado. [Artigo de Avelino, Biderman e Barone, pp. 8–11](https://eaesp.fgv.br/sites/eaesp.fgv.br/files/pesquisa-eaesp-files/arquivos/avelino_-_articulacoes_intrapartidarias_e_desempenho_eleitoral_no_brasil.pdf)

4. **Linha 109 — “não se recomenda mais usar polinômios de quarto grau” e “a escolha do que constitui eleição apertada é feita hoje por meio de algoritmos sofisticados”.** **Tipo:** crítica substantiva. **Severidade:** média. **Dedução:** −4. A crítica a polinômios globais de alta ordem é defensável, mas o texto não especifica “global”, não distingue ordem polinomial de bandwidth e não cita a literatura contemporânea que fundamenta a atualização. Mais importante, a literatura atual usa procedimentos data-driven para seleção de bandwidth e estimação local; isso não equivale universalmente a um algoritmo que determine o limiar substantivo de “eleição apertada”. A frase funde seleção da janela com definição do desenho e apresenta como regra geral algo que requer qualificação. [Cattaneo, Titiunik e Vazquez-Bare](https://titiunik.github.io/files/publications/CattaneoTitiunikVazquezBare2020-sage.pdf), [Calonico, Cattaneo e Titiunik](https://journals.sagepub.com/doi/pdf/10.1177/1536867X1401400413).

5. **Linha 103 — “ao argumentar convincentemente” e “evidências empíricas críveis”.** **Tipo:** limite de detalhe. **Severidade:** baixa. **Dedução:** −1. O parágrafo não apresenta evidência de pré-tendências, diagnósticos ou controvérsias que permitam ao leitor avaliar a força dessa plausibilidade. Como o caso é apresentado como ilustração de DiD, e não como auditoria completa ou prova definitiva, o problema é de suporte local, não de fidelidade ao argumento.

### Escopo e generalização

6. **Linha 121 — “publicações nacionais”.** **Tipo:** ambiguidade textual. **Severidade:** média. **Dedução:** contabilizada na vulnerabilidade principal (−7). O escopo imediatamente anterior é nove periódicos brasileiros indexados no SciELO; a formulação final parece nacionalizar o diagnóstico. A restrição a “periódicos analisados” é necessária para que a conclusão não exceda a evidência.

O restante da delimitação sobrevive: o internacional é apresentado como difusão parcial e desigual em 156 periódicos (linha 119); o brasileiro é delimitado a 4.144 artigos elegíveis em nove periódicos (linha 121); e o texto não afirma que o RDD represente todos os municípios (linha 109).

### Contra-argumentos na literatura

Não há falha bloqueadora. O risco de redução da ambição substantiva é atribuído a críticos e modalizado como possibilidade (linhas 115–117), enquanto o texto declara que não está demonstrado que a agenda tenha se tornado menos relevante ou ambiciosa. O ataque relevante permanece restrito à atualização metodológica do RDD na linha 109, já registrada acima.

## Checagem dos pontos solicitados

- **RDD:** 3,7 p.p. e o comparador do segundo colocado estão preservados; a mudança não cria erro factual. Resta um limite de detalhe sobre janela, controle e conversão da estimativa.
- **Polinômios/algoritmos:** a primeira parte precisa de escopo técnico; a segunda é a vulnerabilidade substantiva mais clara da seção de exemplos.
- **“Longe da fronteira”:** é o claim mais vulnerável porque transforma um diagnóstico textual e não comparável em distância metodológica ampla.
- **37%/63%:** os denominadores estão corretos: 37% é o arredondamento de 743/1.994; 63% é o complemento arredondado, 1.251/1.994 = 62,7%. Não são percentuais do corpus total.
- **59/4.144 e 1.885/4.144:** ambos usam o corpus de 4.144; correspondem a 1,4% e 45,5%. Não há erro aritmético nem troca de denominador.
- **Internacional versus brasileiro:** o texto preserva recortes distintos, mas “similar” e “publicações nacionais” permitem uma comparação mais forte do que a evidência autoriza.
- **Identificação, mecanismo, inferência e validade externa:** a separação é explícita e consistente nas linhas 65–75, 83–95 e 123–127. Não há base para imputar ao texto confusão entre essas dimensões.
- **Suporte de claims fortes:** o suporte é suficiente para a tese metodológica; é menos suficiente para “fronteira”, “longe”, “algoritmos sofisticados” e a plausibilidade “convincente” do DiD sem mais detalhe.

## Ranking de vulnerabilidades

1. **“Longe da fronteira metodológica nas publicações nacionais” (L121):** generalização e comparação mais amplas que o corpus e as métricas permitem.
2. **“Algoritmos sofisticados” para definir eleições apertadas (L109):** confusão entre seleção data-driven da janela/bandwidth e definição do limiar substantivo.
3. **“Descompasso entre ambição e método” (L121):** categorias de registro textual não medem, por si, qualidade metodológica.
4. **“Estudo similar” (L121):** ambiguidade que favorece leitura de comparabilidade direta entre diagnósticos não harmonizados.
5. **“Argumentar convincentemente” no DiD (L103):** avaliação forte sem os diagnósticos no próprio verbete.
6. **Resultado de 3,7 p.p. no RDD (L107):** claim correto, mas com parametrização e janela pouco explicitadas.

## O que sobrevive ao escrutínio

- A tese central não depende de um efeito causal produzido pelo verbete; é uma tese metodológica sobre estimando, contrafactual, identificação e inferência.
- A cadeia pergunta → estimando → estrutura causal → desenho → identificação → estimador → inferência permanece coerente (linha 79).
- O texto não transforma DiD ou RDD em garantias automáticas de identificação, nem os exemplos em efeitos universais.
- O RDD permanece local, e o resultado atual de 3,7 p.p. conserva o contraste com o segundo colocado.
- Os denominadores 1.994 e 4.144 permanecem distinguíveis; os percentuais solicitados são aritmeticamente consistentes.
- Mecanismos, *process tracing*, QCA e abordagens configuracionais são delimitados por escopo, não excluídos como formas de causalidade.
- A distinção entre identificação, inferência estatística, mecanismo, mensuração e validade externa é uma das partes mais fortes do texto.

## Veredito

**PASS alto, sem falha substantiva bloqueadora — 81/100.** O argumento central sobre a exigência de tornar alegações de efeito auditáveis sobrevive. O parecer recomenda apenas cautela interpretativa em dois pontos: a conclusão nacional sobre a “fronteira” e a caracterização dos procedimentos contemporâneos de RDD. Esses pontos reduzem a força de duas formulações periféricas, mas não derrubam a arquitetura nem a fidelidade do verbete.
