# =============================================================================
# Recalcula denominadores de pretensão explicativa e identificação causal
# =============================================================================
# Fonte: snapshot canônico do paper de Galdino e Martins da Silva.
# Saídas: resumo com numeradores, denominadores e percentuais comparáveis.
# Execute a partir da raiz do repositório. Para outra organização de pastas,
# defina METODOS_CP_ROOT com o caminho do repositório metodos_CP.
# =============================================================================

options(scipen = 999)

suppressPackageStartupMessages({
  library(dplyr)
  library(readr)
})

metodos_cp_root <- Sys.getenv("METODOS_CP_ROOT", unset = "../metodos_CP")
if (!dir.exists(metodos_cp_root)) {
  stop(
    "Repositório metodos_CP não encontrado em '", metodos_cp_root, "'. ",
    "Defina METODOS_CP_ROOT com o caminho correto e execute novamente."
  )
}
metodos_cp_root <- normalizePath(metodos_cp_root, winslash = "/", mustWork = TRUE)

source_path <- file.path(
  metodos_cp_root,
  "data/processed/paper_analysis/paper_analysis_dataset_current.csv"
)
output_path <-
  "data/processed/abcp_quantitative_explanatory_identification_summary.csv"
provenance_path <- paste0(tools::file_path_sans_ext(output_path), "_provenance.csv")

if (!file.exists(source_path)) {
  stop("Arquivo-fonte não encontrado: ", source_path)
}

expected_input_md5 <- "87b70bce32df44c80eb6c873dd46e5d8"
observed_input_md5 <- unname(tools::md5sum(source_path))
if (!identical(observed_input_md5, expected_input_md5)) {
  stop(
    "O arquivo-fonte mudou. MD5 esperado: ", expected_input_md5,
    "; observado: ", observed_input_md5,
    ". Revise os denominadores antes de atualizar este script."
  )
}

articles <- readr::read_csv(source_path, show_col_types = FALSE)
required_columns <- c(
  "pid",
  "is_empirical_paper",
  "is_empirical_quant_paper_torreblanca",
  "has_statistical_inference",
  "causal_or_explanatory_claim_present",
  "strict_design_method"
)
missing_columns <- setdiff(required_columns, names(articles))
if (length(missing_columns) > 0L) {
  stop("Colunas ausentes na fonte: ", paste(missing_columns, collapse = ", "))
}

if (anyDuplicated(articles$pid) > 0L) {
  stop("A fonte contém identificadores de artigo duplicados.")
}
if (any(is.na(articles$pid) | !nzchar(articles$pid))) {
  stop("A fonte contém identificadores de artigo ausentes ou vazios.")
}

logical_columns <- setdiff(required_columns[-1L], "has_statistical_inference")
invalid_logical_columns <- logical_columns[
  !vapply(articles[logical_columns], is.logical, logical(1))
]
if (length(invalid_logical_columns) > 0L) {
  stop(
    "Colunas que deveriam ser lógicas: ",
    paste(invalid_logical_columns, collapse = ", ")
  )
}
if (any(vapply(articles[logical_columns], anyNA, logical(1)))) {
  stop("As variáveis usadas no denominador não podem conter valores ausentes.")
}
if (!is.logical(articles$has_statistical_inference)) {
  stop("A coluna has_statistical_inference deve ser lógica, admitindo valores ausentes.")
}

quantitative_articles <- articles |>
  dplyr::filter(is_empirical_paper, is_empirical_quant_paper_torreblanca)

quantitative_explanatory <- quantitative_articles |>
  dplyr::filter(causal_or_explanatory_claim_present)

quantitative_explanatory_with_identification <- quantitative_explanatory |>
  dplyr::filter(strict_design_method)

quantitative_explanatory_without_identification <- quantitative_explanatory |>
  dplyr::filter(!strict_design_method)

