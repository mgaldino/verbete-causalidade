# Verbete Causalidade — Contexto do Projeto

## O que é este projeto

Este repositório organiza a redação do verbete "Causalidade" para a Enciclopédia Brasileira de Ciências Sociais (EBCS/ANPOCS). Por decisão do autor, o texto será um verbete metodológico, classificado operacionalmente como conceito metodológico. O limite de 5.000 palavras inclui as referências. O registro deve ser analítico e autoral: explicar fundamentos, lógica, implicações para o desenho de pesquisa, limites, vieses e controvérsias, sem se converter em tutorial.

## Estrutura do repositório

```
verbete-causalidade/
├── CLAUDE.md
├── README.md
├── verbete-causalidade.Rproj
├── references.bib
│
├── paper/
│   ├── verbete-causalidade.Rmd
│   ├── preamble.tex
│   └── appendix.Rmd
│
├── code/
│   ├── 99_run_all.R
│   └── functions/
│
├── data/
│   ├── raw/
│   ├── processed/
│   └── metadata/
│
├── output/
│   ├── figures/
│   ├── tables/
│   └── models/
│
├── quality_reports/
│   └── plans/
│
├── replication/
├── references_pdfs/
├── explorations/
└── notes/
```

## Workflow obrigatório

1. Manter o plano editorial em `quality_reports/plans/` antes de reescrever a estrutura do verbete.
2. Escrever o texto principal em `paper/verbete-causalidade.Rmd`.
3. Manter notas de leitura e decisões editoriais em `notes/`.
4. Manter referências bibliográficas em `references.bib`.
5. Gerar PDF reprodutível por `code/99_run_all.R`.
6. Não commitar sem instrução explícita.

## Convenções

- Idioma principal: português com acentuação correta.
- Saída padrão: PDF.
- Registro: analítico e autoral, não manualístico.
- Tipo: verbete metodológico; subtipo operacional: conceito metodológico.
- Extensão máxima: 5.000 palavras, incluindo referências.
- Referências: 6 a 12, organizadas por subtemas e com função analítica clara.
- Incluir dois ou três exemplos de aplicação, preferencialmente ao menos um brasileiro ou latino-americano.
