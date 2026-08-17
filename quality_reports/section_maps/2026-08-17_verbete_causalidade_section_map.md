# Mapa de seções — Verbete "Causalidade"

**Snapshot avaliado:** 17 de agosto de 2026  
**Fonte:** `paper/verbete-causalidade.Rmd` no estado de trabalho atual  
**Escopo:** mapa para leitura fiel e revisão somente-leitura; linhas são aproximadas e podem mudar se o arquivo for editado.

## Diagnóstico de extensão e modo

- O Rmd tem cinco seções substantivas (1–5), além de referências, remissões e
  bloco de citação.
- A fonte tem 4.597 palavras brutas; a contagem editorial deve ser feita pelo
  texto processado, incluindo referências, com o gate de 5.000 palavras.
- O artefato PDF existente é derivado de um snapshot anterior e não é tratado
  como prova de que a alteração não commitada atual foi renderizada.
- A leitura seccionada é usada como gate de fidelidade por complexidade do
  argumento e porque o estado atual alterou as seções 4 e 5.

## Seções substantivas

| Seção | Linhas aproximadas | Tipo | Tese/objeto de leitura | Fontes, código e dependências |
|---|---:|---|---|---|
| 1. Histórico e fundamentos epistemológicos | 43–52 | histórico/teoria | Da dificuldade de inferir causalidade fora do experimento à linguagem dos resultados potenciais e à complementaridade com DAGs/SCM. | `@hill1965`, `@rubin2022interview`, `@rubin1974`, `@pearl2009`; sem chunk computacional. |
| 2. Lógica de aplicação e decisões de desenho | 53–80 | identificação/desenho | Ordena pergunta causal, estimando, estrutura causal, desenho, identificação, estimador e inferência; diferencia resultados potenciais, DAGs e inferência estatística. | Equações inline; `@lundberg2021`, `@imbens2010`, `@angristpischke2010`, `@hunermundlouw2025`; sem chunk computacional. |
| 3. Vantagens, limites e vieses conhecidos | 81–98 | limites/ameaças/escopo | Expõe confundimento, seleção, pós-tratamento, interferência, mensuração, validade externa e limite de escopo da linguagem de tratamentos. | Sem chunk computacional; conecta-se conceitualmente às definições da seção 2. |
| 4. Exemplos de aplicação em ciências sociais | 99–110 | aplicações/identificação | Usa Card–Krueger e Avelino–Biderman–Barone para mostrar como contraste, estimando, pressuposto e alcance organizam a interpretação; contém alteração não commitada no exemplo RDD. | `@cardkrueger1994`, `@avelinobidermanbarone2012`; casos ilustrativos, não reestimação local. |
| 5. Debates contemporâneos, escopo e Brasil | 111–127 | debate/diagnóstico/escopo | Contrasta a revolução da credibilidade, suas críticas e a difusão internacional com o diagnóstico restrito dos periódicos brasileiros; preserva pluralidade de tradições causais. | `@angristpischke2010`, `@imbens2010`, `@torreblancaetal2026`, `@galdinomartins2026`; os números brasileiros dependem do paper/corpus analisado e de artefatos externos descritos no README. |

## Componentes não substantivos

| Componente | Linhas aproximadas | Tipo | Critério de avaliação |
|---|---:|---|---|
| Preâmbulo | 28–30 | delimitação/contrato | 150–200 palavras; define o objeto como tradição contrafactual de estimação de efeitos e declara exclusões de escopo. |
| Sumário | 32–41 | estrutura editorial | Deve corresponder exatamente às seções requeridas pela EBCS. |
| Referências e leituras adicionais | 129–140 | bibliografia | 6–12 referências citadas, cada uma com função analítica, metadados completos e resolução no BibTeX. |
| Ver também | 142–150 | navegação conceitual | 3–8 remissões com função real; não é evidência do argumento. |
| Como citar este verbete | 152 | bloco editorial | Deve permanecer sem preenchimento manual; a plataforma da EBCS gera o bloco. |

## Código e artefatos relevantes

- `code/01_extract_abcp_causal_design_cases.R`: extrai e valida os 59 casos
  únicos com estratégia explícita a partir das fontes processadas; grava CSV e
  proveniência. A seção 5 deve distinguir esse universo de 59 casos do corpus
  de 4.144 artigos e dos subconjuntos 1.994/1.885.
- `code/02_validate_manuscript.R`: valida Pandoc/citeproc, AST de citações,
  BibTeX convertido, metadados, contagem de palavras, preâmbulo, headings e
  marcadores editoriais; grava `quality_reports/manuscript_validation.md` e
  artefatos derivados em `output/`.
- `code/99_run_all.R`: orquestra extração, validação do manuscrito,
  renderização do PDF, extração/validação textual do PDF e `sessionInfo`.
- `references.bib`: fonte bibliográfica do Rmd.
- `output/verbete-causalidade.pdf`: derivado; o timestamp disponível é anterior
  ao estado de trabalho atual e deve ser tratado como desatualizado até nova
  execução autorizada/registrada.

## Dependências e observações de escopo

- A validação editorial local é necessária, mas não certifica a verdade
  substantiva de todos os claims bibliográficos ou numéricos.
- Os números do diagnóstico brasileiro precisam permanecer qualificados como
  resultados dos periódicos/corpus analisados; não autorizam generalização
  automática para toda a Ciência Política brasileira.
- A revisão deve separar identificação, mecanismo, inferência estatística,
  validade externa e escolha editorial de escopo.
