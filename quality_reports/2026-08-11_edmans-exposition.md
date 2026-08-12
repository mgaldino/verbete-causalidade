# Parecer de Exposition (Framework Edmans)

**Data**: 2026-08-11
**Documento**: `paper/verbete-causalidade.Rmd`
**Escopo**: dimensão Exposition isolada. Contribution e Execution foram
avaliadas em 2026-08-03 (8/10 cada, R&R minor) e suas recomendações foram
implementadas. Este parecer concentra-se nas passagens incorporadas em
2026-08-05, posteriores àquele parecer e nunca submetidas a avaliação
estruturada: a abertura histórica da seção 1 e o trecho Imbens / "redução de
ambição" na seção 5.

**Nota de gênero**: o framework Edmans é calibrado para artigo de periódico.
Três critérios foram reinterpretados para verbete enciclopédico, e a
reinterpretação está declarada em cada caso. Um critério foi descartado por
não transferir.

## Score: 8/10

---

## Avaliação por dimensão

### Clareza [Boa]

#### Qualidade da escrita

O texto é limpo. Não há typos, a formatação é consistente, o sumário
corresponde exatamente aos títulos das seções, e as oito seções exigidas pela
EBCS estão presentes na ordem prescrita. O bloco "Como citar este verbete"
aparece sem conteúdo, o que está correto: as diretrizes determinam que a
plataforma o gere.

**Um erro gramatical, na passagem não revisada** (seção 5):

> "Tampouco está demonstrado que a agenda tenha se tornado menos relevante ou
> ambiciosa; demonstrá-lo exigiria **medi-las** antes e depois da mudança
> metodológica, o que o debate citado não faz."

O clítico `-las` é feminino plural e não tem antecedente. Os únicos candidatos
no período são "relevante" e "ambiciosa", que são adjetivos modificando "a
agenda" (feminino **singular**). O autor quis dizer "relevância e ambição",
mas escreveu os adjetivos. Correção: `exigiria medir relevância e ambição
antes e depois`.

**Uma ambiguidade referencial, na mesma passagem:**

> "O risco é real. Imbens o reconhece em *Better LATE Than Nothing*, mas
> defende que validade interna e delimitação da população elevaram a
> credibilidade da pesquisa: um efeito local crível é preferível a um efeito
> geral pouco crível. **Não é, porém, defeito necessário da revolução**, mas
> resposta evitável da comunidade científica à elevação da barra."

O sujeito de "Não é" está elidido e o leitor precisa saltar por cima de uma
frase inteira sobre Imbens para recuperá-lo. O referente pretendido é o
estreitamento das perguntas, não o argumento de Imbens nem a preferência pelo
efeito local — mas a leitura mais próxima é a errada. `historical_revision_
2026-08-05.md` confirma a intenção: "Esse estreitamento é caracterizado como
resposta evitável da comunidade científica".

Correção: nomear o sujeito — `Esse estreitamento não é defeito necessário da
revolução; é resposta evitável da comunidade científica à elevação da barra.`

#### Significância substantiva

**Critério reinterpretado.** Exigir "números memoráveis no abstract" de um
verbete seria erro de gênero: a EBCS destina o preâmbulo a delimitar o
conceito, justificar sua relevância e anunciar a arquitetura, não a reportar
achados. O preâmbulo não deve virar abstract de resultados.

Feita a ressalva, o verbete cumpre bem o espírito do critério onde ele
transfere. Os números da seção 5 são precisos, memoráveis e citáveis — 1,4%,
37,3%, 45,5%, 4.144 artigos, 91.632 artigos — e cada um vem com o denominador
nomeado no próprio período ("em todo o corpus", "do corpus"). Essa disciplina
é rara e é o que separa um número citável de um número perigoso.

O verbete também distingue explicitamente significância estatística de
credibilidade causal, no parágrafo da seção 2 que separa identificação de
inferência: "Erros-padrão pequenos não corrigem confundimento; intervalos de
confiança estreitos podem cercar uma quantidade enviesada." É a formulação
mais forte do texto e faz exatamente o trabalho que Edmans pede.

