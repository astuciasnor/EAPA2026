# ==========================================================
# EAPA2026 | Teste rápido do here()
# ==========================================================

library(here)
library(readxl)

arquivo_excel <- here::here("dados", "aulas_eapa_organizada.xlsx")

cat("Raiz do projeto:\n")
print(here::here())

cat("\nArquivo Excel encontrado em:\n")
print(arquivo_excel)

cat("\nAbas da planilha:\n")
print(readxl::excel_sheets(arquivo_excel))
