# Plano do pipeline — Verbete “Causalidade”

**Data:** 3 de agosto de 2026  
**Status:** COMPLETED

## Objetivo

Submeter a primeira versão integral do verbete a um pipeline de qualidade com papéis separados, implementar correções sustentadas pelos pareceres e entregar R Markdown e PDF com até 5.000 palavras, incluindo referências.

## Regra de separação

- Revisores apenas leem e salvam pareceres; não editam o manuscrito ou os scripts.
- Implementadores apenas aplicam correções aprovadas; não produzem pareceres.
- A síntese editorial e a implementação serão atribuídas a papéis distintos.

## Arquivos em escopo

- Manuscrito: `paper/verbete-causalidade.Rmd`.
- Bibliografia: `references.bib`.
- Renderização: `code/99_run_all.R`.
- Extração reproduzível dos casos brasileiros: `code/01_extract_abcp_causal_design_cases.R`.

## Estágios

1. Validar a primeira versão, as 12 referências e a contagem inicial de palavras.
2. Revisar o código R com agente independente e score da rubrica de *quality gates*.
3. Construir mapa de seções, leituras fiéis e Gate de Fidelidade Argumental.
4. Executar `edmans-review` com três agentes independentes: Contribution, Execution e Exposition; salvar os quatro relatórios obrigatórios.
5. Executar Devil's Advocate apoiado no Gate de Fidelidade; salvar parecer com score.
6. Encaminhar os pareceres a um agente implementador, sem função de revisão.
7. Reexecutar os gates substantivos após as correções.
8. Executar proofread no protocolo propor → aprovar → aplicar, com revisor e implementador distintos.
9. Validar citações, limite de palavras, compilação e inspeção visual do PDF.
10. Salvar relatório consolidado do pipeline e atualizar este plano para `COMPLETED`.

## Critérios de passagem

- Código R: score mínimo 80/100.
- Gate de Fidelidade Argumental: contrato interpretativo aprovado.
- Devil's Advocate: score mínimo 80/100.
- Proofread: score mínimo 90/100.
- Bibliografia: 6 a 12 referências, sem chaves quebradas.
- Extensão: no máximo 5.000 palavras, incluindo referências.
- Artefatos finais: Rmd canônico e PDF compilado e visualmente inspecionado.

## Aprovação

O usuário determinou expressamente o uso de `research-pipeline` e `edmans-review` e reiterou: “quem revisa não implementa, quem implementa não revisa”.

## Resultado final

- Código: 93/100.
- Devil’s Advocate: 100/100.
- Proofread: 100/100.
- Manuscrito: 4.107 palavras, incluindo 12 referências.
- Preâmbulo: 200 palavras.
- PDF: 7 páginas, compilado e inspecionado visualmente.
- Relatório consolidado: `quality_reports/pipeline_report_2026-08-04.md`.
