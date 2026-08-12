# Parecer completo — verify-claims (Chain-of-Verification)

**Data**: 2026-08-11
**Draft**: `paper/verbete-causalidade.Rmd`
**Protocolo**: CoVe, 4 fases (Dhuliawala et al. 2023, arXiv:2309.11495)
**Arquitetura**: três verificadores independentes de contexto limpo, clusters A/B/C.
Nenhum deles teve acesso ao texto do verbete — receberam apenas perguntas
neutras e ponteiros de fonte primária. É o passo de resposta independente do
CoVe: um agente que leu o rascunho tende a confirmar o que leu.

Tabela de claims extraídos: `quality_reports/2026-08-11_verify-claims_tabela.md`

---

## VEREDITO GERAL: FAIL — 2 erros de citação, 1 imprecisão de rótulo

De 30 claims factuais verificados, 27 passaram sem ressalva.

| # | Claim | Linha | Veredito | Ação |
|---|-------|-------|----------|------|
| A5 | `[@hill1965]` cobre "não seria aceitável atribuir pessoas aleatoriamente ao consumo prolongado de cigarros" | 45 | **CONTRADICTED** | Mover a citação |
| C12/C13 | `[@angristpischke2010]` cobre LATE/*compliers*/monotonicidade | 61 | **CONTRADICTED** | Remover a chave |
| C8 | "1.994 artigos quantitativos" | 113 | **PARCIAL** | Qualificar o rótulo |

### A5 — Hill (1965) não discute aleatorizar pessoas ao tabagismo

O verbete afirma, com citação a Hill: "estudos conduzidos em diferentes
populações encontravam associações fortes e consistentes, mas não seria
aceitável atribuir pessoas aleatoriamente ao consumo prolongado de cigarros
[@hill1965]".