n_corpus <- nrow(articles)
n_quantitative <- nrow(quantitative_articles)
n_inference_observed <- sum(!is.na(quantitative_articles$has_statistical_inference))
n_with_inference <- sum(quantitative_articles$has_statistical_inference %in% TRUE)
n_without_inference <- sum(quantitative_articles$has_statistical_inference %in% FALSE)
n_quantitative_explanatory <- nrow(quantitative_explanatory)
n_with_identification <- nrow(quantitative_explanatory_with_identification)
n_without_identification <- nrow(quantitative_explanatory_without_identification)

expected_counts <- c(
  corpus = 4144L,
  quantitative = 1999L,
  inference_observed = 1994L,
  with_inference = 743L,
  without_inference = 1251L,
  quantitative_explanatory = 1944L,
  with_identification = 59L,
  without_identification = 1885L
)
observed_counts <- c(
  corpus = n_corpus,
  quantitative = n_quantitative,
  inference_observed = n_inference_observed,
  with_inference = n_with_inference,
  without_inference = n_without_inference,
  quantitative_explanatory = n_quantitative_explanatory,
  with_identification = n_with_identification,
  without_identification = n_without_identification
)
if (!identical(observed_counts, expected_counts)) {
  stop(
    "As contagens observadas diferem do snapshot validado: ",
    paste(names(observed_counts), observed_counts, sep = "=", collapse = ", ")
  )
}
stopifnot(
  n_with_inference + n_without_inference == n_inference_observed,
  n_with_identification + n_without_identification == n_quantitative_explanatory,
  n_quantitative_explanatory <= n_quantitative,
  n_quantitative <= n_corpus
)

format_percent <- function(numerator, denominator) {
  round(100 * numerator / denominator, 1)
}

summary_table <- tibble::tribble(
  ~metric_id, ~metric, ~n, ~denominator, ~denominator_n, ~percent,
  "quantitative_inference_observed",
  "Artigos quantitativos com inferência estatística classificada",
  n_inference_observed,
  "artigos empíricos quantitativos",
  n_quantitative,
  format_percent(n_inference_observed, n_quantitative),
  "with_statistical_inference",
  "Quantificam formalmente a incerteza",
  n_with_inference,
  "artigos quantitativos com inferência estatística classificada",
  n_inference_observed,
  format_percent(n_with_inference, n_inference_observed),
  "without_statistical_inference",
  "Não quantificam formalmente a incerteza",
  n_without_inference,
  "artigos quantitativos com inferência estatística classificada",
  n_inference_observed,
  format_percent(n_without_inference, n_inference_observed),
  "quantitative_explanatory",
  "Artigos quantitativos com pretensão causal ou explicativa",
  n_quantitative_explanatory,
  "artigos empíricos quantitativos",
  n_quantitative,
  format_percent(n_quantitative_explanatory, n_quantitative),
  "with_explicit_identification",
  "Estratégia explícita de identificação causal",
  n_with_identification,
  "artigos quantitativos com pretensão causal ou explicativa",
  n_quantitative_explanatory,
  format_percent(n_with_identification, n_quantitative_explanatory),
  "without_explicit_identification",
  "Sem estratégia explícita de identificação causal",
  n_without_identification,
  "artigos quantitativos com pretensão causal ou explicativa",
  n_quantitative_explanatory,
  format_percent(n_without_identification, n_quantitative_explanatory)
)

source_info <- file.info(source_path)
provenance <- tibble::tibble(
  source_path = source_path,
  file_size_bytes = as.numeric(source_info$size),
  modified_at = format(source_info$mtime, "%Y-%m-%dT%H:%M:%S%z"),
  md5 = observed_input_md5,
  expected_md5 = expected_input_md5,
  snapshot_status = "MATCH"
)

dir.create(dirname(output_path), recursive = TRUE, showWarnings = FALSE)
readr::write_csv(summary_table, output_path, na = "")
readr::write_csv(provenance, provenance_path, na = "")

cat("Resumo salvo em:", output_path, "\n")
print(summary_table)