O preâmbulo anuncia o contraste Brasil/fronteira internacional na última
frase, que é o movimento certo: sinaliza a contribuição distintiva sem
antecipar números.

#### Precisão da linguagem

A linguagem é precisa nos pontos em que precisa ser, e o texto define seus
termos quando eles poderiam ser lidos de modo mais amplo. O melhor exemplo:

> "Neste verbete, 'fronteira internacional' designa os segmentos editoriais e
> institucionais influentes cobertos pelo estudo, não a disciplina inteira."

Isso é precisão exemplar e deve ser preservado.

**O problema sistemático de precisão não é vagueza — é andaime retórico.**

A construção "não é X, mas Y" aparece **sete vezes** no texto. Pela regra do
próprio autor (CLAUDE.md global), essa construção tipicamente adiciona
palavras sem precisão e sugere uma falsa controvérsia que o autor estaria
resolvendo. O teste prescrito é reescrever como afirmação direta e verificar
se a versão direta soa vazia.

Aplicando o teste, as sete ocorrências se separam em dois grupos.

**Três são pedagogicamente carregadas — preservar:**

| Linha | Trecho | Por que fica |
|---|---|---|
| 49 | "Os resultados potenciais não dizem se a pessoa fumou, mas o que lhe aconteceria sob cada uma das duas exposições possíveis." | Corrige um erro de leitura específico e muito comum da notação. O contraste é o conteúdo. |
| 63 | "Elas não são propriedades automáticas de regressões...; são afirmações sobre o processo que gerou os dados" | Mesma função: desfaz a confusão entre nome do desenho e validade da suposição. |
| 67 | "O avanço não aboliu modelos; reposicionou-os..." | A concessão bloqueia a leitura de que a revolução dispensa modelagem. |

**Quatro são andaime puro — a versão direta é mais forte e mais curta:**

| Linha | Atual | Direto | Economia |
|---|---|---|---:|
| 30 (preâmbulo) | "Sua contribuição não foi reduzir toda causalidade a uma técnica, mas mudar o ônus da prova" | "Sua contribuição foi mudar o ônus da prova" | 8 palavras |
| 91 | "A resposta não é abandonar a inferência causal, mas delimitar o que o estimando representa." | "A resposta é delimitar o que o estimando representa." | 5 palavras |
| 99 | "O estudo tornou-se paradigmático não por encerrar o debate sobre salário mínimo, mas por deslocá-lo para a qualidade da comparação." | "O estudo tornou-se paradigmático por deslocar o debate sobre salário mínimo para a qualidade da comparação." | 4 palavras |
| 107 | "Seu legado não é uma hierarquia simples de métodos, mas a expectativa de que a comparação empírica seja defendida antes da estimação." | "Seu legado é a expectativa de que a comparação empírica seja defendida antes da estimação." | 7 palavras |

Nenhuma das quatro versões diretas soa vazia — todas são afirmações
substantivas. A construção contrastiva estava dando peso retórico a frases que
já se sustentavam sozinhas.

**Total economizado: 24 palavras.** O manuscrito está 17 acima do teto. A
correção de prosa e o corte editorial são, portanto, a mesma edição — e o
texto sai mais forte do corte, não mais fraco.

A ocorrência da linha 30 é a mais consequente das quatro: está no preâmbulo,
que o readability-audit identificou como o trecho mais denso do documento
(22,1 palavras por frase, 11,1% de nominalização, ambos os máximos do corpo)
e que é o único que muitos leitores lerão inteiro.

**Uma imprecisão menor** (seção 5): "A leitura conjunta pode ser apenas
substantiva." O sentido pretendido — comparação substantiva e não métrica — é
recuperável do parágrafo, mas exige releitura. `A leitura conjunta admite
comparação substantiva, não métrica` resolve sem custo de palavras.

---

### Extensão [Adequado, com um excesso identificado]

#### Preâmbulo

**Critério reinterpretado**: o teto Edmans de 6 páginas de introdução não se
aplica; a EBCS impõe 150 a 200 palavras. O preâmbulo tem exatamente **200**,
isto é, está no teto e só admite corte.