A palavra "random" aparece **uma única vez** em todo o artigo de Hill, e num
contexto não relacionado — não-resposta em amostras de survey ("30% of a
randomly-drawn sample are never contacted", p. 299). Não há ocorrência de
"randomization", "randomize", "random assignment" ou cognatos.

O que Hill de fato diz sobre tabagismo e experimento, no ponto de vista (8)
*Experiment*, é o enquadramento **oposto** — aponta a cessação como evidência
semi-experimental disponível, não como impossibilidade:

> "Occasionally it is possible to appeal to experimental, or semi-experimental,
> evidence. For example, because of an observed association some preventive
> action is taken. Does it in fact prevent? The dust in the workshop is reduced,
> lubricating oils are changed, persons stop smoking cigarettes."

A primeira oração do período **é** sustentada por Hill: consistência entre
populações é o ponto de vista (2). O erro é de escopo da citação, que hoje
cobre as duas orações.

**Correção aplicada**: mover `[@hill1965]` para logo após "associações fortes e
consistentes". A impossibilidade ética de aleatorizar tabagismo é conhecimento
corrente e não precisa de fonte.

### C12/C13 — Angrist e Pischke (2010) não sustentam LATE

O verbete cita `[@angristpischke2010; @imbens2010]` para "o efeito apenas entre
os *compliers*, unidades cuja exposição ao tratamento muda na direção induzida
pelo instrumento".

Verificação independente sobre o texto integral (IZA DP 4800, idêntico ao JEP
24(2):3–30), 14.612 palavras:

| Termo | Ocorrências |
|---|---|
| complier | 0 |
| defier | 0 |
| monotonicity | 0 |
| local average treatment effect | 0 |
| LATE | 1 — **na bibliografia**, no título do próprio Imbens |

O ensaio menciona variáveis instrumentais 19 vezes, mas nunca desenvolve o
arcabouço do LATE nem suas suposições identificadoras. Imbens (2010) sustenta
os dois pontos explicitamente, incluindo a monotonicidade e a exclusão dos
*defiers*. As demais citações a Angrist e Pischke no verbete (linhas 67 e 107,
sobre a revolução da credibilidade) foram verificadas e estão corretas.

**Correção aplicada**: remover `@angristpischke2010` dessa citação apenas.
Âncora alternativa seria Angrist, Imbens e Rubin (1996), *JASA* 91:444–472, mas
o verbete está no teto de 12 referências e Imbens (2010) já basta.

### C8 — "1.994 artigos quantitativos" está mal rotulado na fonte

Verificação contra os artefatos canônicos em `metodos_CP`:

- artigos com componente quantitativo: **1.999**
- com classificação de inferência disponível: **1.994** (5 casos sem
  classificação são excluídos do denominador)
- quantificam formalmente a incerteza: **743** → 743/1994 = 37,262% → **37,3%** ✓

A aritmética está certa; o rótulo é que não. O abstract do paper-fonte
(Galdino e Martins da Silva) diz "Entre 1.994 artigos quantitativos", enquanto
a nota da própria Tabela 2 do paper está correta: "5 casos quantitativos sem
classificação são excluídos do denominador". O verbete herdou o rótulo do
abstract. Com base em 1.999 o número seria 37,2%.

**Correção aplicada no verbete**: "Entre 1.994 artigos quantitativos com
inferência classificada". **Pendente no paper da ABCP**: mesmo ajuste no
abstract — fora do escopo deste repositório.

---

## Claims verificados sem ressalva

**Fundamentos (seção 1)**: nove pontos de vista de Hill e seus nomes; a
advertência de que nenhum é prova indiscutível nem condição necessária
(tradução quase literal de "None of my nine viewpoints can bring indisputable
evidence for or against the cause-and-effect hypothesis and none can be
required as a sine qua non"); Hill como professor emérito de estatística
médica; Neyman 1923 e a tradução de 1990 por Dabrowska e Speed; "experimentos
agrícolas aleatorizados" (o modelo de urnas de Neyman é, pelo comentário de
Rubin em 1990, estocasticamente idêntico ao experimento completamente
aleatorizado); Rubin 1974 definindo efeitos por y(E) − y(C) e estendendo a
estudos não aleatorizados, que é a tese do artigo; a datação da inflexão nos
anos 1970; Wright como antecedente e a formalização moderna "associada a"
Pearl.

**Exemplos (seção 4)**: Card e Krueger, incluindo a formulação "não encontraram
a redução do emprego prevista pelo modelo competitivo simples", que é o
enquadramento dos próprios autores; a pergunta de pesquisa, os anos e os
cargos de Avelino, Biderman e Barone; os 266 municípios; os 3,7 pontos
(0,0365 na Tabela 1, arredondado para 3,7% pela prosa do artigo); os 3,4
pontos com controle por vereador (0,0340, mesma janela); o polinômio de quarto
grau, que é a única ordem reportada.

**Difusão e Brasil (seção 5)**: os 91.632 artigos, 2003–2023, 156 periódicos;
crescimento e associação positiva com citações, com a linguagem descritiva que
os próprios autores exigem; concentração em periódicos de prestígio e
instituições bem posicionadas; impulso por experimentos de levantamento; uso
raro de placebo e poder; os 4.144 artigos, 2005–2025, nove periódicos SciELO;
os 59 artigos e 1,4% com denominador nomeado; os 1.885 e 45,5% com denominador
nomeado; Imbens sobre validade interna; Lundberg, Johnson e Stewart sobre o
estimando; Hünermund e Louw com as duas opções ("omitir ... ou marcá-los"),
que é a recomendação real deles.

---

## Achados que não são erro, mas informam decisão editorial

1. **Nota de rodapé 22 de Avelino, Biderman e Barone**: os autores rejeitam
   explicitamente a interpretação local do estimando de RDD, afirmando que
   seria "o efeito sobre toda a população com pesos mais elevados para as
   observações próximas da descontinuidade". O verbete não lhes atribui a
   interpretação local — enuncia-a prescritivamente —, então não há erro. Mas
   o fato substancia concretamente a tese que o parágrafo já sustenta.
2. **O artigo não traz** teste de densidade de McCrary, tabela de
   balanceamento, cutoffs placebo nem gráfico de RD. Reforça o "exige cautela,
   justificativa e diagnósticos" já presente.
3. **Tabela 2 do mesmo artigo**: com efeitos fixos de partido e interações, o
   efeito perde significância nas janelas de 3% e 1%.
4. **Card e Krueger**: o DiD principal é +2,76 FTE (+13%), t = 2,03 — positivo
   e significante. O verbete não diz "zero" nem "não significante", então
   escapou da armadilha usual.
5. **Inconsistência interna em Torreblanca et al.**: 30.296 no corpo do texto
   contra 30.290 na Figura 2. A figura fecha a aritmética; o texto não. O
   verbete não cita esse número.
6. **Inconsistência interna em Avelino et al.**: 5.221 na prosa contra 5.211
   nas tabelas. O verbete não cita esse número.
7. **A entrevista de 2022 com Rubin** (Observational Studies 8(2):77–94, DOI
   10.1353/obs.2022.0009) teve a existência e os metadados confirmados via
   Crossref, mas o texto integral está atrás de barreira do Project MUSE (403)
   e não pôde ser lido pelo verificador. O relato retrospectivo equivalente
   está documentado e citável em Li e Mealli (2014), pp. 6–8, disponível
   localmente no repositório. **O autor confirmou em 2026-08-11 que a
   entrevista pertinente é a de 2022 e que a leu**; a proveniência está
   resolvida por essa confirmação direta, e a citação permanece como está.

---

# ANEXO I — Relatório integral do verificador, cluster A (fundamentos)

## FACT-CHECK REPORT

---

### A1 — Number and term for Hill's "viewpoints"
**VERDICT: SUPPORTED (nine; "viewpoints")**

**Answer:** Nine. Hill's own summary term is **"viewpoints"**. Within the body he also calls them "features" and "characteristics" — he uses all three interchangeably — but the summative statement uses "viewpoints."

**Evidence** (local file `sources/raw/hill_1965_association_or_causation.txt`, line 257, corresponding to p. 299 of the printed article): "Here then are nine different viewpoints from all of which we should study association before we cry causation."

Supporting internal usage: "Next on my list of features to be specially considered" (line 69, p. 296); "the third characteristic which invariably we must consider" (line 121-123, p. 297).

**Caution for the drafter:** Hill never uses the word "criteria." The now-standard label "Bradford Hill criteria" is posterior nomenclature, not his.

---

### A2 — The nine, in Hill's order and wording
**VERDICT: SUPPORTED**

As printed, with Hill's own section headings (txt lines 36, 69, 121, 175, 195, 223, 192, 236, 250; pp. 295–299):

1. **Strength** (p. 295)
2. **Consistency** (p. 296)
3. **Specificity** (p. 297)
4. **Temporality** (p. 297)
5. **Biological gradient** (p. 298) — glossed by Hill as "dose-response curve"
6. **Plausibility** (p. 298) — Hill specifies "biologically plausible"
7. **Coherence** (p. 298)
8. **Experiment** (p. 298)
9. **Analogy** (p. 299)

Note: Hill numbers them himself, "(1)" through "(9)," in the text.

---

### A3 — Are they required / cumulative? Sine qua non?
**VERDICT: SUPPORTED — and Hill is emphatically negative on both counts**

**Answer:** No. Hill explicitly denies that any is necessary, that any is decisive, and that they constitute rules of evidence.

**Evidence** (txt lines 259–271, p. 299), the passage immediately following the "nine different viewpoints" sentence:

> "What I do not believe — and this has been suggested — is that we can usefully lay down some hard-and-fast rules of evidence that must be obeyed before we accept cause and effect."

and, directly on the two points asked:

> "None of my nine viewpoints can bring indisputable evidence for or against the cause-and-effect hypothesis and none can be required as a sine qua non."

He then states their actual function: to help decide "is there any other answer equally, or more, likely than cause and effect?"

Hill reinforces this item by item — e.g. on plausibility, "this is a feature I am convinced we cannot demand" (line 224-225, p. 298); on specificity, "if it is not apparent, we are not thereby necessarily left sitting irresolutely on the fence" (lines 170–173, p. 297).

---

### A4 — Hill's printed title/affiliation
**VERDICT: PARTIALLY SUPPORTED — "Professor Emeritus of Medical Statistics" is exactly right; "statistician" is not a printed title**

**Answer:** The byline as printed reads:

> "by Sir Austin Bradford Hill CBE DSC FRCP(hon) FRS
> (Professor Emeritus of Medical Statistics, University of London)"

(txt lines 9–11, p. 295). The piece is labelled **"President's Address"** to the newly founded Section of Occupational Medicine, meeting **14 January 1965** (txt lines 4–6).

**Nuances a careful reader will want:**
- "Professor Emeritus of Medical Statistics, University of London" is verbatim correct. His chair was at the London School of Hygiene & Tropical Medicine, a school of the University of London.
- He was indeed a medical statistician by profession, so calling him "a statistician" is substantively accurate — but the paper does not print the word "statistician," and if a draft puts it in quotation marks as his stated title, that is wrong.
- He was **not** a physician. The printed post-nominal is `FRCP(hon)` — an *honorary* fellowship — and his doctorate is a DSc, not an MD. Any text implying Hill was a doctor writing as a clinician is wrong.

---

### A5 — Does Hill 1965 discuss the impossibility/unacceptability of randomizing people to smoke?
**VERDICT: CONTRADICTED**

**Answer: No. Flatly no.** This is a factual error if a draft attributes it to this paper.

**Evidence:** The word "random" appears **exactly once** in the entire paper, and in an unrelated context — a complaint about non-response in survey samples: "30% of a randomly-drawn sample are never contacted" (txt line 295, p. 299, in the *Tests of Significance* section). There is no occurrence of "randomization," "randomize," "random assignment," "randomly assigned," or any cognate anywhere in the article.

**What Hill actually says about smoking and experiment** is confined to viewpoint (8) *Experiment* (txt lines 236–248, pp. 298–299), and it is the opposite framing: he points to **intervention/cessation as available semi-experimental evidence**, not to its impossibility —

> "Occasionally it is possible to appeal to experimental, or semi-experimental, evidence. For example, because of an observed association some preventive action is taken. Does it in fact prevent? The dust in the workshop is reduced, lubricating oils are changed, persons stop smoking cigarettes. Is the frequency of the associated events affected? Here the strongest support for the causation hypothesis may be revealed."

The only other near-relevant remark is a policy one, about not compelling behaviour change without strong evidence: "we should need very strong evidence before we made people burn a fuel in their homes that they do not like or stop smoking the cigarettes ... that they do like" (txt lines 307–312, p. 300). That is about the *ethics of acting on a causal verdict*, not about the ethics or feasibility of random assignment.

**Bottom line:** Hill's contribution to the smoking debate in *this* paper is his answer to confounding via strength/consistency/gradient. The "you cannot randomize people to smoke" argument belongs elsewhere in the literature (e.g. Cornfield et al. 1959; and, for the ethics-of-assignment point generally, Rubin 1974, whose ethical example is heroin addiction, not smoking). Do not cite Hill 1965 for it.

---

### A6 — Neyman 1923: setting, potential yields, randomization
**VERDICT: SUPPORTED with an important nuance on "randomized"**

**Setting:** Yes — agricultural field experiments comparing crop varieties across plots. From the printed abstract (*Statistical Science* 5(4), p. 465): Neyman "introduces a model for the analysis of field experiments conducted for the purpose of comparing a number of crop varieties, which makes use of a double-indexed array of unknown potential yields, one index corresponding to varieties and the other to plots." Neyman's text: "let us consider a field divided into m equal plots."

**Potential yields under each variety:** Yes, explicitly. Neyman writes (p. 467, orig. bracketed p. [29]) the array `U_i1, U_i2, ..., U_ik, ..., U_im`, "where i denotes the number of the urn (variety) and k denotes the plot number, while U_ik is the yield of the ith variety on the kth plot." Each plot is exposed to only one variety, so all but one entry per plot is unobserved. Rubin's accompanying comment calls `U_ik` "a 'potential yield' (Neyman's term) not an observed yield" (p. 472).

