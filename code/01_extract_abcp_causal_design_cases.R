# =============================================================================
# Extrai artigos com estratégia explícita de identificação causal — ABCP 2026
# =============================================================================
# Fonte: artefatos canônicos do paper de Galdino e Martins da Silva.
# Saídas: tabela deduplicada e registro de proveniência dos arquivos-fonte.
# Execute a partir da raiz do repositório. Para outra organização de pastas,
# defina METODOS_CP_ROOT com o caminho do repositório metodos_CP.
# =============================================================================

suppressPackageStartupMessages({
  library(dplyr)
  library(readr)
  library(stringr)
  library(tidyr)
})

metodos_cp_root <- Sys.getenv("METODOS_CP_ROOT", unset = "../metodos_CP")
if (!dir.exists(metodos_cp_root)) {
  stop(
    "Repositório metodos_CP não encontrado em '", metodos_cp_root, "'. ",
    "Defina METODOS_CP_ROOT com o caminho correto e execute novamente."
  )
}
metodos_cp_root <- normalizePath(metodos_cp_root, winslash = "/", mustWork = TRUE)

method_source_path <- file.path(
  metodos_cp_root,
  "data/processed/paper_analysis/paper_method_long_current.csv"
)
article_source_path <- file.path(
  metodos_cp_root,
  "data/processed/paper_analysis/paper_analysis_dataset_current.csv"
)
output_path <- "data/processed/abcp_explicit_causal_design_articles.csv"
provenance_path <- "data/processed/abcp_explicit_causal_design_articles_provenance.csv"

missing_sources <- c(method_source_path, article_source_path)[
  !file.exists(c(method_source_path, article_source_path))
]
if (length(missing_sources) > 0L) {
  stop(
    "Arquivo(s)-fonte de metodos_CP não encontrado(s): ",
    paste(missing_sources, collapse = ", "),
    ". Verifique METODOS_CP_ROOT."
  )
}

dir.create(dirname(output_path), recursive = TRUE, showWarnings = FALSE)

# Estes hashes identificam o snapshot de 2026-07-19 que sustenta o denominador
# fixo de 59 artigos. Uma atualização legítima das fontes exige nova auditoria do
# denominador e atualização explícita dos hashes abaixo.
expected_input_md5 <- c(
  paper_method_long_current = "c369d40a9b892db7700f0f3a3020e3b4",
  paper_analysis_dataset_current = "87b70bce32df44c80eb6c873dd46e5d8"
)
source_paths <- c(
  paper_method_long_current = method_source_path,
  paper_analysis_dataset_current = article_source_path
)
observed_input_md5 <- unname(tools::md5sum(source_paths))
names(observed_input_md5) <- names(source_paths)

if (!identical(observed_input_md5, expected_input_md5)) {
  changed <- names(source_paths)[observed_input_md5 != expected_input_md5]
  stop(
    "Os arquivos-fonte mudaram para: ", paste(changed, collapse = ", "), ". ",
    "Revise o denominador de 59 artigos e, se a atualização for legítima, ",
    "atualize expected_input_md5 neste script."
  )
}

source_file_info <- file.info(source_paths)
provenance <- tibble::tibble(
  source_id = names(source_paths),
  source_path = unname(source_paths),
  file_size_bytes = as.numeric(source_file_info$size),
  modified_at = format(source_file_info$mtime, "%Y-%m-%dT%H:%M:%S%z"),
  md5 = unname(observed_input_md5),
  expected_md5 = unname(expected_input_md5),
  snapshot_status = "MATCH"
)

method_label_lookup <- c(
  experiment_field = "Experimento de campo",
  experiment_lab = "Experimento de laboratório",
  experiment_survey = "Experimento em survey",
  experiment_list = "Experimento de lista",
  difference_in_differences = "Diferenças-em-diferenças",
  event_study = "Estudo de evento",
  instrumental_variables = "Variáveis instrumentais",
  regression_discontinuity = "Regressão descontínua",
  regression_kink = "Regressão kink",
  synthetic_control = "Controle sintético",
  synthetic_difference_in_differences = "Diferenças-em-diferenças sintéticas",
  matching_or_weighting = "Pareamento ou ponderação",
  dag_or_formal_causal_graph = "Grafo causal formal",
  doubly_robust = "Estimador duplamente robusto",
  causal_tree_or_forest = "Árvore ou floresta causal",
  causal_discovery = "Descoberta causal"
)

required_method_columns <- c(
  "pid", "title", "journal_title", "journal_area", "year", "period_3",
  "method_type", "causal_design_quote", "tough_call", "method_class"
)
required_article_columns <- c(
  "pid", "title", "journal_title", "journal_area", "year", "period_3",
  "credibility_revolution_method_type", "causal_design_quote", "tough_call",
  "strict_design_method"
)

assert_required_columns <- function(data, required, source_label) {
  missing_columns <- setdiff(required, names(data))
  if (length(missing_columns) > 0L) {
    stop(
      "Esquema inválido em ", source_label, "; colunas ausentes: ",
      paste(missing_columns, collapse = ", ")
    )
  }
}

methods_raw <- readr::read_csv(method_source_path, show_col_types = FALSE)
articles_raw <- readr::read_csv(article_source_path, show_col_types = FALSE)

assert_required_columns(methods_raw, required_method_columns, basename(method_source_path))
assert_required_columns(articles_raw, required_article_columns, basename(article_source_path))

