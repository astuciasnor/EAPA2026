# ==========================================================
# EAPA2026 | Gerar DOCX a partir de um relatorio Quarto
# ==========================================================

# ===== EDITE DAQUI ====================================================
arquivo_relatorio <- "relatorios/03_teste_t/analise_teste_t.qmd"
# ===== FIM DA EDICAO ==================================================

caminho_quarto <- Sys.which("quarto")

if (!nzchar(caminho_quarto)) {
  stop("O comando quarto nao foi encontrado. Instale o aplicativo Quarto antes de gerar DOCX.")
}

if (!file.exists(arquivo_relatorio)) {
  stop("Arquivo de relatorio nao encontrado: ", arquivo_relatorio)
}

message("Gerando DOCX para: ", arquivo_relatorio)

resultado <- system2(
  command = caminho_quarto,
  args = c("render", arquivo_relatorio, "--to", "docx"),
  stdout = TRUE,
  stderr = TRUE
)

cat(paste(resultado, collapse = "\n"), "\n")

status_saida <- attr(resultado, "status")

if (!is.null(status_saida) && status_saida != 0) {
  stop("A geracao do DOCX falhou. Revise as mensagens acima.")
}

message("Concluido. Confira o arquivo .docx gerado em _saida/.")