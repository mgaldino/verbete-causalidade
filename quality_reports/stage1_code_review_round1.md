# Revisão de código R — Estágio 1, rodada 1

## Snapshot e escopo

- Data da revisão: 2026-08-17.
- Arquivos avaliados: `code/01_extract_abcp_causal_design_cases.R`, `code/02_validate_manuscript.R` e `code/99_run_all.R`.
- Instruções consultadas: `CLAUDE.md`, `README.md`, `rules-docs/quality-gates.md` e a skill `review-r`.
- O conteúdo do manuscrito não foi revisado. A alteração não commitada em `paper/verbete-causalidade.Rmd` foi tratada como entrada pré-existente do teste, não como mudança a ser corrigida.
- Não foram editados scripts, manuscrito, dados, referências ou arquivos fora deste relatório.

## Resumo executivo

Os três scripts têm sintaxe válida, usam caminhos relativos/configuráveis, carregam ou verificam as dependências necessárias e implementam uma cadeia coerente de extração, validação do manuscrito, renderização e validação pós-renderização. A extração foi executada com sucesso em cópia temporária e produziu 59 artigos, 59 `pid` únicos e nove casos multimétodo.

O pipeline completo não terminou no snapshot atual: a etapa de validação detectou corretamente 5.006 palavras no manuscrito, acima do limite de 5.000, e interrompeu antes da renderização. Essa falha pertence ao estado pré-existente do Rmd e não foi atribuída como defeito dos scripts. Restam uma fragilidade de portabilidade na localidade exigida e duas validações defensivas que poderiam ser explicitadas no código.

## Pontuação

Pontuação inicial: **100/100**.

| Severidade | Dedução | Evidência e justificativa |
|---|---:|---|
| Major | -5 | `code/02_validate_manuscript.R:6–9` exige o nome específico `en_US.UTF-8` e encerra a execução se ele não estiver disponível. A localidade funcionou nesta máquina, mas imagens Linux, Windows e ambientes mínimos podem oferecer apenas outro alias UTF-8, como `C.UTF-8`. Isso reduz a portabilidade do gate. |
| Minor | -2 | `code/02_validate_manuscript.R:104–118` identifica o preâmbulo tomando o último fence literal antes de `# Sumário`. Isso é correto para a estrutura atual, mas pode deslocar silenciosamente o início contado se o preâmbulo receber outro bloco cercado por crases. |
| Minor | -2 | `code/01_extract_abcp_causal_design_cases.R:103–140` valida colunas e tipos lógicos, mas não impõe explicitamente que `year` seja inteiro em um intervalo plausível, que `period_3` pertença ao domínio esperado e que `strict_design_method`/`tough_call` não contenham `NA`. A checagem independente do snapshot passou, mas uma atualização autorizada dos dados poderia introduzir valores incompatíveis sem uma mensagem específica. |

**Pontuação final: 91/100.**

Pelo limiar da rubrica, o código está acima de 80; isso não autoriza commit, que permanece fora do escopo desta revisão. Não implementei nenhuma alteração.

## Problemas críticos

Nenhum encontrado.

- Os três arquivos passaram em `parse()` com R.
- Não há caminhos absolutos hardcoded nos scripts; `METODOS_CP_ROOT` é configurável e o padrão relativo `../metodos_CP` está documentado.
- Não há estimação econométrica, controles ou erros-padrão nos scripts avaliados; portanto, esses itens da rubrica metodológica não são aplicáveis.
- Não há aleatorização; a ausência de `set.seed()` não é um problema neste escopo.

## Melhorias importantes

1. Tornar a seleção de localidade UTF-8 adaptativa, tentando aliases disponíveis e reportando qual foi escolhida.
2. Validar explicitamente `year`, `period_3` e a consistência entre ambos antes do `join`; também rejeitar `NA` nos campos lógicos que determinam o denominador.
3. Substituir a heurística do último fence por uma identificação explícita do chunk de configuração ou por uma extração estrutural mais robusta.
4. Manter a proteção por MD5 e as invariantes de 59 artigos. Elas são adequadas para impedir que uma deriva silenciosa da fonte seja confundida com o snapshot auditado.

## Avaliação por dimensão

### Correção metodológica e lógica de dados

`01_extract_abcp_causal_design_cases.R` filtra a classificação `strict_design_method`, agrega os métodos por artigo, reconstrói rótulos em português e verifica unicidade do `pid`. Os domínios de `method_class` e `method_type` são checados, e a comparação de MD5 protege o denominador fixo de 59 artigos.

No teste independente das fontes atuais, os dois arquivos tinham anos inteiros de 2005 a 2025, períodos `2005-2011`, `2012-2018` e `2019-2025`, consistência ano–período em todas as linhas e nenhum `NA` nos campos lógicos examinados. O ponto de melhoria é que essas regras de datas e valores não estão codificadas como validações explícitas.