Conteúdo essencial presente: delimita o conceito, enuncia o problema
fundamental da inferência causal, declara o recorte contrafactual, nomeia
explicitamente o que fica de fora (mecanismos, *process tracing*, QCA) e
anuncia a arquitetura das cinco seções. Não falta nada exigido.

O único problema é de densidade, não de conteúdo — tratado acima.

#### Notas de rodapé

**Uma única nota em todo o verbete**, glosando a notação $E(\cdot)$ para o
leitor não técnico. Muito abaixo do guia de uma por página.

A nota está corretamente classificada como periférica: é auxílio de leitura,
não conteúdo argumentativo. Promovê-la ao corpo interromperia o parágrafo mais
denso do texto para explicar um símbolo. Manter como está. Nada a fazer.

#### Extensões desnecessárias

Duas passagens não passam no teste "valor > custo de leitura" com folga, ambas
na abertura histórica não revisada.

**1. O contrafactual sobre a história da ciência** (seção 1, ~50 palavras):

> "Essa linguagem teria permitido formular com maior precisão a controvérsia
> sobre tabagismo e câncer: que alguns fumantes jamais desenvolvessem a doença
> não invalidaria que fumar elevasse causalmente o risco na população. É
> plausível, portanto, que sua disponibilidade tivesse acelerado a
> convergência científica, embora não substituísse a evidência acumulada nem
> resolvesse por si só os problemas de identificação."

