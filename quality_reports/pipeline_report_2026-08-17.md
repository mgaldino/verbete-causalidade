# Pipeline Report — 17 de agosto de 2026

**Objeto:** `paper/verbete-causalidade.Rmd`  
**Modo:** avaliação somente-leitura; nenhuma alteração foi aplicada ao texto,
ao código, às referências ou aos dados.

## Snapshot e instruções locais

- O repositório foi lido à luz de `CLAUDE.md`, `README.md`,
  `notes/resumo_instrucoes_ebcs.md` e dos planos editoriais existentes.
- O tipo editorial é conceito metodológico; o limite é 5.000 palavras incluindo
  referências; o preâmbulo deve ter 150–200 palavras; o registro deve ser
  analítico, não tutorial; e os diagnósticos brasileiros devem permanecer
  restritos ao corpus efetivamente analisado.
- Já havia uma alteração não commitada em `paper/verbete-causalidade.Rmd`; ela
  foi preservada e tratada como o snapshot avaliado.
- O PDF existente é derivado de um snapshot anterior. A execução em cópia
  temporária encontrou 5.006 palavras processadas no Rmd atual e interrompeu a
  renderização antes de produzir um PDF novo.

## Estágio 1: Revisão de Código

- **Round atual:** 1/5.
- **Score:** 91/100 — APROVADO COM RECOMENDAÇÕES.
- **Relatório:** `quality_reports/stage1_code_review_round1.md`.
- **Testes registrados:** `parse()` dos três scripts; extração em cópia
  temporária com 59 artigos e nove casos multimétodo; validação do manuscrito
  atual; execução do orquestrador até o bloqueio correto do limite de palavras;
  validação isolada do PDF existente; checagens de datas, períodos e campos
  lógicos.
- **Recomendações remanescentes:** tornar a localidade UTF-8 adaptativa;
  codificar validações explícitas de `year`, `period_3` e `NA`; tornar a
  extração do preâmbulo menos dependente do último fence literal.
- **Issues críticas:** nenhuma.
- **Correções aplicadas:** nenhuma, por falta de autorização.

## Estágio 1.5: Gate de Fidelidade Argumental

- **Leituras de seção:** 5, todas atualizadas para o snapshot corrente.
- **Mapa:** `quality_reports/section_maps/2026-08-17_verbete_causalidade_section_map.md`.
- **Leituras:** `quality_reports/section_reads/section_01_historico_fundamentos.md`,
  `section_02_logica_desenho.md`, `section_03_limites_vieses.md`,
  `section_04_exemplos_aplicacao.md` e `section_05_debates_brasil.md`.
- **Gate:** PASS.
- **Contrato salvo em:** `quality_reports/argument_fidelity_gate_round3.md`.
- **Ambiguidades remanescentes:** equivalência entre resultados potenciais e
  DAGs sem condições explicitadas; suporte local da plausibilidade de Tendências
  Paralelas; parametrização do 3,7 p.p. no RDD; regra de classificação de
  “pesquisas baseadas em desenho”/“pretensão explicativa”; e a expressão
  “publicações nacionais”. Essas questões foram separadas de falhas
  substantivas.
- **Resultado interpretativo:** o verbete não tem tratamento, outcome ou efeito
  empírico próprios; sua especificação preferida é pergunta → estimando →
  estrutura causal → desenho → identificação → estimador → inferência.

## Estágio 2: Devil’s Advocate

- **Round corrente:** Round 3 do histórico do repositório; primeira rodada desta
  avaliação do snapshot atual.
- **Score:** 81/100 — PASS alto, sem falha substantiva bloqueadora.
- **Relatório:** `quality_reports/stage2_devils_advocate_round3.md`.
- **Vulnerabilidades principais:** a frase “Estamos longe da fronteira
  metodológica nas publicações nacionais” excede potencialmente o corpus de nove
  periódicos; “algoritmos sofisticados” mistura seleção de janela/bandwidth com
  definição de eleição apertada; “descompasso entre ambição e método” relaciona
  categorias de classificação cuja comparabilidade não é explicitada.
- **Ponto preservado:** o RDD atual com 3,7 p.p. e o comparador do segundo
  colocado não foi classificado como erro factual; permanece um limite de
  detalhe e rastreabilidade.
- **Correções aplicadas:** nenhuma.

## Estágio 3: Proofread

- **Round corrente:** 4, preservando o relatório histórico Round 3.
- **Score:** 77/100 — REPROVADO para circular sem revisão.
- **Relatório:** `quality_reports/stage3_proofread_round4.md`.
- **Propostas:** 18 correções/checagens, incluindo gramática, ortografia,
  pontuação, SUTVA, referência/nome próprio, concordância, delimitação do
  corpus brasileiro e redação da atualização metodológica do RDD.
- **Achados prioritários:** “enconomistas”, “metodoológica”, “limtiaria o tip
  ode”, “não calcular” e “pesquisas interesse”; frases malformadas nas linhas
  103, 107 e 117; frase sobre 63% dos trabalhos na linha 121; expansão de SUTVA
  a conferir; espaço em branco residual na linha 107 (`git diff --check`).
- **Correções aplicadas:** 0 de 18.
- **Aprovação:** pendente de decisão explícita do autor; não houve modo Just Do
  It.

## Score Final Consolidado

Média simples dos estágios pontuados: **(91 + 81 + 77) / 3 = 83/100**.

## Status

**APROVADO PARA CONTINUAR A REVISÃO (83/100), MAS NÃO PRONTO PARA CIRCULAR.**

O score consolidado supera 80, mas o gate específico de proofread exige 90 e
falhou. Além disso, o snapshot atual excede o teto de 5.000 palavras e ainda
não possui PDF re-renderizado e visualmente verificado a partir dessa versão.

## Recomendação

Precisa mais trabalho antes de circular ou submeter. O próximo passo depende da
autorização do autor: aprovar todas, selecionar ou rejeitar as propostas do
proofread e decidir se as quatro questões do Devil’s Advocate exigem ajuste de
escopo, referência ou formulação. Depois disso, deve-se rerodar o pipeline e
validar o PDF atual. Nenhuma edição ou commit foi realizado.
