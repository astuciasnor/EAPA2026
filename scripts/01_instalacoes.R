# ==========================================================
# EAPA2026 | Instalação inicial para RStudio + Quarto
# ==========================================================

options(repos = c(CRAN = "https://cloud.r-project.org"))
options(download.file.method = "libcurl")

instalar_se_faltar <- function(pacotes) {
  faltando <- pacotes[!vapply(pacotes, requireNamespace, logical(1), quietly = TRUE)]
  if (length(faltando) > 0) {
    install.packages(faltando, dependencies = TRUE)
  } else {
    message("Todos os pacotes desta lista já estão instalados.")
  }
}

pacotes_iniciais <- c(
  "tidyverse",
  "readxl",
  "janitor",
  "here",
  "gt",
  "rstatix",
  "psych",
  "agricolae",
  "car",
  "broom",
  "emmeans"
)

pacotes_avancados <- c(
  "FactoMineR",
  "factoextra",
  "nlstools"
)

pacotes_do_projeto <- unique(c(pacotes_iniciais, pacotes_avancados))

instalar_se_faltar(pacotes_do_projeto)

arquivo_excel <- here::here("dados", "aulas_eapa_organizada.xlsx")

if (!file.exists(arquivo_excel)) {
  stop("A planilha principal nao foi encontrada em: ", arquivo_excel)
}

abas_excel <- readxl::excel_sheets(arquivo_excel)
message("Planilha principal encontrada com ", length(abas_excel), " abas.")

caminho_quarto <- Sys.which("quarto")

if (nzchar(caminho_quarto)) {
  message("Quarto encontrado em: ", caminho_quarto)
} else {
  warning("O comando quarto nao foi encontrado no PATH. Instale o aplicativo Quarto para renderizar os relatorios em HTML.")
}

message("--------------------------------------------------")
message("Ambiente preparado.")
message("Próximos passos:")
message("1) Abra o arquivo EAPA2026.Rproj")
message("2) Rode scripts/04_validar_ambiente.R")
message("3) Abra um .qmd de nivel iniciante dentro de relatorios/")
message("4) Clique em Render para gerar o HTML")
message("5) Se quiser PDF, imprima o HTML pelo navegador")
message("6) Se quiser Word, rode scripts/05_renderizar_docx.R")
message("--------------------------------------------------")