if (any(is.na(methods_raw$pid) | !nzchar(methods_raw$pid))) {
  stop("Esquema inválido: pid ausente ou vazio na fonte de métodos.")
}
if (any(is.na(articles_raw$pid) | !nzchar(articles_raw$pid))) {
  stop("Esquema inválido: pid ausente ou vazio na fonte de artigos.")
}
if (!is.logical(methods_raw$tough_call) || !is.logical(articles_raw$tough_call)) {
  stop("Esquema inválido: tough_call deve ser lógico nas duas fontes.")
}
if (!is.logical(articles_raw$strict_design_method)) {
  stop("Esquema inválido: strict_design_method deve ser lógico.")
}

allowed_method_classes <- c(
  "diagnostic_not_design", "other_modern_causal_method", "strict_design_method"
)
unexpected_method_classes <- setdiff(
  unique(stats::na.omit(methods_raw$method_class)), allowed_method_classes
)
if (length(unexpected_method_classes) > 0L) {
  stop(
    "Domínio inesperado em method_class: ",
    paste(unexpected_method_classes, collapse = ", ")
  )
}

allowed_diagnostic_methods <- c(
  "fixed_effects_causal_panel_claim", "none_detected",
  "observational_regression_with_causal_claim_no_design"
)
valid_method_type <- (
  methods_raw$method_class == "strict_design_method" &
    methods_raw$method_type %in% names(method_label_lookup)
) | (
  methods_raw$method_class == "diagnostic_not_design" &
    methods_raw$method_type %in% allowed_diagnostic_methods
) | (
  methods_raw$method_class == "other_modern_causal_method" &
    methods_raw$method_type == "other_modern_causal_method"
)
if (any(is.na(valid_method_type) | !valid_method_type)) {
  invalid_pairs <- methods_raw |>
    dplyr::filter(is.na(valid_method_type) | !valid_method_type) |>
    dplyr::distinct(method_class, method_type)
  stop(
    "Domínio inesperado em method_type: ",
    paste(
      paste0(invalid_pairs$method_class, "/", invalid_pairs$method_type),
      collapse = ", "
    )
  )
}

cases_long <- methods_raw |>
  dplyr::filter(method_class == "strict_design_method") |>
  dplyr::mutate(
    method_type = stringr::str_trim(method_type),
    method_label = dplyr::recode(method_type, !!!method_label_lookup, .default = method_type)
  ) |>
  dplyr::select(
    pid,
    title,
    journal_title,
    journal_area,
    year,
    period_3,
    method_type,
    method_label,
    causal_design_quote,
    tough_call
  )

method_summary <- cases_long |>
  dplyr::group_by(pid, title, journal_title, journal_area, year, period_3) |>
  dplyr::summarise(
    method_types = stringr::str_c(sort(unique(method_type)), collapse = "; "),
    method_labels = stringr::str_c(sort(unique(method_label)), collapse = "; "),
    causal_design_quotes = stringr::str_c(
      unique(stats::na.omit(causal_design_quote)),
      collapse = " || "
    ),
    any_tough_call = any(tough_call %in% TRUE),
    .groups = "drop"
  )

strict_articles <- articles_raw |>
  dplyr::filter(strict_design_method %in% TRUE) |>
  dplyr::select(
    pid,
    title,
    journal_title,
    journal_area,
    year,
    period_3,
    credibility_revolution_method_type,
    causal_design_quote,
    tough_call
  )

split_method_types <- function(x) {
  cleaned <- stringr::str_remove_all(x, "\\[|\\]|\\\"")
  stringr::str_split(cleaned, "\\s*[;,]\\s*")
}

cases <- strict_articles |>
  dplyr::left_join(
    method_summary,
    by = c("pid", "title", "journal_title", "journal_area", "year", "period_3")
  ) |>
  dplyr::mutate(
    method_types = dplyr::coalesce(method_types, credibility_revolution_method_type),
    method_types = vapply(
      split_method_types(method_types),
      function(x) stringr::str_c(sort(unique(x[nzchar(x)])), collapse = "; "),
      character(1)
    ),
    method_labels = vapply(
      split_method_types(method_types),
      function(x) stringr::str_c(
        unname(dplyr::recode(x, !!!method_label_lookup, .default = x)),
        collapse = "; "
      ),
      character(1)
    ),
    causal_design_quotes = dplyr::coalesce(causal_design_quotes, causal_design_quote),
    any_tough_call = dplyr::coalesce(any_tough_call, tough_call)
  ) |>
  dplyr::select(
    pid,
    title,
    journal_title,
    journal_area,
    year,
    period_3,
    method_types,
    method_labels,
    causal_design_quotes,
    any_tough_call
  ) |>
  dplyr::arrange(year, journal_title, title)

multimethod_rows <- stringr::str_detect(cases$method_types, fixed("; "))
method_type_counts <- lengths(split_method_types(cases$method_types))
method_label_counts <- lengths(stringr::str_split(cases$method_labels, fixed("; ")))

stopifnot(
  nrow(method_summary) == 59L,
  nrow(cases) == 59L,
  dplyr::n_distinct(cases$pid) == 59L,
  !anyDuplicated(cases$pid),
  any(multimethod_rows),
  all(method_type_counts == method_label_counts),
  all(!stringr::str_detect(cases$method_labels[multimethod_rows], "_[a-z]"))
)

readr::write_csv(cases, output_path, na = "")
readr::write_csv(provenance, provenance_path, na = "")

cat("Raiz metodos_CP:", metodos_cp_root, "\n")
cat("Fonte de artigos:", article_source_path, "\n")
cat("Fonte de métodos:", method_source_path, "\n")
cat("Artigos únicos:", nrow(cases), "\n")
cat("Artigos multimétodo:", sum(multimethod_rows), "\n")
cat("Saída:", output_path, "\n")
cat("Proveniência:", provenance_path, "\n")
