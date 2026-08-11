# Verbete "Causalidade" — EBCS

Repositório de trabalho para o verbete "Causalidade" da Enciclopédia Brasileira de Ciências Sociais (EBCS/ANPOCS).

## Resumo operacional

Por decisão editorial do autor, o texto será produzido como **verbete metodológico**, mais especificamente como um **conceito metodológico**: uma categoria que organiza escolhas de desenho de pesquisa, sem constituir por si mesma um método ou uma técnica. A extensão máxima é de 5.000 palavras, incluindo referências, com 6 a 12 referências. O texto deve ser analítico e autoral, mas não pode se converter em tutorial ou manual de inferência causal.

O que precisa ser entregue:

1. Preâmbulo não numerado de 150 a 200 palavras.
2. Sumário numerado antes do corpo do texto.
3. Seções principais sobre histórico e fundamentos, lógica de aplicação, vantagens, limites e vieses, exemplos em ciências sociais e debates contemporâneos.
4. De 6 a 12 referências e leituras adicionais, organizadas por subtemas.
5. Lista "Ver também" com 3 a 8 remissões internas sugeridas.
6. Não preencher manualmente o bloco "Como citar este verbete"; segundo as diretrizes, a plataforma gera esse bloco.

Ver o briefing completo em `notes/resumo_instrucoes_ebcs.md` e o plano de redação em `quality_reports/plans/plano_verbete_causalidade.md`.

## Arquivos principais

- `paper/verbete-causalidade.Rmd`: manuscrito principal.
- `references.bib`: bibliografia em BibTeX.
- `code/99_run_all.R`: pipeline reproduzível completo (extração, validação, PDF e checagem pós-render).
- `notes/resumo_instrucoes_ebcs.md`: resumo das regras editoriais da EBCS.
- `quality_reports/plans/plano_verbete_causalidade.md`: plano de escrita.

## Reprodução

Na organização padrão, os repositórios `verbete-causalidade` e `metodos_CP` são
pastas irmãs. Nesse caso, execute a partir da raiz deste repositório:

```sh
Rscript code/99_run_all.R
```

Se `metodos_CP` estiver em outro local, configure a raiz antes da execução:

```sh
METODOS_CP_ROOT=/caminho/para/metodos_CP Rscript code/99_run_all.R
```

O pipeline requer R com `dplyr`, `readr`, `stringr`, `tidyr`, `rmarkdown`,
`stringi`, `jsonlite` e `yaml`; Pandoc e XeLaTeX; e as ferramentas `pdfinfo` e
`pdftotext`. A execução registra:

- a lista de 59 casos em `data/processed/abcp_explicit_causal_design_articles.csv`;
- hashes e identidade das fontes em `data/processed/abcp_explicit_causal_design_articles_provenance.csv`;
- os gates do manuscrito em `quality_reports/manuscript_validation.md`;
- o PDF em `output/verbete-causalidade.pdf` e sua validação em `quality_reports/pdf_validation.md`;
- versões do ambiente em `quality_reports/sessionInfo.txt`.
