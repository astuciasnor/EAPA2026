# Guia rápido para as aulas práticas

Este material foi preparado para quem está começando no R. A ideia não é fazer
você decorar comandos logo no início, mas aprender a abrir um relatório,
alterar poucas linhas e interpretar os resultados com segurança.

## O que fazer antes da primeira aula

1. Abra o arquivo `EAPA2026.Rproj`.
2. Rode `scripts/01_instalacoes.R` uma única vez.
3. Rode `scripts/04_validar_ambiente.R` para conferir se está tudo pronto.

## Por onde começar

Siga esta ordem nas primeiras práticas:

1. `relatorios/00_modelo_base/modelo_base.qmd`
2. `relatorios/10_graficos_ggplot2/analise_graficos_ggplot2.qmd`
3. `relatorios/03_teste_t/analise_teste_t.qmd`
4. `relatorios/01_planejamento_amostral/analise_planejamento_amostral.qmd`

## O que você precisa editar

No começo, quase sempre basta trocar:

- o título;
- a aba da planilha Excel;
- os nomes das variáveis;
- a interpretação final.

## O que não precisa mexer agora

Evite alterar no início:

- a estrutura geral do arquivo;
- as fórmulas estatísticas;
- os nomes dos pacotes em `library()`;
- trechos que não estiverem marcados para edição.

## Como trabalhar em cada relatório

1. Abra o arquivo `.qmd` da aula.
2. Procure os trechos marcados com comentários de edição.
3. Faça pequenas mudanças.
4. Clique em Render.
5. Leia o HTML gerado e escreva a interpretação pedida.

## O que esperar do HTML

O relatório foi configurado para priorizar:

- gráficos;
- tabelas;
- resultados da análise;
- discussão e conclusão.

O HTML principal tende a sair como um arquivo único, porque os recursos visuais
são incorporados ao próprio arquivo.

## Se quiser PDF ou Word

- Para PDF: abra o HTML no navegador e use a impressão para PDF.
- Para DOCX: rode `scripts/05_renderizar_docx.R` quando isso for necessário.

## Se der erro

1. Verifique se o projeto foi aberto pelo arquivo `EAPA2026.Rproj`.
2. Rode novamente `scripts/04_validar_ambiente.R`.
3. Confirme se a planilha está dentro da pasta `dados/`.
4. Confirme se o aplicativo Quarto está instalado.
5. Se necessário, peça ajuda mostrando qual arquivo estava aberto e em qual etapa o erro apareceu.

## Ideia principal deste projeto

Primeiro você aprende o fluxo da análise. Depois, aos poucos, aprende a sintaxe
do R com mais profundidade. O foco inicial é entender o problema estatístico,
interpretar os resultados e comunicar bem a análise.
