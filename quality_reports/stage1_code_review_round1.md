# Revisão de código R — Estágio 1, rodada 1

## Resumo executivo

Os três scripts têm sintaxe válida e uma organização legível, mas o pipeline ainda não é portável nem comprova integralmente os gates que declara validar. O principal bloqueio é o caminho absoluto para outro repositório; além disso, há um erro na construção dos rótulos de artigos com mais de um método, e `99_run_all.R` não executa toda a cadeia reproduzível. A validação de palavras é razoável, mas as checagens de citações, referências e estrutura são mais fracas do que o nome e o relatório sugerem.

## Escopo e evidência

- Arquivos avaliados: `code/01_extract_abcp_causal_design_cases.R`, `code/02_validate_manuscript.R` e `code/99_run_all.R`.
- Verificação executada: `parse()` com R para os três scripts; todos passaram na checagem sintática.
- Os scripts completos não foram executados porque isso escreveria dados, relatórios e PDF, enquanto esta rodada autoriza o revisor a escrever somente este parecer. Portanto, não há evidência dinâmica de execução ou compilação nesta revisão.

## Pontuação

Pontuação inicial: **100**.

| Severidade | Dedução | Problema |
|---|---:|---|
| Crítico | -20 | Caminhos absolutos hardcoded para o repositório `metodos_CP` em `01_extract_abcp_causal_design_cases.R` (linhas 15–22). Isso impede reprodução em outra máquina e contraria explicitamente a rubrica. |
| Major | -5 | Os métodos são agregados com `"; "` nas linhas 70–71, mas depois separados com regex de vírgula na linha 103. Para artigos com mais de um método vindos de `method_summary`, `recode()` recebe a cadeia inteira e `method_labels` deixa de conter os rótulos traduzidos esperados. |
| Major | -5 | `99_run_all.R` não executa `01_extract_abcp_causal_design_cases.R`; ele apenas valida e renderiza. Assim, uma execução limpa não reconstrói o dado derivado em que o projeto se apoia, apesar do nome `run_all`. |
| Major | -5 | A validação não comprova plenamente citações, referências e estrutura. As seções são aceitas apenas por prefixos (`# 1.`, ..., `# 8.`), de modo que títulos errados passam. As chaves são extraídas por regex do Rmd bruto, podendo contar ocorrências em comentários ou blocos que não chegam ao texto renderizado; a existência da chave no `.bib` não verifica integridade mínima dos metadados bibliográficos. |
| Major | -3 | Depois de `rmarkdown::render()`, não há gate que confirme existência, tamanho não nulo, extração de texto, número de páginas ou legibilidade do PDF. O script prova, no máximo, que `render()` retornou sem erro. |
| Minor | -2 | O pipeline imprime `sessionInfo()` apenas no console e não registra versões em artefato persistente nem usa ambiente travado (`renv`). A reprodução futura fica dependente do estado local dos pacotes e do Pandoc/LaTeX. |

**Pontuação final: 65/100.**

## Problemas bloqueadores

1. Tornar configuráveis e portáveis os dois arquivos-fonte de `metodos_CP`, idealmente por parâmetro ou variável de ambiente documentada, com alternativa relativa/versionada no repositório.
2. Corrigir a inconsistência entre o delimitador usado na agregação e o delimitador usado ao reconstruir `method_labels`; em seguida, adicionar uma asserção ou teste para ao menos um artigo multimétodo.
3. Fazer o orquestrador reconstruir explicitamente os dados derivados necessários ou renomeá-lo e documentar com precisão o estado prévio exigido.
4. Fortalecer os gates: comparar os headings exatos normalizados; obter as citações a partir da representação processada pelo Pandoc ou combinar a regex com uma checagem do output citeproc; validar campos bibliográficos mínimos; e inspecionar programaticamente o PDF gerado.

## Melhorias importantes

- Proteger a mudança de diretório de `02_validate_manuscript.R` com `on.exit(setwd(original_working_directory), add = TRUE)` para restaurar o estado mesmo se `system2()` gerar uma condição inesperada.
- Validar o esquema das entradas antes do processamento: colunas obrigatórias, `pid` não ausente, domínios de `method_class` e `method_type`, e tipo lógico de `tough_call`.
- Vincular o denominador fixo de 59 artigos a uma versão, data ou hash das fontes `*_current.csv`. O `stopifnot(nrow(cases) == 59L)` é um bom alarme contra deriva, mas sem a identidade do input não distingue atualização legítima de erro.
- Ampliar os marcadores editoriais detectados (`TODO`, `FIXME`, `XXX`, texto entre colchetes e chunks de demonstração), de preferência com lista centralizada e reportando números de linha.

## Pontos positivos

- Todos os scripts passaram na checagem de sintaxe.
- O código usa pipe nativo de forma consistente, nomes descritivos e chamadas qualificadas como `dplyr::select`, reduzindo problemas de masking.
- `01_extract_abcp_causal_design_cases.R` salva uma saída derivada previsível e possui invariantes explícitas para número de linhas e unicidade de `pid`.
- `02_validate_manuscript.R` falha explicitamente quando faltam manuscrito, bibliografia, Pandoc ou `stringi`, e interrompe o pipeline se algum check falhar.
- A contagem por `stringi::stri_count_words()` aplicada ao texto plano produzido com citeproc é uma escolha adequada para texto em português e, desde que o YAML bibliográfico esteja correto, tende a incluir as referências renderizadas no teto de 5.000 palavras.
- `99_run_all.R` cria um ambiente novo para renderização e deixa o `sessionInfo()` visível, ainda que esse registro deva ser persistido.

## Veredito

**REPROVADO [65]**
