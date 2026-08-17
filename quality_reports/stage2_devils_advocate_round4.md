# Revisão independente da correção de denominador — Stage 2, Round 4

## Objeto e escopo

Revisão restrita à correção do denominador no parágrafo da linha 121 de
`paper/verbete-causalidade.Rmd`. Foram confrontados o script
`code/03_recalculate_quantitative_explanatory_denominators.R`, os dois CSVs
derivados e o snapshot canônico
`/Users/manoelgaldino/Documents/DCP/Papers/metodos_CP/data/processed/paper_analysis/paper_analysis_dataset_current.csv`.

Para preservar a independência da revisão e a restrição de escrita, o script
produtor não foi executado, pois ele regravaria os CSVs. Sua sintaxe foi
validada e as contagens foram recalculadas diretamente do snapshot canônico em
uma sessão R somente de leitura.

## Resultado

**PASS — 100/100 no escopo desta correção.**

| Verificação solicitada | Evidência independente | Resultado |
|---|---:|---|
| Artigos quantitativos | 1.999 | PASS |
| Quantitativos com pretensão causal ou explicativa | 1.944/1.999 = 97,2486%, arredondado para 97,2% | PASS |
| Com estratégia explícita entre os quantitativos explicativos | 59/1.944 = 3,0350%, arredondado para 3,0% | PASS |
| Sem estratégia explícita entre os quantitativos explicativos | 1.885/1.944 = 96,9650%, arredondado para 97,0% | PASS |
| Partição do denominador comum | 59 + 1.885 = 1.944 | PASS |
| Crítica anterior de categorias não comparáveis | Resolvida pelo condicionamento explícito ao mesmo subconjunto de 1.944 artigos | PASS |

## Evidência de proveniência e reprodução

O snapshot canônico contém 4.144 registros, sem `pid` ausente ou duplicado. O
MD5 observado é `87b70bce32df44c80eb6c873dd46e5d8`, idêntico ao hash fixado no
script e ao registrado no CSV de proveniência, cujo status é `MATCH`.

A recomputação independente aplicou a seguinte sequência lógica:

1. `is_empirical_paper == TRUE` e
   `is_empirical_quant_paper_torreblanca == TRUE`: 1.999 artigos;
2. dentro desses 1.999,
   `causal_or_explanatory_claim_present == TRUE`: 1.944 artigos;
3. dentro desses 1.944, `strict_design_method == TRUE`: 59 artigos;
4. dentro desses mesmos 1.944, `strict_design_method == FALSE`: 1.885 artigos.

Não há valores ausentes nas variáveis que definem esses denominadores. A tabela
cruzada dos 1.999 quantitativos é:

| Pretensão causal ou explicativa | Sem estratégia explícita | Com estratégia explícita | Total |
|---|---:|---:|---:|
| Não | 55 | 0 | 55 |
| Sim | 1.885 | 59 | 1.944 |
| **Total** | **1.940** | **59** | **1.999** |

Os resultados reproduzidos coincidem integralmente com as linhas
`quantitative_explanatory`, `with_explicit_identification` e
`without_explicit_identification` de
`data/processed/abcp_quantitative_explanatory_identification_summary.csv`. O
script também contém verificações explícitas das contagens esperadas, da soma
59 + 1.885 = 1.944, da ausência de identificadores duplicados e da identidade
do snapshot por MD5.

## Avaliação da crítica anterior

A crítica anterior afirmava que “descompasso entre ambição e método” colocava
em relação categorias cuja comparabilidade não estava explicitada. A redação
atual resolve o problema de denominador em três passos visíveis: define o
universo de 1.999 quantitativos, identifica nele os 1.944 com pretensão causal
ou explicativa e, somente então, divide esse mesmo subconjunto entre 59 com e
1.885 sem estratégia explícita de identificação.

“Pretensão causal ou explicativa” e “estratégia explícita de identificação” não
precisam medir o mesmo construto. Sua diferença é precisamente o objeto do
diagnóstico de descompasso. O requisito lógico é que a presença ou ausência da
segunda dimensão seja avaliada no conjunto definido pela primeira; é o que a
correção agora faz. Além disso, as categorias com e sem estratégia são
mutuamente exclusivas e exaustivas dentro dos 1.944 artigos.

## Ressalva estritamente necessária

O resultado compara registros textuais: pretensão causal ou explicativa e
menção a uma estratégia explícita de identificação. Ele não mede diretamente a
qualidade da execução nem demonstra que todo artigo sem menção careça, em
sentido latente, de qualquer fundamento identificador. A redação atual respeita
esse limite ao usar “possuem pretensão explicativa” e “mencionam uma estratégia
explícita”; portanto, a ressalva não exige alteração textual.

## Score

- Score inicial: 100
- Erros de contagem, percentual ou arredondamento: nenhum (−0)
- Inconsistência entre fonte, script, artefatos e manuscrito: nenhuma (−0)
- Falha remanescente de comparabilidade do denominador: nenhuma (−0)

**Score final: 100/100 — PASS.**