**Randomization — be precise:**
- Neyman does **not** invoke a Fisherian physical randomization procedure by that name. He assigns varieties to plots via an **urn model**, drawing balls **without replacement** ("we are obliged to sample without replacement," p. 467), with the constraint that a plot label drawn from one urn disappears from all other urns.
- **But that urn scheme *is* a randomization mechanism.** Rubin's comment in the same issue (p. 473) states: "Neyman then describes an urn model for determining which variety each plot receives; this model is **stochastically identical to the completely randomized experiment** with n = m/v plots exposed to each variety." Rubin further credits Neyman with "his proposal for the completely randomized experiment" and with "repeated-sampling evaluations over randomization distributions" (p. 472).
- What Neyman's setup **did not** do: (i) it does not address observational/nonrandomized data at all — the entire essay is about designed field trials; (ii) it does not present randomization as a *design principle justifying causal inference* in the way Fisher (1925, 1935) argued; the urn model is the device from which the expectation and variance of `x_i − x_j` are derived; (iii) it does not use Fisher's randomization test of a sharp null — Rubin explicitly distinguishes Neyman's "repeated-sampling" evaluation under a nonnull distribution from Fisher's randomization-based testing (p. 473).
- Also worth knowing: Neyman notes that the correlation `r` between `U_ik` and `U_jk` on the same plot is **not estimable from the data**, and recommends assuming `r = 1`, observing this may inflate the estimated standard deviation (abstract, p. 465).

**Error to watch for:** A draft saying Neyman's 1923 setup "did not assume randomization" is wrong — the urn model is complete randomization. A draft saying Neyman "randomized" in Fisher's sense, or that he applied potential outcomes to observational data, is also wrong. The safe formulation: Neyman defined potential yields and derived inference *under a random-allocation (urn) scheme equivalent to a completely randomized experiment*, confined to designed agricultural trials.

---

### A7 — Publication and translators of the English Section 9
**VERDICT: SUPPORTED**

**Answer:** Published in **1990**, translated and edited by **D. M. Dabrowska and T. P. Speed**.

**Evidence** — credit line as printed on p. 465: "Translated and edited by D. M. Dabrowska and T. P. Speed from the Polish original, which appeared in Roczniki Nauk Rolniczych Tom X (1923) 1–51 (Annals of Agricultural Sciences)." Source line: *Statistical Science*, Vol. 5, No. 4 (Nov., 1990), pp. 465–472; author credit "Jerzy Splawa-Neyman, D. M. Dabrowska, T. P. Speed"; JSTOR stable URL 2245382. At the time of translation Dabrowska was at UCLA Biostatistics and Speed was Professor and Chair of Statistics at UC Berkeley (footnote, p. 465).

Two details worth getting right: the author's name on the original is **Jerzy Splawa-Neyman**; and the translated portion is **Section 9 only** of a 51-page Polish paper. Rubin's comment (pp. 472–480) and further discussion follow in the same issue, which is why some citations give the page range as 465–480.

---

### A8 — Rubin 1974: potential outcomes central? extended to observational studies?
**VERDICT: SUPPORTED on both counts**

**Bibliographic check:** *Journal of Educational Psychology*, 1974, Vol. 66, No. 5, 688–701. Author affiliation as printed: Educational Testing Service, Princeton, New Jersey. Confirmed against the article's own header and the ERIC record EJ118470.

**Potential outcomes at the center of the definition — yes, definitionally so.** The paper has a dedicated section headed "DEFINING THE CAUSAL EFFECT OF THE E VERSUS C TREATMENT" (p. 689). Rubin defines a *trial* as a unit plus times `t1, t2`, then:

> "Let y(E) be the value of Y measured at t2 on the unit, given that the unit received the experimental Treatment E initiated at t1; Let y(C) be the value of Y measured at t2 on the unit given that the unit received the control Treatment C initiated at t1; Then y(E) — y(C) is the causal effect of the E versus C treatment on Y for that trial."

He states the fundamental identification obstacle in the same passage: "The problem in measuring y(E) — y(C) is that we can never observe both y(E) and y(C) since we cannot return to time t1 to give the other treatment." He then defines the "typical" causal effect as the average of `y_j(E) − y_j(C)` over M trials, noting median and midmean as alternatives (p. 690, incl. footnote 6).

**Explicit extension to nonrandomized/observational studies — yes, it is the paper's thesis.** From the abstract: "randomization should be employed whenever possible but ... the use of carefully controlled nonrandomized data to estimate causal effects is a reasonable and necessary procedure in many cases." From the introduction: "we will develop the position that nonrandomized studies as well as randomized experiments can be useful in estimating causal treatment effects." He defines the terms symmetrically on p. 688–689: a study whose assignment is not random "is called a nonrandomized study, a quasi-experiment, or an observational study," and there is a dedicated section "PRESENTING THE RESULTS OF A NONRANDOMIZED STUDY AS BEING OF GENERAL INTEREST" (p. 698). His observational-study machinery in this paper is the pair of concepts **"subjective random sampling"** and **"subjective randomization"** — "there is no important variable that differs in the E trials and C trials" (Summary, pp. 699–700).

*(Text verified from the article PDF, retrieved via Internet Archive Wayback capture of `fsb.muohio.edu/lij14/420_paper_Rubin74.pdf`; the Harvard DASH open-access record 1/3408692 exists but its full-text bitstream is access-restricted.)*

---

### A9 — Is the 1970s the right date for the decisive formal turn to potential outcomes for observational data?
**VERDICT: SUPPORTED**

**Answer:** Yes, and Rubin himself dates it that way. Rubin 1974 is the decisive step, reinforced by Rubin 1977 and Rubin 1978.

**Evidence 1 (the paper itself):** see A8 — the 1974 paper defines causal effects via potential outcomes and applies the definition to nonrandomized studies.

