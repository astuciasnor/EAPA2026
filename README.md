# EAPA2026

Projeto didatico de Estatistica Aplicada com R + Quarto.

Este repositorio organiza dois materiais complementares:

- relatorios praticos para os alunos trabalharem nas analises;
- livro/apostila para o professor divulgar e amadurecer a teoria das analises.

O objetivo e manter a experiencia dos alunos simples: abrir uma pasta de
analise, editar poucas linhas do `.qmd`, clicar em Render e interpretar o HTML.
Ao mesmo tempo, o projeto continua organizado para planejamento, manutencao e
publicacao do material teorico pelo professor.

## Estrutura

- `dados/` -> planilha unica usada nas aulas.
- `relatorios/` -> pastas das analises praticas.
- `imagens/` -> figuras de apoio e prompts para imagens.
- `scripts/` -> instalacao, checagens e utilitarios.
- `livro/` -> apostila teorica do professor.
- `GUIA_ALUNOS.md` -> roteiro curto opcional para orientar a turma.

## Versao Dos Alunos

Para as aulas praticas, os alunos precisam receber:

- `EAPA2026.Rproj`
- `dados/`
- `imagens/`
- `relatorios/`
- `scripts/`
- `GUIA_ALUNOS.md`, se voce quiser entregar um roteiro curto

Os alunos nao precisam receber:

- `livro/`
- `README.md`
- `.github/`
- arquivos internos de manutencao do projeto

Assim, a atencao da turma fica concentrada nas pastas de analise dentro de
`relatorios/`.

## Dados

A pasta `dados/` deve conter uma unica planilha principal:

- `dados/aulas_eapa_organizada.xlsx`

Se a planilha for atualizada, mantenha esse mesmo nome. Assim os relatorios e
scripts continuam funcionando sem novas edicoes.

## Relatorios

Cada analise tem sua propria pasta. Exemplo:

```text
relatorios/
  03_teste_t/
    _quarto.yml
    analise_teste_t.qmd
```

O arquivo `_quarto.yml` fica dentro da pasta da analise para que cada relatorio
tenha sua propria configuracao de renderizacao. O `.qmd` fica com YAML curto,
normalmente apenas `title`, `subtitle`, `author` e `date`.

Nao ha `_quarto.yml` na raiz do projeto para os relatorios. Tambem nao ha pasta
`relatorios/_common/`. A ideia e evitar dependencia invisivel para o aluno.

## Formato Dos Relatorios

O formato principal e HTML.

Motivos:

- renderiza mais rapido;
- exige menos instalacao do que PDF com LaTeX;
- funciona bem para aula, leitura em tela e impressao posterior;
- com `embed-resources: true`, tende a gerar um HTML principal em arquivo unico.

Quando necessario:

- PDF: imprimir o HTML pelo navegador;
- DOCX: usar `scripts/05_renderizar_docx.R`.

## Ordem Sugerida Das Analises

Primeiro contato:

1. `relatorios/00_modelo_base/modelo_base.qmd`
2. `relatorios/10_graficos_ggplot2/analise_graficos_ggplot2.qmd`
3. `relatorios/03_teste_t/analise_teste_t.qmd`
4. `relatorios/01_planejamento_amostral/analise_planejamento_amostral.qmd`
5. `relatorios/04_anova/analise_anova.qmd`

Depois:

1. `relatorios/05_ancova/analise_ancova.qmd`
2. `relatorios/06_regressao_linear/analise_regressao_linear.qmd`
3. `relatorios/02_planejamento_experimentos/analise_planejamento_experimentos.qmd`

Mais adiante:

1. `relatorios/07_regressao_nao_linear/analise_regressao_nao_linear.qmd`
2. `relatorios/08_multivariada_aah/analise_aah.qmd`
3. `relatorios/09_multivariada_acp/analise_acp.qmd`

## Scripts

- `scripts/01_instalacoes.R` -> instala os pacotes principais.
- `scripts/02_listar_abas_excel.R` -> lista as abas da planilha.
- `scripts/03_testar_caminho_here.R` -> testa caminhos do projeto.
- `scripts/04_validar_ambiente.R` -> valida pacotes, Quarto e planilha.
- `scripts/05_renderizar_docx.R` -> gera DOCX de um relatorio.

## Livro

A pasta `livro/` e a apostila teorica do professor. Ela nao e necessaria para os
alunos rodarem os relatorios praticos.

Para renderizar o livro:

```powershell
quarto render livro --no-clean
```

A saida fica em:

```text
livro/_site/
```

O livro usa sua propria configuracao em:

```text
livro/_quarto.yml
```

## Referencias

O livro ja tem uma pasta propria para referencias:

```text
livro/referencias/
```

Se alguma analise pratica precisar de citacao, prefira colocar os arquivos de
referencia dentro da propria pasta daquela analise:

```text
relatorios/03_teste_t/
  _quarto.yml
  analise_teste_t.qmd
  references.bib
  food-chemistry.csl
```

Nesse caso, acrescente ao `_quarto.yml` da analise:

```yaml
bibliography: references.bib
csl: food-chemistry.csl
```

Assim a analise continua independente, sem depender da pasta `livro/`.

## Manutencao

Ao atualizar o projeto:

1. mantenha a planilha principal como `dados/aulas_eapa_organizada.xlsx`;
2. mantenha cada analise com seu proprio `_quarto.yml`;
3. evite recolocar configuracoes globais em `_quarto.yml` na raiz;
4. mantenha o livro separado do pacote dos alunos;
5. teste ao menos um relatorio iniciante depois de mudancas estruturais.
