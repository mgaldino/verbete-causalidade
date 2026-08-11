# =============================================================================
# Pipeline reproduzível — verbete "Causalidade"
# =============================================================================
# Uso, a partir da raiz do repositório: Rscript code/99_run_all.R
# Etapas: extração dos casos ABCP, validação do manuscrito, renderização do PDF,
# validação programática do PDF e registro do ambiente computacional.
# =============================================================================

write_session_record <- function(path = "quality_reports/sessionInfo.txt") {
  dir.create(dirname(path), recursive = TRUE, showWarnings = FALSE)
  tool_versions <- c(
    paste("Data:", format(Sys.time(), "%Y-%m-%d %H:%M:%S %Z")),
    paste("Pandoc:", paste(rmarkdown::pandoc_version(), collapse = ".")),
    paste("pdfinfo:", system2(Sys.which("pdfinfo"), "-v", stdout = TRUE, stderr = TRUE)[1L]),
    paste("pdftotext:", system2(Sys.which("pdftotext"), "-v", stdout = TRUE, stderr = TRUE)[1L]),
    "",
    capture.output(sessionInfo())
  )
  writeLines(tool_versions, path, useBytes = TRUE)
}

validate_pdf <- function(
    pdf_path = "output/verbete-causalidade.pdf",
    extracted_text_path = "output/verbete-causalidade-pdf.txt",
    report_path = "quality_reports/pdf_validation.md") {
  pdfinfo_path <- Sys.which("pdfinfo")
  pdftotext_path <- Sys.which("pdftotext")
  if (!nzchar(pdfinfo_path) || !nzchar(pdftotext_path)) {
    stop("pdfinfo e pdftotext são necessários para validar o PDF renderizado.")
  }
  if (!requireNamespace("stringi", quietly = TRUE)) {
    stop("O pacote 'stringi' é necessário para validar o texto extraído do PDF.")
  }

  pdf_exists <- file.exists(pdf_path)
  pdf_size <- if (pdf_exists) unname(file.info(pdf_path)$size) else 0

  pdfinfo_output <- if (pdf_exists) {
    system2(pdfinfo_path, shQuote(pdf_path), stdout = TRUE, stderr = TRUE)
  } else {
    character()
  }
  pdfinfo_status <- attr(pdfinfo_output, "status")
  if (is.null(pdfinfo_status)) pdfinfo_status <- 0L
  pages_line <- pdfinfo_output[grepl("^Pages:", pdfinfo_output)]
  page_count <- if (length(pages_line) == 1L) {
    as.integer(trimws(sub("^Pages:", "", pages_line)))
  } else {
    NA_integer_
  }

  extraction_status <- if (pdf_exists) {
    system2(
      pdftotext_path,
      c("-enc", "UTF-8", shQuote(pdf_path), shQuote(extracted_text_path))
    )
  } else {
    1L
  }
  extracted_text <- if (identical(extraction_status, 0L) && file.exists(extracted_text_path)) {
    paste(readLines(extracted_text_path, encoding = "UTF-8", warn = FALSE), collapse = "\n")
  } else {
    ""
  }
  extracted_word_count <- as.integer(stringi::stri_count_words(extracted_text))
  required_text_markers <- c(
    "Causalidade", "Histórico e fundamentos epistemológicos",
    "Lógica de aplicação e decisões de desenho", "Referências e leituras adicionais"
  )
  missing_text_markers <- required_text_markers[
    !vapply(
      required_text_markers,
      function(marker) stringi::stri_detect_fixed(extracted_text, marker),
      logical(1)
    )
  ]

  checks <- c(
    pdf_exists = pdf_exists,
    pdf_nonempty = isTRUE(pdf_size > 1000),
    pdfinfo_readable = identical(pdfinfo_status, 0L),
    page_count_positive = isTRUE(!is.na(page_count) && page_count > 0L),
    text_extraction = identical(extraction_status, 0L),
    extracted_text_substantial = isTRUE(extracted_word_count >= 1000L),
    required_text_present = length(missing_text_markers) == 0L
  )

  dir.create(dirname(report_path), recursive = TRUE, showWarnings = FALSE)
  report_lines <- c(
    "# Validação programática do PDF",
    "",
    paste0("- Data: ", format(Sys.time(), "%Y-%m-%d %H:%M:%S %Z")),
    paste0("- Arquivo: `", pdf_path, "`"),
    paste0("- Tamanho: ", pdf_size, " bytes"),
    paste0("- Páginas: ", ifelse(is.na(page_count), "não identificado", page_count)),
    paste0("- Palavras extraídas: ", extracted_word_count),
    paste0(
      "- Marcadores textuais ausentes: ",
      if (length(missing_text_markers) == 0L) "nenhum" else paste(missing_text_markers, collapse = ", ")
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
    stop("Validação do PDF falhou. Consulte ", report_path)
  }
  invisible(checks)
}

run_pipeline <- function() {
  cat("=== Verbete Causalidade — pipeline completo ===\n")
  cat("Início:", format(Sys.time()), "\n\n")

  if (!requireNamespace("rmarkdown", quietly = TRUE)) {
    stop("O pacote 'rmarkdown' é necessário para renderizar o verbete.")
  }
  required_pdf_tools <- c(pdfinfo = Sys.which("pdfinfo"), pdftotext = Sys.which("pdftotext"))
  if (any(!nzchar(required_pdf_tools))) {
    stop(
      "Ferramentas PDF ausentes: ",
      paste(names(required_pdf_tools)[!nzchar(required_pdf_tools)], collapse = ", ")
    )
  }

  on.exit(write_session_record(), add = TRUE)

  cat("[1/4] Extraindo casos causais ABCP...\n")
  source("code/01_extract_abcp_causal_design_cases.R", local = new.env(parent = globalenv()))

  cat("\n[2/4] Validando manuscrito e citações...\n")
  source("code/02_validate_manuscript.R", local = new.env(parent = globalenv()))

  cat("\n[3/4] Renderizando PDF...\n")
  rendered_pdf <- rmarkdown::render(
    input = "paper/verbete-causalidade.Rmd",
    output_format = "pdf_document",
    output_file = "../output/verbete-causalidade.pdf",
    clean = TRUE,
    envir = new.env(parent = globalenv()),
    quiet = FALSE
  )
  expected_pdf <- normalizePath(
    "output/verbete-causalidade.pdf", winslash = "/", mustWork = FALSE
  )
  rendered_pdf <- normalizePath(rendered_pdf, winslash = "/", mustWork = FALSE)
  if (!identical(rendered_pdf, expected_pdf)) {
    stop("Renderização produziu PDF em caminho inesperado: ", rendered_pdf)
  }

  cat("\n[4/4] Validando PDF renderizado...\n")
  validate_pdf()

  cat("\n=== Pipeline concluído ===\n")
  cat("Fim:", format(Sys.time()), "\n")
}

run_pipeline()
