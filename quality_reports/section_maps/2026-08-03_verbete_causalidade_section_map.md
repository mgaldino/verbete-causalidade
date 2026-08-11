# Mapa de seções — Verbete “Causalidade”

**Manuscrito:** `paper/verbete-causalidade.Rmd`  
**Data:** 3 de agosto de 2026  
**Extensão inicial validada:** 3.967 palavras, incluindo referências

| Bloco | Linhas aproximadas | Tipo | Evidência, código ou dependências |
|---|---:|---|---|
| Preâmbulo | 28–30 | Delimitação conceitual e tese | Anuncia contrafactual, estimando, identificação, exemplos e contraste internacional–Brasil. |
| Sumário | 32–41 | Navegação editorial | Estrutura exigida pela EBCS. |
| 1. Histórico e fundamentos epistemológicos | 43–53 | Genealogia e argumento conceitual | Hill; Rubin; Holland; Imbens. |
| 2. Lógica de aplicação e decisões de desenho | 55–71 | Exposição metodológica | Resultados potenciais, estimando, identificação, estimador, inferência, DAGs; Angrist–Pischke; Lundberg et al. |
| 3. Vantagens, limites e vieses conhecidos | 73–89 | Crítica metodológica e escopo | Confundimento, seleção, colisor, pós-tratamento, interferência, mensuração, transporte e agência; Williams. |
| 4. Exemplos de aplicação em ciências sociais | 91–99 | Aplicações observacionais | Card–Krueger (DiD); Avelino–Biderman–Barone (RDD). Os números do RDD foram conferidos no artigo integral. |
| 5. Debates contemporâneos, escopo e Brasil | 101–117 | Fronteira disciplinar e diagnóstico empírico | Torreblanca et al.; Galdino–Martins da Silva; Silva; Williams. As estatísticas brasileiras dependem dos artefatos reproduzíveis do repo `metodos_CP`. |
| 6. Referências e leituras adicionais | 119–130 | Curadoria bibliográfica | 12 referências organizadas por quatro funções; bibliografia gerada por Pandoc. |
| 7. Ver também | 132–140 | Navegação conceitual | Sete remissões propostas; lista oficial da EBCS ainda indisponível. |
| 8. Como citar este verbete | 142 | Metadado editorial | Intencionalmente vazio; a plataforma preencherá o bloco. |

## Chunks e scripts relacionados

- O único chunk do manuscrito é `setup` (linhas 18–26), sem análise substantiva.
- `code/01_extract_abcp_causal_design_cases.R` gera a lista deduplicada de 59 artigos brasileiros com estratégia explícita.
- `code/02_validate_manuscript.R` valida citações, quantidade de referências, estrutura e limite de palavras.
- `code/99_run_all.R` executa a validação e renderiza o PDF.

## Decisão sobre leitura seccionada

Embora o manuscrito tenha menos de 8.000 palavras e menos de 25 páginas esperadas, o Gate de Fidelidade Argumental será executado porque o argumento combina genealogia, exposição metodológica, aplicações e comparação disciplinar. As cinco seções substantivas serão lidas separadamente antes do Devil’s Advocate.
