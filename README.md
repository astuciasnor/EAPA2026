# EAPA2026

Projeto didático de Estatística Aplicada com R + Quarto.

A ideia central é simples: o aluno abre um relatório `.qmd`, troca poucas
linhas, clica em Render e interpreta o resultado.

## Começo rápido

1. Abra `EAPA2026.Rproj`.
2. Rode `scripts/01_instalacoes.R` uma única vez.
3. Rode `scripts/04_validar_ambiente.R`.
4. Abra um relatório em `relatorios/`.
5. Edite só o que estiver marcado.
6. Clique em Render.

## Formato principal

O formato principal do projeto é HTML.

Motivos:

- renderiza mais rápido;
- exige menos instalação do que PDF com LaTeX;
- funciona bem para aula, leitura em tela e impressão posterior.

## Quando usar cada saída

- HTML: formato padrão para aula e estudo.
- PDF: imprimir o HTML pelo navegador.
- DOCX: usar `scripts/05_renderizar_docx.R`.

## Ordem sugerida para a turma

### Primeiro contato

1. `relatorios/00_modelo_base/modelo_base.qmd`
2. `relatorios/10_graficos_ggplot2/analise_graficos_ggplot2.qmd`
3. `relatorios/03_teste_t/analise_teste_t.qmd`
4. `relatorios/01_planejamento_amostral/analise_planejamento_amostral.qmd`
5. `relatorios/04_anova/analise_anova.qmd`

### Depois

1. `relatorios/05_ancova/analise_ancova.qmd`
2. `relatorios/06_regressao_linear/analise_regressao_linear.qmd`
3. `relatorios/02_planejamento_experimentos/analise_planejamento_experimentos.qmd`

### Mais adiante

1. `relatorios/07_regressao_nao_linear/analise_regressao_nao_linear.qmd`
2. `relatorios/08_multivariada_aah/analise_aah.qmd`
3. `relatorios/09_multivariada_acp/analise_acp.qmd`

## O que o aluno deve editar no início

Na maior parte das aulas, basta trocar:

- o título;
- a aba da planilha Excel;
- os nomes das variáveis;
- a interpretação final.

## Arquivos mais importantes

- `GUIA_ALUNOS.md` → roteiro curto para a turma
- `scripts/01_instalacoes.R` → instalação inicial
- `scripts/04_validar_ambiente.R` → checagem do ambiente
- `scripts/05_renderizar_docx.R` → geração de DOCX
- `livro/` → subprojeto do livro teórico em Quarto Book
- `README_projeto.md` → documentação complementar

## Livro teórico

O projeto agora também tem uma subpasta própria para o livro didático:

- `livro/_quarto.yml` → configuração do livro
- `livro/index.qmd` → página inicial
- `livro/capitulos/` → capítulos teóricos
- `livro/referencias/` → local para `references.bib` e `food-chemistry.csl`

Quando quiser renderizar o livro, use o Quarto apontando para a pasta `livro`.

Comando recomendado neste ambiente:

- `quarto render livro --no-clean`

Saída do livro:

- `livro/_site/`

## Publicação do livro no GitHub Pages

O livro pode ser publicado automaticamente neste mesmo repositório.

Fluxo adotado:

- o conteúdo-fonte continua em `livro/`
- o GitHub Actions renderiza o livro com `quarto render livro`
- a publicação usa `livro/_site/` como artefato do GitHub Pages
- `livro/_site/` permanece fora do Git, porque é saída gerada

Primeira ativação no GitHub:

1. Abra o repositório em `Settings > Pages`.
2. Em `Build and deployment`, escolha `Source: GitHub Actions`.
3. Faça um push na branch `main` ou rode manualmente o workflow `Publish Book` na aba `Actions`.

Endereço esperado da publicação:

- `https://astuciasnor.github.io/EAPA2026/`

Arquivos do Zotero:

- os arquivos já devem ficar em `livro/referencias/`
- o livro já está configurado para usar `references.bib` e `food-chemistry.csl`
- novas citações podem ser inseridas com a sintaxe normal do Quarto, como `[@björnsson1994]`

## Se algo der errado

1. Confirme que o projeto foi aberto por `EAPA2026.Rproj`.
2. Rode `scripts/04_validar_ambiente.R`.
3. Verifique se a planilha está em `dados/`.
4. Verifique se o Quarto está instalado.

## Observação sobre o HTML

Alguns relatórios podem gerar uma pasta `_files` junto do HTML em `_saida/`.
Isso é normal. Se você mover o HTML, mantenha essa pasta junto dele.
