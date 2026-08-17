# =============================================================================
# Valida estrutura, metadados, citações processadas e limite de palavras
# =============================================================================

run_manuscript_validation <- function() {
  original_ctype <- Sys.getlocale("LC_CTYPE")
  selected_ctype <- suppressWarnings(Sys.setlocale("LC_CTYPE", "en_US.UTF-8"))
  if (!nzchar(selected_ctype)) {
    stop("Não foi possível ativar uma localidade UTF-8 para validar o manuscrito.")
  }
  on.exit(suppressWarnings(Sys.setlocale("LC_CTYPE", original_ctype)), add = TRUE)

  manuscript_path <- "paper/verbete-causalidade.Rmd"
  bibliography_path <- "references.bib"
  denominator_summary_path <-
    "data/processed/abcp_quantitative_explanatory_identification_summary.csv"
  plain_text_path <- "output/verbete-causalidade.txt"
  ast_path <- "output/verbete-causalidade-pandoc.json"
  bibliography_json_path <- "output/references-csl.json"
  report_path <- "quality_reports/manuscript_validation.md"

  if (!file.exists(manuscript_path)) {
    stop("Manuscrito não encontrado: ", manuscript_path)
  }
  if (!file.exists(bibliography_path)) {
    stop("Bibliografia não encontrada: ", bibliography_path)
  }
  if (!file.exists(denominator_summary_path)) {
    stop(
      "Resumo de denominadores não encontrado: ", denominator_summary_path,
      ". Execute code/03_recalculate_quantitative_explanatory_denominators.R."
    )
  }
  if (!requireNamespace("stringi", quietly = TRUE)) {
    stop("O pacote 'stringi' é necessário para contagem Unicode de palavras.")
  }
  if (!requireNamespace("jsonlite", quietly = TRUE)) {
    stop("O pacote 'jsonlite' é necessário para inspecionar a AST do Pandoc.")
  }
  if (!requireNamespace("yaml", quietly = TRUE)) {
    stop("O pacote 'yaml' é necessário para validar os metadados do manuscrito.")
  }

  pandoc_path <- Sys.which("pandoc")
  if (!nzchar(pandoc_path)) {
    stop("Pandoc é necessário para validar o manuscrito.")
  }

  dir.create(dirname(plain_text_path), recursive = TRUE, showWarnings = FALSE)
  dir.create(dirname(report_path), recursive = TRUE, showWarnings = FALSE)

  project_root <- normalizePath(".", winslash = "/", mustWork = TRUE)
  manuscript_absolute_path <- normalizePath(manuscript_path, winslash = "/", mustWork = TRUE)
  bibliography_absolute_path <- normalizePath(bibliography_path, winslash = "/", mustWork = TRUE)
  plain_text_absolute_path <- file.path(project_root, plain_text_path)
  ast_absolute_path <- file.path(project_root, ast_path)
  bibliography_json_absolute_path <- file.path(project_root, bibliography_json_path)

  original_working_directory <- getwd()
  on.exit(setwd(original_working_directory), add = TRUE)
  setwd(dirname(manuscript_absolute_path))

  pandoc_plain_status <- system2(
    command = pandoc_path,
    args = c(
      shQuote(basename(manuscript_absolute_path)),
      "--from=markdown",
      "--citeproc",
      "--fail-if-warnings",
      "--to=plain",
      paste0("--output=", shQuote(plain_text_absolute_path))
    )
  )
  if (!identical(pandoc_plain_status, 0L)) {
    stop("Pandoc/citeproc falhou; status: ", pandoc_plain_status)
  }

  pandoc_ast_status <- system2(
    command = pandoc_path,
    args = c(
      shQuote(basename(manuscript_absolute_path)),
      "--from=markdown",
      "--to=json",
      paste0("--output=", shQuote(ast_absolute_path))
    )
  )
  if (!identical(pandoc_ast_status, 0L)) {
    stop("Pandoc falhou ao produzir a AST; status: ", pandoc_ast_status)
  }

  setwd(project_root)
  pandoc_bib_status <- system2(
    command = pandoc_path,
    args = c(
      shQuote(bibliography_absolute_path),
      "--from=biblatex",
      "--to=csljson",
      paste0("--output=", shQuote(bibliography_json_absolute_path))
    )
  )
  if (!identical(pandoc_bib_status, 0L)) {
    stop("Pandoc falhou ao converter a bibliografia; status: ", pandoc_bib_status)
  }

  manuscript_lines <- readLines(manuscript_path, encoding = "UTF-8", warn = FALSE)
  manuscript_text <- paste(manuscript_lines, collapse = "\n")
  denominator_summary <- utils::read.csv(
    denominator_summary_path,
    check.names = FALSE,
    stringsAsFactors = FALSE,
    encoding = "UTF-8"
  )
  expected_denominator_metric_ids <- c(
    "quantitative_inference_observed",
    "with_statistical_inference",
    "without_statistical_inference",
    "quantitative_explanatory",
    "with_explicit_identification",
    "without_explicit_identification"
  )
  missing_denominator_metric_ids <- setdiff(
    expected_denominator_metric_ids,
    denominator_summary$metric_id
  )
  expected_numeric_claims <- c(
    "1.999 artigos quantitativos",
    "1.994 têm informação disponível sobre inferência estatística",
    "743 deles, ou 37%",
    "1.944, ou 97,2%",
    "59, ou 3,0%",
    "1.885, ou 97,0%"
  )
  missing_numeric_claims <- expected_numeric_claims[
    !stringi::stri_detect_fixed(manuscript_text, expected_numeric_claims)
  ]
  plain_text <- paste(
    readLines(plain_text_path, encoding = "UTF-8", warn = FALSE),
    collapse = "\n"
  )
  word_count <- as.integer(stringi::stri_count_words(plain_text))

  sumario_line <- which(
    stringi::stri_trans_nfc(trimws(manuscript_lines)) == "# Sumário"
  )[1L]
  preamble_chunk_end_lines <- which(
    seq_along(manuscript_lines) < sumario_line & trimws(manuscript_lines) == "```"
  )
  if (is.na(sumario_line) || length(preamble_chunk_end_lines) == 0L) {
    stop("Não foi possível extrair o preâmbulo do manuscrito.")
  }
  preamble_start <- max(preamble_chunk_end_lines) + 1L
  preamble_text <- paste(
    manuscript_lines[preamble_start:(sumario_line - 1L)],
    collapse = "\n"
  )
  preamble_word_count <- as.integer(stringi::stri_count_words(preamble_text))

  pandoc_ast <- jsonlite::fromJSON(ast_path, simplifyVector = FALSE)
  collect_citation_ids <- function(node) {
    if (!is.list(node)) {
      return(character())
    }
    own_ids <- character()
    if (identical(node$t, "Cite") && length(node$c) >= 1L) {
      own_ids <- vapply(
        node$c[[1]],
        function(citation) citation$citationId,
        character(1)
      )
    }
    unique(c(own_ids, unlist(lapply(node, collect_citation_ids), use.names = FALSE)))
  }
  citation_keys <- sort(unique(collect_citation_ids(pandoc_ast)))

  bibliography_entries <- jsonlite::fromJSON(
    bibliography_json_path, simplifyVector = FALSE
  )
  bib_keys <- vapply(bibliography_entries, function(entry) entry$id, character(1))
  missing_keys <- setdiff(citation_keys, bib_keys)

  cited_entries <- bibliography_entries[bib_keys %in% citation_keys]
  has_people <- function(entry) {
    (length(entry$author) > 0L) || (length(entry$editor) > 0L)
  }
  has_issued_date <- function(entry) {
    !is.null(entry$issued) && length(entry$issued[["date-parts"]]) > 0L
  }
  has_minimum_metadata <- function(entry) {
    has_title <- !is.null(entry$title) && nzchar(entry$title)
    has_container <- !identical(entry$type, "article-journal") ||
      (!is.null(entry[["container-title"]]) && nzchar(entry[["container-title"]]))
    has_title && has_people(entry) && has_issued_date(entry) && has_container
  }
  invalid_metadata_keys <- vapply(
    cited_entries,
    function(entry) if (has_minimum_metadata(entry)) NA_character_ else entry$id,
    character(1)
  )
  invalid_metadata_keys <- stats::na.omit(invalid_metadata_keys)

  yaml_end <- which(trimws(manuscript_lines[-1L]) == "---")[1L] + 1L
  manuscript_metadata <- yaml::yaml.load(
    paste(manuscript_lines[2L:(yaml_end - 1L)], collapse = "\n")
  )
  required_metadata <- c("title", "author", "output", "bibliography", "lang")
  missing_metadata <- required_metadata[
    !vapply(
      required_metadata,
      function(field) !is.null(manuscript_metadata[[field]]) &&
        length(manuscript_metadata[[field]]) > 0L,
      logical(1)
    )
  ]

  required_headings <- c(
    "# Sumário",
    "# 1. Histórico e fundamentos epistemológicos",
    "# 2. Lógica de aplicação e decisões de desenho",
    "# 3. Vantagens, limites e vieses conhecidos",
    "# 4. Exemplos de aplicação em ciências sociais",
    "# 5. Debates contemporâneos, escopo e Brasil",
    "# 6. Referências e leituras adicionais",
    "# 7. Ver também",
    "# 8. Como citar este verbete"
  )
  Encoding(required_headings) <- "UTF-8"
  required_headings <- stringi::stri_trans_nfc(trimws(required_headings))
  manuscript_headings <- stringi::stri_trans_nfc(trimws(
    manuscript_lines[stringi::stri_detect_regex(manuscript_lines, "^#{1,6}\\s+")]
  ))
  missing_headings <- setdiff(required_headings, manuscript_headings)

  code_marker_lines <- which(stringi::stri_detect_regex(
    manuscript_lines, "\\b(TODO|FIXME|XXX|TBD)\\b"
  ))
  editorial_phrase_pattern <- paste0(
    "\\[(Alvo:|Selecionar |Sugerir |Não preencher)|",
    "^```\\{r[^}]*(demo|example|exemplo|placeholder|rascunho)"
  )
  Encoding(editorial_phrase_pattern) <- "UTF-8"
  editorial_phrase_lines <- which(stringi::stri_detect_regex(
    manuscript_lines, editorial_phrase_pattern, case_insensitive = TRUE
  ))

  has_editorial_brackets <- function(line) {
    matches <- regmatches(line, gregexpr("\\[[^][]+\\]", line, perl = TRUE))[[1L]]
    if (identical(matches, character(0)) || identical(matches, "")) {
      return(FALSE)
    }
    starts <- gregexpr("\\[[^][]+\\]", line, perl = TRUE)[[1L]]
    match_lengths <- attr(starts, "match.length")
    vapply(seq_along(matches), function(index) {
      token <- matches[index]
      previous_position <- starts[index] - 1L
      previous_character <- if (previous_position >= 1L) {
        substr(line, previous_position, previous_position)
      } else {
        ""
      }
      next_position <- starts[index] + match_lengths[index]
      next_character <- if (next_position <= nchar(line)) {
        substr(line, next_position, next_position)
      } else {
        ""
      }
      !startsWith(token, "[@") &&
        previous_character != "^" &&
        next_character != "("
    }, logical(1)) |>
      any()
  }
  bracket_marker_lines <- which(vapply(
    manuscript_lines, has_editorial_brackets, logical(1)
  ))
  placeholder_line_numbers <- sort(unique(c(
    code_marker_lines, editorial_phrase_lines, bracket_marker_lines
  )))
  placeholder_hits <- if (length(placeholder_line_numbers) == 0L) {
    character()
  } else {
    paste0(placeholder_line_numbers, ": ", trimws(manuscript_lines[placeholder_line_numbers]))
  }

  unresolved_citation_tokens <- stringi::stri_detect_regex(
    plain_text, "\\[@[A-Za-z0-9_:-]+"
  )

  checks <- c(
    pandoc_citeproc = identical(pandoc_plain_status, 0L),
    citations_from_pandoc_ast = length(citation_keys) > 0L,
    citations_resolve = length(missing_keys) == 0L && !unresolved_citation_tokens,
    cited_metadata_complete = length(invalid_metadata_keys) == 0L,
    manuscript_metadata_complete = length(missing_metadata) == 0L,
    reference_count = length(citation_keys) >= 6L && length(citation_keys) <= 12L,
    denominator_metrics_complete = length(missing_denominator_metric_ids) == 0L,
    denominator_claims_consistent = length(missing_numeric_claims) == 0L,
    word_limit = word_count <= 5000L,
    preamble_word_range = preamble_word_count >= 150L && preamble_word_count <= 200L,
    required_headings_exact = length(missing_headings) == 0L,
    no_placeholders = length(placeholder_hits) == 0L
  )

  format_values <- function(values) {
    if (length(values) == 0L) "nenhum" else paste(values, collapse = ", ")
  }

  report_lines <- c(
    "# Validação do manuscrito",
    "",
    paste0("- Data: ", format(Sys.time(), "%Y-%m-%d %H:%M:%S %Z")),
    paste0("- Palavras no texto processado, incluindo referências: **", word_count, "**"),
    paste0("- Palavras no preâmbulo: **", preamble_word_count, "**"),
    paste0("- Referências citadas na AST do Pandoc: **", length(citation_keys), "**"),
    paste0("- Chaves citadas: ", format_values(citation_keys)),
    paste0("- Chaves ausentes na bibliografia: ", format_values(missing_keys)),
    paste0("- Metadados bibliográficos incompletos: ", format_values(invalid_metadata_keys)),
    paste0("- Metadados YAML ausentes: ", format_values(missing_metadata)),
    paste0(
      "- Métricas de denominador ausentes: ",
      format_values(missing_denominator_metric_ids)
    ),
    paste0(
      "- Marcadores numéricos de denominador ausentes no manuscrito: ",
      format_values(missing_numeric_claims)
    ),
    paste0("- Seções obrigatórias ausentes ou inexatas: ", format_values(missing_headings)),
    paste0(
      "- Marcadores editoriais remanescentes: ",
      if (length(placeholder_hits) == 0L) "nenhum" else paste(placeholder_hits, collapse = " | ")
    ),
    "",
    "## Checks",
    "",
    paste0("- ", names(checks), ": ", ifelse(checks, "PASS", "FAIL")),
    "",
    paste0("**Resultado geral: ", if (all(checks)) "PASS" else "FAIL", "**")
  )

  writeLines(report_lines, report_path, useBytes = TRUE)
  cat(paste(report_lines, collapse = "\n"), "\n")

  if (!all(checks)) {
    stop("Validação do manuscrito falhou. Consulte ", report_path)
  }

  invisible(checks)
}

run_manuscript_validation()
