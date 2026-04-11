# ==========================================================
# EAPA2026 | Listar abas da planilha principal
# ==========================================================

library(readxl)
library(here)

arquivo_excel <- here::here("dados", "aulas_bioestatistica_organizada.xlsx")

readxl::excel_sheets(arquivo_excel)