### Qualidade e convenções do código

- O pipe nativo `|>` é usado consistentemente; não há mistura com `%>%`.
- As seleções observadas usam `dplyr::select`, conforme a convenção local.
- Os nomes são, em geral, descritivos e o processamento é vetorizado; não há loops por linha desnecessários.
- `tidyr` é carregado em `01_extract...` sem uso aparente; pode ser removido ou empregado explicitamente em uma futura refatoração.
- As mensagens e comentários estão em português com acentuação correta, e as decisões mais importantes — snapshot, hashes e denominador — estão documentadas.

### Reprodutibilidade e portabilidade

Há boa rastreabilidade: os inputs são identificados por MD5, a proveniência registra caminho, tamanho, data de modificação e status do snapshot, e `99_run_all.R` persiste versões de R, pacotes, Pandoc e ferramentas PDF em `quality_reports/sessionInfo.txt`. O README documenta o diretório de execução e a variável `METODOS_CP_ROOT`.

O pipeline chama as quatro etapas em ordem e interrompe antes da renderização quando uma validação falha. A principal limitação de portabilidade é a localidade específica descrita na pontuação.

### Performance e apresentação

Para as fontes observadas — 1.428 linhas de métodos e 4.144 artigos — as operações são apropriadas e não há indicação de gargalo. A saída da extração é CSV com proveniência; os gates produzem relatórios Markdown legíveis. Não há modelos, tabelas de resultados ou gráficos nesses scripts, portanto as exigências de formatação de resultados de estimação não se aplicam.

## Testes e checagens efetivamente realizados

1. `parse()` dos três scripts: **PASS**.
2. Verificação de dependências: `dplyr`, `readr`, `stringr`, `tidyr`, `rmarkdown`, `stringi`, `jsonlite` e `yaml` disponíveis; Pandoc 3.7.0.2, XeLaTeX, `pdfinfo` e `pdftotext` disponíveis.
3. Checagem estática: nenhum caminho absoluto de usuário, nenhum `%>%`, uso de `|>` e seleções qualificadas com `dplyr::select`; `git diff --check` sem erro.
4. Execução de `01_extract...` em cópia temporária, com as fontes reais e `METODOS_CP_ROOT` correto: **PASS**. Resultado: 59 artigos, 59 `pid` únicos, nove multimétodo, nenhum rótulo cru com underscore e proveniência `MATCH`.
5. Execução de `02_validate_manuscript.R` em cópia temporária do snapshot atual: todos os checks, exceto `word_limit`, passaram; o processo terminou com status 1 após registrar 5.006 palavras e preâmbulo de 190 palavras.
6. Execução de `99_run_all.R` em cópia temporária: chegou à etapa `[2/4]`, reproduziu a falha do `word_limit` e não avançou para a renderização.
7. Teste isolado de `validate_pdf()` em cópia temporária de um PDF já existente: **PASS** para arquivo de 80.488 bytes, oito páginas, 4.946 palavras extraídas e todos os marcadores requeridos.
8. Checagem independente das datas/valores nas duas fontes atuais: **PASS** para formato dos períodos, consistência ano–período, anos inteiros e ausência de `NA` nos campos lógicos examinados.

## Limites da revisão

- O pipeline completo não foi concluído no snapshot atual porque o gate do manuscrito bloqueou a renderização em razão das 5.006 palavras. Isso foi registrado sem alterar o Rmd.
- O teste de PDF usou um artefato existente copiado para ambiente temporário; não comprova uma nova renderização a partir do Rmd atual.
- Não foi feita inspeção visual de layout do PDF nesta revisão; a validação textual/programática não substitui esse gate editorial.
- Não foram testadas fontes artificialmente corrompidas para exercitar cada mensagem de erro; a avaliação de robustez dos domínios foi estática e baseada na checagem do snapshot real.

## Pontos positivos

- Extração e proveniência são reprodutíveis e protegidas contra deriva de input por hashes.
- Invariantes explícitas verificam denominador, unicidade e tratamento multimétodo.
- A validação usa AST do Pandoc, citeproc, CSL JSON, metadados YAML e contagem Unicode, em vez de depender apenas de regex no texto bruto.
- O gate pós-render verifica existência, tamanho, leitura, páginas, extração textual e marcadores obrigatórios.
- Falhas interrompem o fluxo com relatório auditável; no teste atual, o limite de palavras foi detectado antes de produzir um novo PDF.

## Veredito

**APROVADO COM RECOMENDAÇÕES [91/100].**

O código está apto a avançar quanto aos gates de qualidade, desde que o estado do manuscrito seja tratado em etapa própria. As melhorias de portabilidade e validação defensiva devem ser consideradas antes de reutilizar o pipeline em outro ambiente ou com um novo snapshot de dados.
