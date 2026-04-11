# ==========================================================
# EAPA2026 | Funcoes auxiliares para relatorios
# ==========================================================

tabela_relatorio <- function(dados, titulo = NULL, digits = NULL) {
  tabela <- tibble::as_tibble(dados)
  nomes_colunas <- names(tabela) |>
    gsub("_", " ", x = _) |>
    stringr::str_squish() |>
    stringr::str_to_sentence(locale = "pt")

  names(tabela) <- nomes_colunas
  colunas_numericas <- names(tabela)[vapply(tabela, is.numeric, logical(1))]

  if (identical(knitr::pandoc_to(), "docx")) {
    tabela_ft <- flextable::flextable(tabela)

    if (!is.null(titulo) && nzchar(titulo)) {
      tabela_ft <- flextable::set_caption(tabela_ft, caption = titulo)
    }

    if (length(colunas_numericas) > 0 && !is.null(digits)) {
      tabela_ft <- flextable::colformat_num(
        x = tabela_ft,
        j = colunas_numericas,
        digits = digits,
        na_str = ""
      )
    }

    if (length(colunas_numericas) > 0) {
      tabela_ft <- flextable::align(
        x = tabela_ft,
        j = colunas_numericas,
        align = "center",
        part = "all"
      )
    }

    return(
      tabela_ft |>
        flextable::theme_booktabs() |>
        flextable::bold(part = "header") |>
        flextable::bg(part = "header", bg = "#204D6F") |>
        flextable::color(part = "header", color = "#FFFFFF") |>
        flextable::bg(part = "body", bg = "#F8FAFC") |>
        flextable::fontsize(size = 10, part = "all") |>
        flextable::padding(padding = 5, part = "all") |>
        flextable::align(align = "left", part = "header") |>
        flextable::set_table_properties(layout = "autofit") |>
        flextable::autofit()
    )
  }

  if (knitr::is_html_output()) {
    tabela_gt <- gt::gt(tabela)

    if (!is.null(titulo) && nzchar(titulo)) {
      tabela_gt <- tabela_gt |>
        gt::tab_header(title = gt::md(paste0("**", titulo, "**")))
    }

    if (length(colunas_numericas) > 0 && !is.null(digits)) {
      tabela_gt <- tabela_gt |>
        gt::fmt_number(columns = colunas_numericas, decimals = digits)
    }

    if (length(colunas_numericas) > 0) {
      tabela_gt <- tabela_gt |>
        gt::cols_align(align = "center", columns = colunas_numericas)
    }

    return(
      tabela_gt |>
        gt::opt_row_striping() |>
        gt::tab_options(
          table.width = gt::pct(100),
          table.font.size = gt::px(13),
          heading.title.font.size = gt::px(16),
          heading.align = "left",
          data_row.padding = gt::px(6)
        )
    )
  }

  knitr::kable(tabela, digits = digits, caption = titulo)
}