Há uma elegância real aqui: o verbete aplica reflexivamente o raciocínio
contrafactual à própria história da inferência causal. Mas o custo é alto —
três camadas de hedge empilhadas ("teria permitido", "é plausível", "tivesse
acelerado", "embora não substituísse... nem resolvesse") para sustentar uma
especulação que o texto reconhece não poder verificar. Em um verbete no teto
de palavras, é o trecho com pior razão valor-por-palavra.

**Recomendação condicional**: se o corte das quatro construções contrastivas
resolver o teto, manter — a reflexividade é um bom momento do texto. Se for
preciso mais folga, é o primeiro candidato.

**2. O apositivo de Hill** (seção 1): "o estatístico e professor emérito de
estatística médica Austin Bradford Hill". Ambos os descritores foram
verificados e estão corretos, mas "professor emérito de estatística médica"
acrescenta pouco para o leitor brasileiro de ciências sociais e custa 5
palavras. `o estatístico Austin Bradford Hill` preserva o que importa: que a
sistematização veio da estatística, não da clínica.

**Sobre a abertura aristotélica**, que examinei e decidi **não** recomendar
cortar: "Causalidade tem uma longa história, que remonta pelo menos a
Aristóteles" é uma frase que não se desdobra em nada depois, e pelo critério
Edmans estrito seria menção de fato institucional sem função argumentativa.
Mas a EBCS pede explicitamente "histórico e fundamentos epistemológicos", e um
verbete sobre causalidade que começasse em 1965 pareceria amputado. A frase
compra ancoragem histórica barata. Manter.

---

### Citações [Precisas e relevantes]

#### Extensão da bibliografia

Doze referências, exatamente no teto da EBCS (6 a 12), para 5.000 palavras.
Proporção adequada e deliberadamente seletiva.

A seção 6 organiza as doze por subtema com função analítica declarada para
cada uma — "Textos fundadores", "Desenho e estimandos", "Aplicações
observacionais", "Controles, fronteira e Brasil". É precisamente o que a EBCS
pede e o oposto do acúmulo por autoridade simbólica.

**Todas as doze são efetivamente carregadas.** Não encontrei nenhuma citação
decorativa, nenhuma literatura inteira invocada sem uso, nenhum paper citado
por conjectura como se fosse achado.

#### Problemas específicos de citação

**Nenhum remanescente.** O verify-claims desta mesma data encontrou e corrigiu
os dois que havia:

1. `[@hill1965]` cobria uma afirmação ausente de Hill (a inaceitabilidade de
   aleatorizar pessoas ao tabagismo). Citação movida para a oração que Hill
   sustenta.
2. `[@angristpischke2010]` era citado para LATE, *compliers* e monotonicidade
   — termos que não ocorrem uma única vez naquele artigo. Chave removida.

O segundo era exatamente o padrão que Edmans descreve como citação de fato
institucional: Angrist e Pischke são o nome que se associa por reflexo à
econometria baseada em desenho, e a citação foi por associação, não por
conteúdo. As três citações restantes a eles (linhas 67, 107 e 129) foram
verificadas e sustentam o que lhes é atribuído.

**Ponto de exposição sobre autocitação** — não é defeito, mas merece registro
consciente. `galdinomartins2026` é do próprio autor e carrega sozinho quatro
números da seção 5, que é a contribuição mais distintiva do verbete. Não é
autocitação sistemática: é uma referência entre doze. A entrada bibliográfica
declara honestamente tratar-se de paper apresentado à ABCP, então o leitor
consegue avaliar o estatuto da fonte.

O risco é editorial, não ético: um verbete de enciclopédia é documento
durável, e quatro números seus dependem de um paper de congresso ainda não
publicado. Se as classificações mudarem na versão final, o verbete fica
descolado da fonte. Vale decidir conscientemente se o texto deve sinalizar
esse estatuto provisório — e observar que o próprio verbete já faz parte desse
trabalho ao dizer que "as classificações automatizadas ainda requerem
validação humana".

#### Critério descartado

"Citações estratégicas para inflar importância" não transfere para este
gênero. Um verbete não disputa espaço em periódico e não tem incentivo a
inflar relevância por associação. Não avaliei sob esse critério.

---

## Veredicto geral sobre exposition

A exposição ajuda a contribuição, e o faz por escolhas de arquitetura que já
estão certas: a sequência pergunta → estimando → estrutura causal → desenho →
identificação → estimador → inferência dá ao leitor um fio condutor
recuperável; o texto define seus próprios termos onde poderiam ser lidos de
modo mais largo; os números vêm com denominadores nomeados; e a seção de
exemplos é deliberadamente a mais legível do documento, o que dá alívio ao
leitor exatamente depois da seção mais técnica.

Os problemas remanescentes são localizados e, com uma exceção, superficiais.
A exceção é a passagem de 2026-08-05 na seção 5, que carrega um erro de
concordância e uma ambiguidade referencial — consistente com o fato de ter
sido a única parte substantiva do texto a nunca passar por parecer
estruturado. Ambos se corrigem em uma frase cada.

O achado com maior alavancagem é a construção "não é X, mas Y", que aparece
sete vezes. Três fazem trabalho pedagógico real e devem ficar. As outras
quatro são andaime: a afirmação direta é mais forte, e devolve 24 palavras —
mais do que as 17 que faltam para o teto. É incomum que o corte editorial
obrigatório e a melhoria de prosa coincidam tão exatamente; aqui coincidem.

Mantenho 8/10, o mesmo da rodada de 03/08. Não é estagnação: o texto ganhou
material histórico substantivo desde então e conservou o nível, absorvendo
conteúdo novo sem degradar. As correções abaixo levam a exposição a 9 sem
mexer na arquitetura.

---

## Top 5 sugestões de melhoria

1. **Converter as quatro construções contrastivas de andaime em afirmação
   direta** (linhas 30, 91, 99, 107). Resolve simultaneamente a prosa e as 17
   palavras acima do teto, com 7 de folga. Começar pela linha 30, no preâmbulo,
   que é o trecho mais denso e mais lido do verbete.

2. **Corrigir `medi-las`** (seção 5) para `medir relevância e ambição`. O
   clítico não tem antecedente gramatical.

3. **Nomear o sujeito elidido** em "Não é, porém, defeito necessário da
   revolução" → `Esse estreitamento não é defeito necessário da revolução; é
   resposta evitável...`. Hoje a leitura mais próxima atribui a negação ao
   argumento de Imbens, que é o oposto do pretendido.

4. **Enxugar o apositivo de Hill** para `o estatístico Austin Bradford Hill`.
   Preserva o que importa — origem estatística, não clínica — por 5 palavras
   a menos.

5. **Decidir conscientemente sobre o contrafactual histórico-científico** da
   seção 1. Manter se o teto de palavras já estiver resolvido, porque a
   reflexividade é um bom momento do texto; cortar se precisar de folga, por
   ser o pior valor-por-palavra do verbete.
