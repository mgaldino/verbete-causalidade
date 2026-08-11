# Revisão de código R — Estágio 1, rodada 3

## Resumo executivo

O novo gate do preâmbulo está funcional e integrado ao fluxo principal. Ele extrai corretamente o preâmbulo na estrutura atual do Rmd, usa `stringi::stri_count_words()` para contagem Unicode, aplica inclusivamente o intervalo de 150 a 200 palavras, registra contagem e resultado no relatório e interrompe a execução de forma controlada quando o intervalo é violado. Os testes de regressão em cópias temporárias confirmaram que os gates anteriores continuam ativos.

## Escopo e separação de papéis

- Arquivos inspecionados: `code/02_validate_manuscript.R`, `code/99_run_all.R`, `paper/verbete-causalidade.Rmd`, `quality_reports/stage1_code_review_round2.md`, `quality_reports/manuscript_validation.md` e `quality_reports/pdf_validation.md`.
- Esta rodada avaliou apenas a mudança relativa ao gate de 150–200 palavras do preâmbulo e sua convivência com os checks já aprovados.
- Como revisor, não editei scripts, manuscrito, dados nem relatórios produzidos pelo pipeline. Os testes positivo e negativos foram executados em cópias temporárias.
- Os três scripts R passaram em `parse()`.

## Evidência do gate de preâmbulo

| Requisito | Evidência | Status |
|---|---|---|
| Extração do bloco correto | O script encontra `# Sumário`, localiza o fechamento do chunk de configuração imediatamente anterior na estrutura atual e conta apenas as linhas entre esse ponto e o Sumário. No Rmd corrente, isso corresponde exatamente às linhas 28–30. | **PASS** |
| Contagem Unicode | A contagem usa `stringi::stri_count_words()`. Um caso sintético composto por 150 repetições de `árvore`, criado por code points Unicode, foi reconhecido como 150 palavras e passou. | **PASS** |
| Limites inclusivos 150–200 | Em cópias temporárias: 149 palavras falharam; 150 passaram; o preâmbulo corrente com 200 passou; 201 falharam. | **PASS** |
| Relatório auditável | `manuscript_validation.md` informa `Palavras no preâmbulo`, inclui o check nomeado `preamble_word_range` e registra `Resultado geral`. | **PASS** |
| Falha controlada | No caso de 201 palavras, o processo terminou com status 1, gravou `preamble_word_range: FAIL` e `Resultado geral: FAIL`, e encerrou com a mensagem `Validação do manuscrito falhou. Consulte quality_reports/manuscript_validation.md`. | **PASS** |
| Integração no orquestrador | `99_run_all.R` chama `code/02_validate_manuscript.R` na etapa 2, antes da renderização da etapa 3. Como `source()` propaga o erro, uma violação impede a produção subsequente do PDF. | **PASS** |

## Preservação dos gates anteriores

O teste positivo, executado em uma cópia temporária do estado corrente, terminou com status 0 e resultado geral `PASS`. O relatório atual confirma que continuam passando: processamento por Pandoc/citeproc, extração de citações da AST, resolução e metadados das citações, metadados do manuscrito, intervalo de 6–12 referências, limite global de 5.000 palavras, headings exatos e ausência de placeholders.

No teste negativo de 201 palavras, `preamble_word_range` foi o único check introduzido para falhar; os checks subsequentes exibidos no relatório permaneceram ativos e o processo só interrompeu depois de escrever o relatório completo. Não há evidência de regressão nos gates anteriores. A validação corrente registra 4.107 palavras totais, 200 no preâmbulo, 12 referências e resultado geral `PASS`; o relatório do PDF também permanece `PASS`, com sete páginas e texto extraível.

## Pontuação

Pontuação inicial: **100**.

| Severidade | Dedução | Observação |
|---|---:|---|
| Major, preexistente | -5 | Permanece a exigência específica de `en_US.UTF-8`, já registrada na rodada 2. Ela funciona nesta máquina, mas reduz a portabilidade quando apenas outra localidade UTF-8 está disponível. A mudança desta rodada não agravou o problema. |
| Minor | -2 | A extração depende de o último fechamento literal de fence antes de `# Sumário` ser o fim do chunk de configuração. Isso é correto para o template corrente, mas um futuro bloco cercado por crases dentro do preâmbulo poderia deslocar silenciosamente o início contado. Uma evolução futura pode localizar explicitamente o chunk `setup` e seu fechamento, ou extrair o preâmbulo por blocos da AST do Pandoc. |

**Pontuação final: 93/100.**

## Pontos positivos

- O gate representa diretamente o requisito editorial e usa limites inclusivos corretos.
- A contagem Unicode foi implementada com biblioteca apropriada, sem regex artesanal.
- A contagem aparece no relatório, o que torna o resultado verificável sem reler o código.
- A falha ocorre antes da renderização e conserva diagnóstico suficiente para correção.
- A implementação é pequena e não alterou a lógica dos gates anteriormente aprovados.

## Veredito

**APROVADO [93]**
