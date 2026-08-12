# Plano: sequência de revisão final do verbete

**Status**: COMPLETED
**Data**: 2026-08-11
**Prazo editorial**: 2026-08-21

## Objetivo

Fechar o verbete "Causalidade" para entrega à EBCS, priorizando risco factual
sobre risco de contribuição, dado que o parecer Edmans de 2026-08-03 já foi
implementado integralmente.

## Justificativa da escolha de skills

O `edmans-review` completo não é re-rodado: o parecer de 2026-08-03 deu 8/10
nas três dimensões (R&R minor) e suas cinco prioridades foram implementadas.
Re-rodar reconfirmaria o que já foi corrigido.

O risco remanescente é de outra natureza: o verbete afirma números e
atribuições sobre trabalho alheio em documento público, citável e de correção
difícil. Daí a ordem abaixo.

Conteúdo posterior ao Edmans e nunca submetido a parecer estruturado:
abertura da seção 1 (Aristóteles → tabagismo/Hill → Neyman → Rubin) e a
passagem Imbens/"redução de ambição" na seção 5, ambas de 2026-08-05.

## Sequência

- [x] 1. `verify-claims` — fact-check CoVe, 3 verificadores independentes
      (clusters A/B/C). Tabela de claims em
      `quality_reports/2026-08-11_verify-claims_tabela.md`.
- [x] 2. Corrigir discrepâncias factuais apontadas. Três correções: citação de
      Hill movida, `@angristpischke2010` removido do claim de LATE, rótulo
      "1.994 artigos quantitativos" qualificado.
- [x] 3. `readability-audit` — sem Pangram. Comparação com o benchmark
      **descartada por invalidade**: os detectores de estilo do script são
      hardcoded em inglês e retornam zero em português. Medição refeita com
      padrões de português.
- [x] 4. `edmans-exposition` — 8/10. Achado principal: quatro construções
      "não é X, mas Y" de andaime puro, cuja reescrita direta devolveu 24
      palavras. Dois erros na passagem de 05/08 (`medi-las` sem antecedente;
      sujeito elidido em "Não é, porém, defeito necessário").
- [x] 5. `proofread` — 89/100 na proposta, sete correções aprovadas e
      aplicadas por implementador separado, levando a 100/100. Achado
      principal: sigla DAGs nunca expandida em cinco ocorrências.
- [x] 6. Corte editorial resolvido pela própria correção de prosa do passo 4.
      Manuscrito em 4.998/5.000.
- [x] 7. `Rscript code/99_run_all.R` — PASS em todos os gates; PDF de 8
      páginas revalidado.
- [x] 8. Pangram — **recusado pelo autor em 2026-08-11**. Não perguntar de
      novo, conforme regra de autorização dupla.

## Estado inicial (2026-08-11)

`quality_reports/manuscript_validation.md`: todos os gates PASS exceto
`word_limit` — 5.017 palavras contra teto de 5.000. 12 referências citadas,
nenhuma ausente, preâmbulo com 200 palavras.

## Verificação

- [ ] `manuscript_validation.md` sem nenhum FAIL
- [ ] Todo claim numérico do verbete rastreado a uma fonte primária
- [ ] Parecer completo de cada skill salvo em `quality_reports/` antes de
      resumir ao usuário
