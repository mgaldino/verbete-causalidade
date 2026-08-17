# Plano de execução — Research Pipeline do verbete "Causalidade"

**Data:** 17 de agosto de 2026  
**Status:** COMPLETED  
**Escopo:** avaliação somente-leitura do estado atual do repositório.

## Objetivo

Avaliar o manuscrito `paper/verbete-causalidade.Rmd` e o código reprodutível
associado segundo as regras editoriais da EBCS registradas em `CLAUDE.md`,
`README.md`, `notes/resumo_instrucoes_ebcs.md` e nos planos editoriais do
projeto, sem editar o manuscrito, os scripts ou qualquer texto-fonte.

## Método

1. Fixar o snapshot atual, preservando a alteração não commitada já existente.
2. Fazer revisão independente do código R, com score da rubrica de quality-gates.
3. Atualizar o mapa de seções e produzir leituras fiéis das cinco seções
   substantivas.
4. Produzir o Gate de Fidelidade Argumental para o estado atual do manuscrito.
5. Rodar Devil's Advocate com regras anti-strawman e score explícito.
6. Produzir proofread propositivo, sem aplicar correções.
7. Consolidar achados, limites da validação e recomendação em relatório final.

## Arquivos de entrada

- `paper/verbete-causalidade.Rmd`
- `references.bib`
- `code/01_extract_abcp_causal_design_cases.R`
- `code/02_validate_manuscript.R`
- `code/99_run_all.R`
- regras e decisões editoriais locais do repositório

## Restrições

- Nenhuma edição em `paper/`, `code/`, `references.bib` ou dados.
- Relatórios e mapas serão salvos apenas em `quality_reports/`.
- O proofread será somente proposta; qualquer aplicação dependerá de aprovação
  explícita posterior do autor.
- Não haverá commit automático.

## Resultado da execução

- Código: 91/100, aprovado com recomendações.
- Gate de fidelidade: PASS, com cinco leituras de seção e contrato salvo.
- Devil's Advocate: 81/100, sem falha substantiva bloqueadora.
- Proofread propositivo: 77/100, 18 propostas, nenhuma aplicada.
- Score consolidado: 83/100; continuar revisão, sem circulação ainda.
- Relatório consolidado: `quality_reports/pipeline_report_2026-08-17.md`.
