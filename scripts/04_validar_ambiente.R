# ==========================================================
# EAPA2026 | Validacao rapida do ambiente
# ==========================================================

pacotes_essenciais <- c(
  "tidyverse",
  "readxl",
  "janitor",
  "here",
  "gt",
  "flextable"
)

faltando <- pacotes_essenciais[
  !vapply(pacotes_essenciais, requireNamespace, logical(1), quietly = TRUE)
]

if (length(faltando) > 0) {
  stop(
    "Pacotes faltando: ",
    paste(faltando, collapse = ", "),
    ".\nRode primeiro o script 01_instalacoes.R."
  )
}

cat("Pacotes essenciais: OK\n")

caminho_quarto <- Sys.which("quarto")

if (nzchar(caminho_quarto)) {
  cat("Quarto encontrado em:\n")
  cat(caminho_quarto, "\n", sep = "")
} else {
  warning("Quarto nao encontrado no PATH. Instale o aplicativo Quarto para gerar os relatorios em HTML.")
}

arquivo_excel <- here::here("dados", "aulas_bioestatistica_organizada.xlsx")

if (!file.exists(arquivo_excel)) {
  stop("Planilha principal nao encontrada em: ", arquivo_excel)
}

abas_excel <- readxl::excel_sheets(arquivo_excel)

cat("Planilha principal: OK\n")
cat("Total de abas encontradas: ", length(abas_excel), "\n", sep = "")
cat("Primeiras abas disponiveis:\n")
print(utils::head(abas_excel, 8))

cat("\nProximo teste sugerido:\n")
cat("1) Abra relatorios/00_modelo_base/modelo_base.qmd\n")
cat("2) Clique em Render\n")
cat("3) Leia o HTML gerado em _saida/\n")
cat("4) Se quiser PDF, use a impressao do navegador\n")
cat("5) Se quiser DOCX, rode scripts/05_renderizar_docx.R\n")