# Revisão de código R — Estágio 1, rodada 2

## Resumo executivo

A versão atual corrige os seis problemas que determinaram a reprovação da rodada 1. A extração agora é configurável e vinculada a hashes, o tratamento multimétodo foi corrigido e testado por invariantes, o orquestrador executa a cadeia completa e os gates de manuscrito e PDF passaram a verificar efetivamente os artefatos que anunciam. Resta uma fragilidade menor de portabilidade na exigência de uma localidade específica, sem impacto na execução comprovada nesta máquina.

## Escopo e evidência

- Arquivos avaliados: `code/01_extract_abcp_causal_design_cases.R`, `code/02_validate_manuscript.R`, `code/99_run_all.R` e `README.md`.
- Todos os três scripts passaram em `parse()` com R 4.4.2.
- Não reexecutei scripts que escrevem artefatos, em respeito à separação entre revisor e implementador. Fiz apenas checks read-only sobre código e saídas já produzidas.
- Os artefatos de extração, validação, PDF e ambiente têm timestamps posteriores aos scripts avaliados; portanto, correspondem à versão corrente desta rodada.
- O PDF existente foi conferido independentemente com `pdfinfo` e `pdftotext`: 7 páginas, 67.276 bytes e texto extraível.

## Verificação das issues da rodada 1

| Issue da rodada 1 | Evidência na versão atual | Status |
|---|---|---|
| Caminhos absolutos para `metodos_CP` | `01_extract...R` usa `METODOS_CP_ROOT`, com padrão relativo `../metodos_CP`; `README.md` documenta ambas as formas de execução. Não há caminho absoluto hardcoded no código. | **RESOLVIDA** |
| Rótulos incorretos em artigos multimétodo | `split_method_types()` aceita ponto e vírgula ou vírgula; os rótulos são reconstruídos elemento a elemento. As asserções exigem pelo menos um caso multimétodo, igualdade entre números de tipos e rótulos e ausência de identificadores crus. A saída corrente contém 59 artigos, nove multimétodo e nenhum rótulo multimétodo com underscore residual. | **RESOLVIDA** |
| `99_run_all.R` não executava a extração | O orquestrador agora chama, em ordem, extração, validação do manuscrito, renderização e validação do PDF. | **RESOLVIDA** |
| Gates fracos de headings, citações e metadados | Os nove headings requeridos são comparados por texto exato normalizado em NFC. As chaves são extraídas da AST do Pandoc; `citeproc` roda com `--fail-if-warnings`; as citações são comparadas ao CSL JSON; e as referências citadas são verificadas quanto a título, autoria ou editoria, data e periódico quando aplicável. O relatório corrente registra 12 citações, nenhuma chave ausente, nenhum metadado incompleto e nenhum heading ausente ou inexato. | **RESOLVIDA** |
| Ausência de gate pós-render do PDF | `validate_pdf()` verifica existência, tamanho, leitura por `pdfinfo`, páginas positivas, extração por `pdftotext`, volume textual e marcadores obrigatórios. O relatório corrente apresenta PASS em todos os checks. | **RESOLVIDA** |
| Ausência de registro persistente do ambiente e identidade dos inputs | `quality_reports/sessionInfo.txt` registra R, plataforma, pacotes, Pandoc, `pdfinfo` e `pdftotext`. A extração compara os dois inputs a MD5 esperados antes de processar e salva caminho, tamanho, data, MD5 observado e esperado; os hashes atuais coincidem com os snapshots declarados. | **RESOLVIDA** |

## Pontuação

Pontuação inicial: **100**.

| Severidade | Dedução | Problema remanescente |
|---|---:|---|
| Major | -5 | `02_validate_manuscript.R` exige especificamente `en_US.UTF-8` e interrompe a execução se essa localidade não estiver instalada. O check funciona nesta máquina, mas reduz a portabilidade para imagens Linux mínimas e outros sistemas que ofereçam UTF-8 sob outro nome, como `C.UTF-8`. Convém tentar uma pequena lista de localidades UTF-8 ou aceitar a localidade corrente quando ela já for UTF-8. |

**Pontuação final: 95/100.**

## Qualidade do código e reprodutibilidade

- Chamadas de seleção usam explicitamente `dplyr::select`, como exigido pelas regras do projeto.
- O pipe nativo é usado consistentemente; os nomes são descritivos e não há aleatorização que exija `set.seed()`.
- Os esquemas de entrada, tipos lógicos e domínios de métodos são validados antes do processamento.
- O denominador de 59 artigos está ligado a snapshots identificados por hash, transformando deriva de input em erro explícito.
- A ordem dos artefatos e as dependências externas estão documentadas no `README.md`.

## Recomendações não bloqueadoras

1. Tornar a seleção de localidade UTF-8 adaptativa para completar a portabilidade entre sistemas.
2. Em uma evolução futura, verificar também unicidade e ordem dos headings, não apenas a presença do conjunto exato. Não há evidência de problema no manuscrito atual: os nove headings aparecem uma vez e na ordem correta.
3. Manter a inspeção visual do PDF como gate editorial separado. O código comprova integridade e extração textual, mas, corretamente, não afirma substituir uma auditoria visual de quebras, margens e sobreposições.

## Pontos positivos

- A correção do caso multimétodo é acompanhada por invariantes executáveis, não apenas por mudança textual.
- Citações e referências são verificadas a partir de representações processadas pelo Pandoc, reduzindo falsos positivos de regex no Rmd bruto.
- A validação do PDF é clara, falha explicitamente e produz relatório auditável.
- `on.exit()` restaura diretório e localidade e persiste o ambiente mesmo se uma etapa posterior falhar.
- Código, `README.md` e artefatos produzidos contam a mesma história operacional.

## Veredito

**APROVADO [95]**