**Evidence 2 (Rubin's own retrospective, Li & Mealli 2014, p. 8):** "in the 1974 paper (Rubin, 1974), I made the potential outcomes approach for defining causal effects front and center, not only in randomized experiments, but also in observational studies, which apparently had never been done before."

**Evidence 3 (same interview, p. 6):** "I am consistently amazed how this was not used in observational studies until I did so in the 1970s."

**Nuances a methodologist would insist on, so the sentence does not overclaim:**
- The 1974 paper supplies the *definitional* turn. The *operational* apparatus for observational data — the propensity score and its balancing/ignorability theory — is Rosenbaum & Rubin (1983), i.e. the 1980s. The assignment-mechanism formalization is Rubin (1978).
- The name "Rubin Causal Model" is Holland's (1986), not Rubin's.
- The *notation* is Neyman's (1923), confined to randomized experiments; Rubin was unaware of it until the 1990 translation (Li & Mealli 2014, p. 7: "I wasn't aware of his work defining potential outcomes until 1990 when his Ph.D. thesis was translated into English").

So "decisive formal turn in the 1970s" is defensible; "the framework was completed in the 1970s" would not be.

---

### A10 — The two Rubin interviews
**VERDICT (a): SUPPORTED. VERDICT (b): SUPPORTED for Li & Mealli 2014; UNVERIFIABLE for the 2022 interview.**

**(a) The 2022 item exists with exactly those details — confirmed.** Crossref record for DOI `10.1353/obs.2022.0009`:
- Title: "Interview with Don Rubin"
- Author of record: Don Rubin (sole listed author in Crossref)
- Container: *Observational Studies*; Volume 8, Issue 2; pages **77–94**; published-print October 2022; publisher Project MUSE / University of Pennsylvania Press.

It belongs to the special issue "Rebels with a Cause: Monologues from Heckman, Pearl, Robins, and Rubin." Every element of the citation as you gave it checks out.

**(b) Which interview actually contains the retrospective account: the 2014 Li & Mealli one. Definitively.**

Local file `sources/raw/li_mealli_2014_conversation_rubin.txt` contains a sustained first-person account of exactly this extension, across three distinct passages:

1. **The origin of the idea** (p. 6, txt lines ~303–311): Rubin says it was clear from Cochran's experimental design course "that you should set up experiments as missing data problems, with all the potential outcomes under the not-taken treatments missing. But nobody did observational studies that way, which seemed very odd to me. Indeed, nobody was using potential outcomes outside the context of randomized experiments."

2. **The Neyman episode at Berkeley** (pp. 7–8, txt lines ~347–363), which is the centrepiece of the retrospective: Rubin recounts telling Neyman over lunch that formulating causal problems via missing potential outcomes was obvious "not just in randomized experiments, but also in observational studies," and Neyman replying to the effect that "causality is far too speculative in nonrandomized settings," then changing the subject to astronomy. Rubin notes the irony that Neyman said this "without acknowledging that he was the person who first formulated potential outcomes."

3. **The explicit claim about the 1974 paper** (p. 8, txt lines ~403–412), quoted in full under A9 above, plus: "As Neyman told me back in Berkeley, in some sense, he didn't believe in doing statistical inference for causal effects outside of randomized experiments."

**What I could not verify:** I could not obtain the full text of the 2022 *Observational Studies* interview. Project MUSE returned HTTP 403 on both the article page and its PDF endpoints (bot-verification gate); the journal's own site returned 404 for the archive listing; no open mirror was reachable. **I therefore cannot say whether the 2022 interview also contains such an account — it may well, but I have no evidence either way.** If a draft cites the 2022 interview *specifically* for the retrospective, that citation is unverified and should be swapped for Li & Mealli 2014, where the account is documented and quotable at pp. 6–8.

---

### A11 — Wright's path diagrams as antecedent of DAGs; Pearl as formalizer
**VERDICT: SUPPORTED, with two nuances that matter**

**Wright as antecedent — correct.** Sewall Wright introduced path coefficients (1918, 1920) and set out the framework in "Correlation and Causation" (*J. Agric. Res.* 20: 557–585, 1921), elaborated in "The Method of Path Coefficients" (*Ann. Math. Statist.* 5(3), 1934). He was the first to use directed graphs to represent causal relations among variables, and his path diagrams are the acknowledged ancestor of both structural equation modelling (social sciences, 1970s) and modern causal diagrams.

**Pearl as the modern formalizer — correct, but not sole.** Pearl's *Biometrika* 82(4):669–688 (1995), "Causal diagrams for empirical research," is the standard formalization reference, together with Pearl (2000/2009) *Causality* (do-operator, structural causal models). Pearl himself cites Wright directly and locates his own contribution relative to him. From the 1995 paper's own text:

> the equational model "is the nonparametric analogue of a structural equations model (Wright, 1921; Goldberger, 1972), with one exception: the functional form of the equations, as well as the distribution of the disturbance terms, will remain unspecified."

and: "The language of structural models, which includes path diagrams (Wright, 1921) and structural equations (Goldberger, 1972) represents a drastic departure from these two approaches, because it invokes new primitives, such as arrows, disturbance terms, or plain causal statements, which have no parallels in the language of probability." Wright (1921) is the reference at line 1103 of the reference list.

**Nuance 1 — what Pearl added, precisely.** Wright's apparatus is **linear and parametric**: path coefficients are standardized partial regression coefficients, and the decomposition of correlations depends on linearity and additivity. Pearl's causal DAGs are **nonparametric**: functional forms and disturbance distributions are left unspecified, and identification is decided by graphical criteria (d-separation, back-door and front-door criteria, do-calculus) rather than by algebraic path tracing. Saying "modern DAGs are Wright's path diagrams" collapses exactly the distinction Pearl says is the point of his paper. The safe formulation is that Wright supplied the *graphical representation of causal structure*, and Pearl supplied the *nonparametric identification theory* on top of it.

**Nuance 2 — Pearl is not the only formalizer.** Pearl's own acknowledgements state that "much of the investigation was inspired by Spirtes et al. (1993), in which a graphical account of manipulations was first proposed." The Carnegie Mellon group (Spirtes, Glymour & Scheines, *Causation, Prediction and Search*, 1993/2000) developed the manipulation semantics for DAGs in parallel. The epidemiological adoption is standardly dated to Greenland, Pearl & Robins (1999). A verbete that writes "Pearl formalized DAGs" is fine for an encyclopedic register; one that writes "Pearl alone formalized DAGs," or that omits SGS entirely in a passage claiming to give the intellectual history, is inaccurate by Pearl's own account.

**Nuance 3, minor but real:** the merger of path diagrams with *probabilistic* DAGs (Bayesian networks, d-separation) happened in AI in the 1980s and only then acquired an explicitly causal reading. There is a real conceptual gap between "graph encoding conditional independence" and "graph encoding causal structure," and Wright's diagrams sit on the causal side while 1980s Bayesian networks initially sat on the probabilistic side. That gap is what 1993–1995 closed.

---

## Summary of the errors found (cluster A)

| # | Verdict | Note |
|---|---------|------|
| A1 | SUPPORTED | Nine "viewpoints." Hill never says "criteria." |
| A2 | SUPPORTED | Order and wording confirmed. |
| A3 | SUPPORTED | Hill explicitly denies necessity, sufficiency, and rules of evidence. |
| A4 | PARTIALLY SUPPORTED | Affiliation exact; "statistician" is not a printed title; he was not a physician (honorary FRCP). |
| A5 | **CONTRADICTED** | **Hill 1965 contains no discussion of randomizing people to smoke. "Random" appears once, about survey non-response. Do not cite Hill 1965 for this.** |
| A6 | SUPPORTED w/ nuance | Neyman's urn model *is* complete randomization (per Rubin 1990); it is not observational, and not Fisherian randomization inference. |
| A7 | SUPPORTED | 1990; Dabrowska & Speed. |
| A8 | SUPPORTED | Definition via y(E) − y(C); observational extension is the paper's thesis. |
| A9 | SUPPORTED | 1970s correct for the definitional turn; propensity score is 1983, "RCM" label is 1986. |
| A10 | (a) SUPPORTED / (b) split | 2022 citation fully confirmed via Crossref. **The retrospective account is in Li & Mealli 2014 (pp. 6–8), documented and quotable. The 2022 interview's full text was inaccessible (MUSE 403) — any citation of it for the retrospective is unverified.** |
| A11 | SUPPORTED w/ nuance | Wright is linear/parametric; Pearl's contribution is the nonparametric identification theory; Spirtes-Glymour-Scheines (1993) is co-foundational by Pearl's own acknowledgement. |

Sources: [Neyman 1923/1990 translation](https://www.mimuw.edu.pl/~noble/courses/BayesianNetworks/90NeymanTranslation.pdf) · [Rubin 1990 comment](https://ics.uci.edu/~sternh/courses/265/rubinneyman_statsci1990.pdf) · [Rubin 1974 (ERIC record)](https://eric.ed.gov/?id=EJ118470) · [Crossref: Interview with Don Rubin](https://doi.org/10.1353/obs.2022.0009) · [Observational Studies special issue announcement](https://datascience.unifi.it/index.php/2022/10/17/special-issue-of-observational-studies/) · [Pearl 1995, Biometrika](https://ics.uci.edu/~dechter/courses/ics-295cr/spring-2021/reading/biometrika_1995.pdf) · [Brief history of causal diagrams](https://causaldiagrams.org/guides-and-tutorials/brief-history/)

---

# ANEXO II — Relatório integral do verificador, cluster B (exemplos aplicados)

## FACT-CHECK REPORT

Both sources retrieved as primary full text. Card–Krueger: the actual AER PDF from David Card's Berkeley page (`https://davidcard.berkeley.edu/papers/njmin-aer.pdf`), extracted with pdftotext. Avelino/Biderman/Barone: the SciELO HTML **and** the official SciELO PDF (`https://www.scielo.br/j/dados/a/PchnVtTTNLJP7tFjDwpWPsP/?format=pdf&lang=pt`), extracted with pdftotext — so I have the actual table cells, not a summary.

---

## SOURCE 1 — Card & Krueger (1994)

### B1. What was studied — **SUPPORTED**
**New Jersey** raised its state minimum wage from **$4.25 to $5.05/hour on April 1, 1992**. Industry: **fast-food restaurants** (410 surveyed, two waves: Feb–Mar 1992 and Nov–Dec 1992). Comparison group: **eastern Pennsylvania**, where the minimum stayed at $4.25.

> "On April 1, 1992, New Jersey's minimum wage rose from $4.25 to $5.05 per hour. To evaluate the impact of the law we surveyed 410 fast-food restaurants in New Jersey and eastern Pennsylvania before and after the rise." (abstract, p. 772)

A second, within-NJ comparison also exists: NJ stores initially paying $5.00+/hour (largely unaffected) serve as an alternative control.

### B2. Employment finding — **PARTIALLY SUPPORTED — read the flag**
Direction: **POSITIVE**, not zero.

- Main DiD (Table 3, col. iii, row 3): **+2.76 FTE employees per store** in NJ relative to PA, **or +13 percent**, with a **t statistic of 2.03**.
  > "The relative gain (the 'difference in differences' of the changes in employment) is 2.76 FTE employees (or 13 percent), with a t statistic of 2.03." (p. 779)
- Component changes: PA stores **−2.28 FTE**; NJ high-wage ($5.00+) stores **−2.16 FTE** (p. 778–779). NJ overall change is therefore ≈ **+0.47 FTE** (arithmetic implication; Table 3's numeric cells are not in the PDF text layer, so I report the two figures the running text states explicitly).
- Regression-adjusted (Table 4): NJ dummy **2.33 (SE 1.19)** without controls, **2.30 (SE 1.20)** with chain/ownership controls. GAP specifications: **15.65 (6.08)**, **14.92 (6.21)**, **11.91 (7.39)**.
- Baseline levels: wave-1 FTE employment **23.3 in PA vs 20.4 in NJ**.

**Is "they did not find the employment reduction predicted by the simple competitive model" accurate?** YES — that is exactly the authors' own framing:
> "Contrary to the central prediction of the textbook model of the minimum wage ... we find no evidence that the rise in New Jersey's minimum wage reduced employment ... we find that the increase in the minimum wage increased employment." (Conclusions, Sec. IX)

**LOUD FLAG — do not describe the estimate as "zero" or "statistically insignificant."** The headline DiD is **positive and significant at conventional levels (t = 2.03)**, and the Table 4 NJ dummy has t ≈ 1.96. The paper's own abstract phrasing is the cautious "we find no indication that the rise in the minimum wage reduced employment" — a rejection of the *negative* prediction, not a finding of a null. The only place C&K report positive-but-insignificant results is when the dependent variable is the *proportional* change in employment: "uniformly positive in these models but insignificantly different from 0 at conventional levels" (p. 781). If the document says "the estimated effect was zero" or "not statistically significant," that is **CONTRADICTED** for the main specification.

---

## SOURCE 2 — Avelino, Biderman & Barone (2012), *Dados* 55(4):987–1013

### B3. Research question — **SUPPORTED**
Yes. The paper asks precisely whether a party electing a **mayor** causally increases that party's **subsequent vote share in the same municipality** in proportional legislative elections.

> "Do Brazil's political parties matter in elections? The article focuses on this problem by analyzing whether a mayor's election influences his party's electoral performance in the same city." (abstract)

"**Articulações intrapartidárias**" = **intra-party linkage/articulation across levels of government** — coordination between the *municipal* party directorate and the *state/national* party organization. It is the **interpretation** placed on the estimated effect, not the treatment. The logic: under the null of no intra-party articulation, an elected mayor would have no reason to systematically work for his party's deputy candidates two years later; so a nonzero causal effect is read as evidence that articulation exists. The framing is a **"reverse coattail" effect** (term borrowed from Ames 1994) — bottom-up vote transfer, from local executive to broader-district legislative candidates.

> "se encontrarmos evidências de causalidade entre a eleição de um prefeito e os votos nas eleições proporcionais do seu partido na eleição seguinte, interpretaremos esse resultado como evidência de que a articulação intrapartidária tem importância nas eleições brasileiras." (Introdução)

### B4. Elections linked — **SUPPORTED**
**2008 municipal elections → 2010 federal and state deputy elections.** Exactly as asked.
- Treatment (t = 2008): winning the **mayoral** (prefeito) race, single-round.
- Outcomes (t+2 = 2010): party vote share for **deputado federal** (Tabelas 1 and 2) and **deputado estadual** (Tabela 3).
- Also used as a control variable: 2008 vote share for **vereador** (city councilor).
> "Temos informações detalhadas tanto da eleição municipal de 2008 como da eleição estadual e nacional de 2010." (Base de dados)

### B5. Municipalities in the <1% window — **SUPPORTED: 266**
> "Nos **266 municípios** onde a eleição foi definida com menos de 1% de margem..." (p. 998)

Confirmed in the "Municípios" column of Tabela 1, Tabela 2, and Tabela 3: **266** for both <1% rows.

Full sample: text says **5.221** of 5,564 municipalities; **the tables report 5.211**. Intermediate windows: **<5% → 1.374**; **<3% → 823**.

⚠️ **Internal inconsistency in the source itself**: 5.221 (prose, p. 995) vs 5.211 (all three tables). Not a transcription error on my end — both figures appear in the published PDF. Either is defensible to cite, but they cannot both be right.

### B6. Federal deputy estimate in the <1% window — **SUPPORTED, with a rounding caveat**
**Tabela 1, row "Margem de vitória no município < 1%": OLS = 0,0365 → 3.65 percentage points**, significant at 1%.

The **prose rounds this to 3.7%**:
> "a votação subsequente para deputado federal de seu partido foram, em média, **3,7%** mais altas do que os votos para o candidato na segunda colocação."

⚠️ **If the document under review states "3.7 percentage points," it matches the paper's own prose and is fine.** If it cites the table coefficient, the exact figure is **0.0365 (3.65 pp)**. If it states any other number — in particular **3.4%**, which is the *different* specification (see B7) — that is **wrong**.

Full Tabela 1 (dependent variable: party vote share for federal deputy, 2010):

| Specification / sample restriction | OLS | Municípios |
|---|---|---|
| Full sample | 0,0553* | 5.211 |
| Full sample, controlling for vereador votes | 0,0314* | 5.211 |
| Margin < 5% | 0,0401* | 1.374 |
| Margin < 3% | 0,0428* | 823 |
| **Margin < 1%** | **0,0365\*** | **266** |
| **Margin < 1% + vereador votes control** | **0,0340\*** | **266** |

\* significant at 1%; \*\* at 5%; \*\*\* at 10%. Source: TSE. Standard errors robust, **clustered by municipality**.

### B7. Vereador-control specification — **SUPPORTED — there are TWO**
Yes. The 2008 vote share for **vereador** (city councilor) is the paper's control for underlying party strength in the municipality. Two rows use it in Tabela 1:
- **Full sample + vereador control: 0,0314 (3.14 pp)**, significant at 1%. The prose rounds this down to **"3%"** and calls it a ~20% relative increase over the ~15% baseline.
- **<1% margin window + vereador control: 0,0340 (3.40 pp)**, significant at 1%. Prose: "o impacto é reduzido apenas levemente para 3,4%."

⚠️ Note the direction: adding the vereador control in the tight window moves the estimate **down** from 3.65 to 3.40 — a small drop, which the authors read as evidence that narrowly-decided races pit very similar parties against each other.

### B8. Functional form — **SUPPORTED: fourth-degree (quartic) polynomial**
> "Na tabela reportamos apenas estimativas de uma **especificação polinomial de quarto grau**, mas os resultados são bastante resistentes à especificação funcional."

**Which orders appear:** only the **quartic** is reported in any table. Other polynomial orders were estimated as robustness checks but **no results for them are shown** — the authors assert only that "magnitude e significância não são afetadas por diferentes premissas da forma funcional." Footnote 26 and 28 confirm the pattern: unreported results "podem ser requisitados aos autores."

So: the quartic **is** the main and only reported specification. Anyone claiming the paper *reports* multiple polynomial orders is overstating it.

### B9. Other RDD design details — **SUPPORTED**
- **Running variable**: margin of victory in the 2008 mayoral race = *vote share of the winner minus vote share of the runner-up*. Treatment `d = 1` if the party won, `0` if it placed second.
- **Bandwidths**: **ad hoc, not data-driven**. Four samples: full, **<5%**, **<3%**, **<1%**. No mention of Imbens–Kalyanaraman, Calonico–Cattaneo–Titiunik, or any optimal-bandwidth or bias-correction procedure. No local-linear estimation; global polynomial on each subsample.
- **Yes, estimates are party vote shares.** Dependent variable = the party's *proportion* of votes in the municipality for federal (or state) deputy in 2010, aggregating **nominal + legenda (list) votes**. Coefficients are in proportion units, so 0,0365 = 3.65 percentage points.
- **Unit of observation**: party × municipality, with exactly **two parties per municipality** (first and second place in 2008).
- **Sample construction**: excludes municipalities with a **runoff** (i.e., >200,000 registered voters) and those with a single mayoral candidate → 5,221 (tables: 5,211) of 5,564.
- **Inference**: robust standard errors **clustered by municipality** (all three table notes).
- **Covariates**: essentially none. Footnote 20: "Apenas em algumas especificações utilizamos a proporção de votos para vereador do partido como uma covariável. **Nenhuma outra covariável foi utilizada** nas especificações apresentadas."
- **State deputy results (Tabela 3)**: full sample 0,0367\*; +vereador 0,0145\*; <5% 0,0213\*; <3% 0,0215\*; **<1% 0,0218\*\*\*** (only 10% significance); <1%+vereador 0,0198\*\*\*. Baseline ~14% vs ~15% for federal.
- **Robustness (Tabela 2, party heterogeneity, PMDB as omitted baseline)**: full 0,0548774\*; +vereador 0,0365019\*; <5% 0,0219211\*\*; <3% 0,0135927 (**n.s.**); **<1% 0,0142511 (n.s.)**; <1%+vereador 0,0181464 (**n.s.**). ⚠️ Worth knowing: once party fixed effects and party×treatment interactions are added, **the effect is no longer significant in the <3% and <1% windows.**
- **Diagnostics NOT present**: I found **no** McCrary density/manipulation test, **no** covariate balance table, **no** placebo cutoffs, and **no** RD plot in the published article. Only three tables and one equation.
- ⚠️ **One methodological statement worth flagging** (footnote 22): "a regressão descontínua não deve ser interpretada como o efeito apenas sobre a subpopulação próxima da descontinuidade, mas sim como o efeito sobre toda a população com pesos mais elevados para as observações próximas da descontinuidade." That is a non-standard (and contestable) characterization of the RDD estimand — it is not the local-LATE-at-the-cutoff interpretation. If the document attributes a conventional local-effect interpretation to these authors, note that they explicitly reject it.

---

### Summary of numbers a careless writer could get wrong (cluster B)

| Claim | Correct value | Locator |
|---|---|---|
| Municipalities, <1% window | **266** | Tabelas 1–3, "Municípios" col. |
| Federal deputy, <1% window | **0,0365 (3.65 pp)**; prose rounds to **3,7%** | Tabela 1, row 5 / p. 998 |
| Federal deputy, <1% + vereador control | **0,0340 (3.40 pp)** | Tabela 1, row 6 |
| Federal deputy, full sample + vereador control | **0,0314 (3.14 pp)**; prose says "3%" | Tabela 1, row 2 |
| Federal deputy, unconditional | **0,0553 (5.53 pp)**; prose says "5,5%" | Tabela 1, row 1 |
| Polynomial order | **fourth degree (quartic)**, the only one reported | p. 999 |
| Full sample N | **5.221** in prose, **5.211** in tables (source is internally inconsistent) | p. 995 vs Tabelas 1–3 |
| Card–Krueger DiD | **+2.76 FTE (+13%), t = 2.03** — positive and significant | p. 779, Table 3 col. iii |

Sources:
- [Card & Krueger 1994, AER 84(4):772–793 — full PDF](https://davidcard.berkeley.edu/papers/njmin-aer.pdf)
- [Avelino, Biderman & Barone 2012, *Dados* 55(4) — SciELO full text](https://www.scielo.br/j/dados/a/PchnVtTTNLJP7tFjDwpWPsP/?lang=pt)

---

# ANEXO III — Relatório integral do verificador, cluster C (difusão, Brasil, citações metodológicas)

## FACT-CHECK REPORT

## PART 1 — Local source: Galdino & Martins da Silva, "Depois do calcanhar metodológico"

Files read: `metodos_CP/paper/paper.Rmd`; `metodos_CP/output/tables/paper/denominator_summary.csv`, `statistical_inference_key_numbers.csv`, `table_2_methodological_dimensions.csv`, `table_3_causality_credibility.csv`, `table_5_claim_method_alignment.csv`, `table_1_corpus_description.csv`, `statistical_inference_torreblanca_benchmark.csv`; `verbete-causalidade/data/processed/abcp_explicit_causal_design_articles.csv`.

### C7 — Corpus size, years, journals, SciELO — **SUPPORTED**

**4,144** eligible articles, full text, **2005–2025**, **nine** journals, all **indexed in SciELO**. All 4,144 are classified (coverage 100%; `n_pendentes = 0`).

> "Classificamos o texto integral de `r format_n(n_manifest)` artigos publicados entre 2005 e 2025 em nove periódicos indexados no SciELO." (`paper.Rmd` line 417)

`denominator_summary.csv`: `Corpus completo elegível,4144`; `Periódicos com classificação completa,9`. Journal-level eligible totals in `table_1_corpus_description.csv` sum exactly to 4,144 (120+268+451+391+638+622+708+456+490). Journals: BPSR, Opinião Pública, RBCP, RSP, Dados, RBCS, Contexto Internacional, RBPI, CGPC. One exclusion documented: 19 *Tendências* units from Opinião Pública.

### C8 — Quantitative articles and formal uncertainty — **PARTIALLY SUPPORTED (denominator imprecision)**

- Articles with a quantitative component: **1,999** (58.6% of 3,414 empirical articles).
- Of these, **1,994** have an inference classification available; **5** do not.
- **743** formally quantify uncertainty = **37.3%**.

Arithmetic: 743/1994 = **37.262% → 37.3% ✓**.

**FLAG — loud.** The paper's own abstract says "Entre **1.994 artigos quantitativos**, 743 (37,3%)". That is imprecise: **1,999** is the number of quantitative articles. 1,994 is the *subset with inference classified*. The paper's own table note is correct where the abstract is not:

> "Testes, intervalos, erros-padrão ou inferência equivalente; 5 casos quantitativos sem classificação são excluídos do denominador." (`table_2_methodological_dimensions.csv`)

If 1,999 were used, the figure would be **37.2%**, not 37.3%. Any downstream text saying "of 1,994 quantitative articles" inherits the same slip; "of 1,994 quantitative articles *with inference classified*" is the accurate phrasing.

### C9 — Explicit causal identification strategy — **SUPPORTED**

**59** articles; **1.4%** of the corpus. 59/4144 = **1.424% → 1.4% ✓**.

`statistical_inference_key_numbers.csv`: `Estratégia causal explícita entre todos os artigos dos periódicos completos,59,4144,1.4`.

**CSV cross-check: the extract at `verbete-causalidade/data/processed/abcp_explicit_causal_design_articles.csv` contains exactly 59 data rows ✓** (one row per article, with `pid`, journal, year, method labels, and a supporting quote).

Note the same 59 articles are also reported as **4.2% of the 1,395 articles screened as identification-relevant** (59/1395 = 4.229% ✓). Method families (article–method pairs, articles may carry more than one): matching/weighting 23, DiD 12, survey experiment 10, RDD 8, IV 6, list experiment 3, DAG 3, doubly robust 2, field experiment 2, synthetic control 1, event study 1, lab experiment 1.

### C10 — Causal/explanatory language + quantitative, no explicit strategy — **SUPPORTED**

**1,885** articles = **45.5%**, denominator **4,144 (all classified articles = the whole corpus)**. 1885/4144 = **45.487% → 45.5% ✓**.

> "`r format_n(n_claim_quant_no_strategy)` artigos (`r format_pct(pct_claim_quant_no_strategy)` **do corpus**) combinam linguagem causal ou explicativa e análise quantitativa sem mencionar estratégia explícita de identificação." (`paper.Rmd` line 419)

`table_5_claim_method_alignment.csv` row: `1885, artigos classificados, 4144, 45.5`. The six mutually exclusive categories in that table sum to exactly 4,144 ✓.

### C10b — Denominators used, and sensitivity — **key flags**

| Figure | Numerator | Denominator the paper uses | Value |
|---|---|---|---|
| 37.3% | 743 | 1,994 — quantitative articles **with inference classified** (not 1,999 quantitative) | 37.262% |
| 1.4% | 59 | 4,144 — full eligible/classified corpus | 1.424% |
| 4.2% | 59 | 1,395 — articles screened as identification-relevant | 4.229% |
| 45.5% | 1,885 | 4,144 — full corpus | 45.487% |

Alternative denominators change these materially:
- **37.3% → 37.2%** if 1,999 (all quantitative) is used. Small, but the label "1,994 quantitative articles" is wrong as written.
- **1.4% vs 4.2%** — the *same 59 articles*. Quoting "1.4%" and "4.2%" without naming the base invites conflation. 1.4% is share of all articles; 4.2% is share of the identification-relevant screen.
- **45.5% → 55.2%** on empirical articles (3,414), **→ 49.6%** on articles with causal/explanatory claims (3,802), **→ 94.3%** on quantitative articles (1,999). The 45.5% figure is only correct against the full corpus.
- **Not comparable to Torreblanca.** The paper's own benchmark table (`statistical_inference_torreblanca_benchmark.csv`) records the Brazilian 37.3% denominator as "Artigos empíricos quantitativos com rótulo de inferência observado" versus Torreblanca's "Artigos empíricos quantitativos explicativos" — and the paper says so explicitly ("Embora os denominadores não sejam equivalentes"). Any rendering that drops that caveat misstates the source.

---

## PART 2 — Torreblanca, Dinneen, Grossman & Xu, "The Credibility Revolution in Political Science" (arXiv:2601.11542v2, 26 Feb 2026)

Verified against the arXiv abstract page and the full v2 PDF text.

### C1 — Scale — **SUPPORTED**

**91,632** articles, **2003–2023**, **156** political science journals.

> "We address this question by classifying 91,632 articles published between 2003 and 2023 across 156 political science journals using large language models" (Abstract)

Pipeline detail worth carrying: they began with **188** Clarivate-identified journals with SJR ≥ 1, removed 14 (3 not Scopus-indexed, 3 without peer review, 7 non-English, 1 book series) leaving **174**; Scopus yielded **129,751** articles 2003–2023; full text was retrieved for **91,632** from **156** journals. So "156 journals" is the full-text corpus, not the sampling frame. 2003–2023 is 21 calendar years; the paper calls it "the past two decades."

### C2 — Growth and citations — **SUPPORTED; explicitly an association, not a causal claim**

Growth: design-based methods rose **from 15% to 40%** of explanatory quantitative studies 2003→2023; model-based **declined from 57% to 39%**.

Citations: a **citation premium**, framed descriptively throughout.

> "Descriptively, we find that design-based studies receive more citations than model-based papers, and this gap has widened over time." (Introduction)

> "While informative, the regression estimates remain descriptive and **should not be interpreted as causal**." (citation section)

> "our analysis is descriptive, not prescriptive… We therefore interpret the patterns we document as a shift in the conventions by which political scientists justify identification and present causal claims in print, **not as evidence that published findings are now more likely to be correct**."

Any rendering that says design-based work *causes* more citations, or that the field's research is now *more credible*, contradicts the paper's own caveat.

### C3 — Concentration in prestige journals and institutions — **SUPPORTED**

> "it is concentrated in top journals and among authors at highly ranked institutions" (Abstract)

Top-20 journals 2019–2023 range from >55% (QJPS, PSRM) to <20% (JEPP, EUP). Institutions: ARWU-ranked; 77,123 author–institution pairs across 59,248 papers (65% of the full-text sample). Design-based share ≈50% at the very top, falling to ≈28% by rank 40, then flattening. The authors call these patterns "descriptive."

### C4 — Driven by survey experiments — **SUPPORTED**

> "it is driven primarily by the growth of survey experiments" (Abstract)

Survey experiments "accounted for **44%** of all design-based papers in 2023." Excluding them "almost completely flattens" the impact-factor-weighted increase. Journal-level: APSR 57%→51%, AJPS 47%→39%, JoP 45%→36% when survey experiments are excluded.

### C5 — Placebo tests and power calculations rare — **SUPPORTED**

> "Pre-analysis plans and power analyses appear in only **6%** and **16%** of experimental papers, respectively, and placebo tests are reported in just **22%** of design-based observational studies."

Discussion restates: "Placebo tests are used in only about one-fifth of design-based observational studies and are very rare elsewhere."

**Note the denominators differ** — power analyses: *experimental* papers; placebo tests: *design-based observational* studies. Do not merge them into a single "rare in design-based work" figure.

### C6 — Analytic units — **SUPPORTED, with one internal inconsistency in the source**

Sequential funnel (Figure 2, percentages against the 91,632 full sample):
- All studies **91,632** (100%)
- Qualitative/normative/formal **54,469** (59%) — excluded
- Empirical quantitative **37,163** (41%)
  - Descriptive **6,633** (7%), Predictive **240** (<1%), Explanatory **30,290** (33%)
- Within explanatory: Design-based **8,695** (9%), Model-based **20,570** (22%), Other **1,025** (1%)

Filtering rule: "**we restrict our coding of primary research design to papers classified as explanatory**." Research-design classification therefore never applies to the full 91,632.

**FLAG — internal inconsistency in Torreblanca et al.** The body text says "For the **30,296** explanatory empirical quantitative studies, which are the main focus of our analysis"; Figure 2 shows **30,290**. The figure is the internally consistent one: 6,633+240+30,290 = 37,163 ✓ and 20,570+8,695+1,025 = 30,290 ✓. The 30,296 in text does not reconcile. Cite ≈30,290 or "about 30,000"; do not present 30,296 as authoritative.

Also verified: the Brazilian paper's benchmark figures (APSR 56.8%, AJPS 47%, JoP 45.4%, weighted 48.4% over n=2,976) are consistent with Torreblanca's rounded in-text values (57 / 47 / 45).

---

## OTHER SOURCES

### C11 — Imbens (2010), "Better LATE Than Nothing" — **SUPPORTED on all three points**

*Locator caveat:* JEL 48(2):399–423 is paywalled. I verified against the full text of the NBER working-paper version (w14896, April 2009), retrieved from `econ.uiuc.edu`. Content matches the published abstract; page numbers below are the working paper's bracketed pages, not JEL pages.

**(a) Acknowledges the risk of avoiding important questions — yes, twice, including in his closing paragraph.**

> "It would be unfortunate if the current interest in credible causal inference, by insisting on sometimes unattainable standards of internal validity, leads researchers to avoid such questions." (p. [2], in the smoking/lung-cancer discussion)

> "Although it would be regrettable if this trend led researchers to avoid questions that cannot be answered through randomized or natural experiments, it is important not to lose track of the great strides made by this literature towards improving the credibility of empirical work." (conclusion, p. [26])

**(b) Defends internal validity + delimiting the relevant population — yes, it is the paper's thesis statement.**

> "this move towards shoring up the internal validity of estimates, and towards clarifying the description of the population these estimates are relevant for, has been important and beneficial in increasing the credibility of empirical work in economics." (Abstract)

**(c) "A credible local effect is preferable to a non-credible general effect" — a fair, nearly literal rendering.** Imbens writes:

> "The causal literature has emphasized internal validity over external validity, with the view that **a credible estimate of the average effect for a subpopulation is preferred to an estimate of the average for the overall population with little credibility**." (p. [4]–[5])

One nuance worth preserving: Imbens frames this as a second-best, not a preference for locality per se —

> "Reporting the local average treatment effect… is thus emphatically **not** motivated by a claim that the local average treatment effect is the sole or primary effect of interest. Rather, it is motivated by a sober assessment that estimates for other subpopulations do not have the same internal validity."

### C12/C13 — IV identifies the LATE among compliers; monotonicity rules out defiers — **SUPPORTED by Imbens (2010); NOT supported by Angrist & Pischke (2010) — flag any citation pairing them**

**Imbens (2010) states both, correctly.** On the draft-lottery example he lists the three assumptions — (1) exogeneity of the instrument, (2) exclusion restriction, (3) monotonicity:

> "The third assumption is what IA call monotonicity, which requires that any man who would serve if not draft eligible, would also serve if draft eligible."

> "These three assumptions are not sufficient to identify the average effect of serving in the military for the full population. However, we can identify the average effect on the subpopulation of what Angrist, Imbens and Rubin (1996) call compliers."

He also names the taxonomy (compliers / never-takers / always-takers) and notes Heckman & Urzua prefer the term "uniformity" for monotonicity. Both statements as posed are standard and correctly stated.

**FLAG — loud.** **Angrist & Pischke (2010), JEP 24(2):3–30, does not contain the words "complier", "defier", "monotonicity", or "local average treatment effect" anywhere.** I searched the complete text (IZA DP 4800, the identical working-paper text). The essay uses instrumental variables extensively (19 mentions) but never develops the LATE framework or its identifying assumptions. Its closest content is a general remark that "regression and two-stage least squares produce average effects even when the underlying relationship is heterogeneous and/or nonlinear," and a section on external validity noting that "empirical evidence on any given causal effect is always local." **If the document under check cites Angrist & Pischke (2010) as the source for LATE/compliers/monotonicity, that citation is wrong.** The correct anchors are Imbens (2010), or Angrist, Imbens & Rubin (1996), *JASA* 91:444–472 — which Imbens himself cites for exactly this.

### C14 — Lundberg, Johnson & Stewart (2021), "What Is Your Estimand?" — **SUPPORTED**

ASR 86(3):532–565. Verified against the authors' preprint of the ASR article (SocArXiv ba67n).

**Yes — defined as existing outside any statistical model.** Abstract:

> "The estimand is the target quantity—the purpose of the statistical analysis. … We advocate that authors state the central quantity of each analysis—the theoretical estimand—**in precise terms that exist outside of any statistical model**."

Body, closing the definitional section:

> "the theoretical estimand states the study aim in precise terms involving a unit-specific quantity aggregated over a target population. **The theoretical estimand exists outside of any statistical model** and liberates us to make complex research questions precise."

Precision point: their term is "**exists outside of any statistical model**." The paper distinguishes **theoretical estimand** (may involve unobservables/counterfactuals) from **empirical estimand** (observable only), and both are stated **separately from the estimation strategy** — a three-step framework: (1) set a theoretical estimand, (2) link to an empirical estimand under identification assumptions, (3) learn from data. A rendering that says "independently of the model *or estimation procedure*" is faithful; a rendering that collapses theoretical and empirical estimand into one "estimand" loses the paper's central distinction.

### C15 — Hünermund & Louw (2025), ORM 28(1):138–151 — **SUPPORTED; both options, not one**

Verified against the publisher's version (CC BY) via the CBS Research Portal. Citation confirmed exactly: *Organizational Research Methods*, **28(1), 138–151**, DOI 10.1177/10944281231219274.

**They recommend both, as alternatives.** Abstract:

> "coefficients of control variables should be **clearly marked as not having a causal interpretation or omitted from regression tables altogether**. Moreover, we advise against using control variable estimates for subsequent theory building and meta-analyses."

Body adds a third disposal option — relegation to an appendix:

> "we recommend authors to exercise caution when interpreting control variables and consider omitting estimated coefficients of control variables from regression tables, **or relegating them to an appendix**."

**Precision flag.** Stating only "they recommend omitting control coefficients" is incomplete: marking-as-non-causal is an equally endorsed alternative, and the reasoning is that even *valid* controls may be endogenous and so conflate multiple causal mechanisms. The paper does *not* claim controls are invalid or that including them biases the treatment coefficient.

### C16 — Angrist & Pischke (2010) on the credibility revolution as response to low credibility — **SUPPORTED**

*Locator caveat:* the AEA PDF returns 403; verified against the identical text in IZA DP 4800.

**(a) Response to low credibility — yes, explicitly.**

> "We sympathize with Leamer's (1983) view that much of the applied econometrics of the 1970s and early 1980s lacked credibility."

> "Empirical microeconomics has experienced a credibility revolution, with a consequent increase in policy relevance and scientific impact. Sensitivity analysis played a role in this, but as we see it, **the primary engine driving improvement has been a focus on the quality of empirical research designs**."

**(b) "Increasingly complex specifications did not resolve the fragility of the underlying comparisons" — faithful, and close to their own wording.**

> "magnetic tape jockeys managed to crunch more and more numbers in increasingly elaborate ways. For the most part, however, **increased computing power did not produce more credible estimates**."

> "the main problem with this literature is **not data mining, but rather the weak foundation for a causal interpretation of whatever specification authors might have favored**."

One refinement: A&P's target is not only complexity but the *misdirection* of the effort — contemporaries were "distracted by concerns related to functional form and generalized least squares" while the causal warrant for the comparison went unexamined. Their remedy is design, which "is in the spirit of Leamer's critique, but **did not feature in his remedy**." A rendering attributing the design-based remedy to Leamer would be wrong.

---

## Summary of flags, ordered by severity (cluster C)

1. **Angrist & Pischke (2010) cannot support the LATE/compliers/monotonicity/no-defiers claims** — those terms appear nowhere in the paper. Use Imbens (2010) or Angrist, Imbens & Rubin (1996).
2. **"1,994 quantitative articles" is mislabeled in the source paper's own abstract** — 1,999 are quantitative; 1,994 have inference classified. The 37.3% is correct only on the 1,994 base (37.2% on 1,999).
3. **Torreblanca et al. contains an internal inconsistency**: 30,296 (text) vs 30,290 (Figure 2). The figure reconciles; the text does not.
4. **59 articles = 1.4% *or* 4.2%** depending on base (4,144 corpus vs 1,395 screened). Never state either without its denominator.
5. **45.5% is corpus-based (÷4,144)** and swings to 55.2% / 49.6% / 94.3% on other plausible bases.
6. **Torreblanca's citation premium is descriptive by the authors' own insistence** — not a causal claim, and not evidence that findings are more likely correct.
7. **Hünermund & Louw recommend marking-as-non-causal *or* omitting (or appendicizing)** — not omission alone.
8. Torreblanca's "156 journals" is the full-text corpus (from 188 → 174 screened; 129,751 Scopus articles → 91,632 with full text).

**Sources:** [arXiv:2601.11542](https://arxiv.org/abs/2601.11542) · [Imbens 2010 (AEA record)](https://www.aeaweb.org/articles?id=10.1257/jel.48.2.399) · [Angrist & Pischke 2010 full text](https://docs.iza.org/dp4800.pdf) · [Lundberg, Johnson & Stewart 2021 preprint](https://osf.io/preprints/socarxiv/ba67n_v1) · [Hünermund & Louw 2025 publisher version](https://research-api.cbs.dk/ws/portalfiles/portal/100282378/hunermund_paul_et_al_on_the_nuisance_of_control_variables_in_causal_regression_analysis_publishersversion.pdf)

---

# ANEXO IV — Verificação independente do reconciliador

O achado C12/C13 foi reconferido diretamente, por mexer em citação. Texto
integral de Angrist e Pischke (2010) baixado de `docs.iza.org/dp4800.pdf`,
convertido com `pdftotext`, 14.612 palavras:

```
complier                     0
Complier                     0
defier                       0
monotonicity                 0
Monotonicity                 0
local average treatment      0
Local Average Treatment      0
LATE                         1
```

A única ocorrência de "LATE" está na linha 1252, na bibliografia:

> Imbens, Guido W. 2009. "Better LATE than Nothing: Some Comments on Deaton
> (2009) and Heckman and Urzua (2009)"

Confirmado: o artigo não sustenta o claim.
