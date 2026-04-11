# EAPA2026 | documentação complementar

O arquivo principal de entrada do projeto agora é `README.md`.
Use este arquivo aqui como documentação complementar, com mais contexto sobre as
decisões do projeto.

# EAPA2026 | relatórios didáticos em Quarto para Estatística Aplicada

Este projeto foi reorganizado para usar HTML como formato principal dos
relatórios. A decisão foi prática: o HTML renderiza mais rápido, exige menos
instalação do que PDF com LaTeX e funciona muito bem para aulas, leitura em tela
e impressão posterior.

## Decisão de formato

O fluxo recomendado agora é:

1. editar o arquivo `.qmd`;
2. renderizar em HTML;
3. ler, discutir e navegar no relatório no navegador;
4. se precisar, imprimir o HTML em PDF;
5. se precisar de Word, renderizar o mesmo `.qmd` para DOCX.

### O que é mais prático?

- Para aula e uso rotineiro: HTML
- Para entregar um PDF simples: imprimir o HTML pelo navegador
- Para levar ao Word depois: renderizar o `.qmd` para DOCX, e não converter o HTML manualmente
- Para gerar DOCX com menos atrito: usar `scripts/05_renderizar_docx.R`

## Tabelas de resultados

O projeto passa a usar `gt` como pacote principal para tabelas em HTML.

Para DOCX, o projeto usa `flextable` por meio da função auxiliar comum.

Razões para essa escolha:

- no HTML, a aparência fica muito melhor do que com `kableExtra`;
- as tabelas ficam mais próximas de material de relatório técnico, artigo ou livro;
- o mesmo código gera tabelas mais adequadas para Word quando o relatório é renderizado em DOCX.

## Objetivo didático

O projeto foi pensado para que o estudante iniciante:

- enxergue a análise completa em um único arquivo;
- mexa primeiro em poucas partes do código;
- produza uma saída visualmente agradável;
- desenvolva leitura estatística antes de enfrentar muita sintaxe.

Nos relatórios, o código continua no arquivo `.qmd` para estudo e edição, mas o
HTML final prioriza gráficos, tabelas, interpretação e conclusão.

## Estrutura do pacote

- `dados/` → planilhas Excel usadas nas aulas
- `imagens/` → figuras de apoio e prompts para gerar imagens
- `scripts/` → instalação, checagens e utilitários
- `relatorios/` → um relatório `.qmd` para cada análise

## Trilhas recomendadas

### Nível 1 | começo da turma

1. `00_modelo_base`
2. `10_graficos_ggplot2`
3. `03_teste_t`
4. `01_planejamento_amostral`
5. `04_anova`

### Nível 2 | transição para modelagem

1. `05_ancova`
2. `06_regressao_linear`
3. `02_planejamento_experimentos`

### Nível 3 | tópicos avançados

1. `07_regressao_nao_linear`
2. `08_multivariada_aah`
3. `09_multivariada_acp`

## Abas do Excel ligadas aos modelos

- `26.planej_amostral_demo` → planejamento amostral
- `27.plan_exp_demo` → planejamento de experimentos
- `2.bezero_2am` → teste t
- `11.leite_tuber` → ANOVA
- `28.ancova_demo` → ANCOVA
- `6.crabs` → regressão linear
- `29.reg_nlinear_demo` → regressão não linear
- `ecomorfologico` → AAH e ACP
- `10.caranguejos` → gráficos com ggplot2

## Fluxo sugerido de uso

1. Abra `EAPA2026.Rproj`.
2. Rode `scripts/01_instalacoes.R` uma única vez.
3. Rode `scripts/04_validar_ambiente.R`.
4. Se quiser conferir a planilha, rode `scripts/02_listar_abas_excel.R`.
5. Abra um relatório em `relatorios/`.
6. Edite só o que estiver marcado no arquivo.
7. Clique em Render para gerar o HTML.
8. Leia o resultado e complemente a interpretação.

Observação: em alguns relatórios o HTML pode vir acompanhado de uma pasta `_files`
na pasta `_saida/`. Isso é normal e faz parte dos recursos visuais do relatório.

## O que o aluno deve editar no início

Na maior parte das aulas, basta trocar:

- o título do relatório;
- a aba do Excel;
- os nomes das variáveis;
- uma ou duas frases de interpretação e conclusão.

## Por que usar `.qmd` em vez de script `.R`?

Porque o `.qmd` reduz a fragmentação da aula:

- texto, código e resultado ficam no mesmo lugar;
- o HTML sai pronto para leitura e discussão;
- a interpretação estatística aparece junto com o procedimento;
- a programação entra de forma gradual, sem virar o centro da aula no primeiro momento.

## Sobre o `here()`

Use sempre:

```r
arquivo_excel <- here::here("dados", "aulas_bioestatistica_organizada.xlsx")
```

Assim, o caminho parte da raiz do projeto, mesmo quando o relatório estiver em
uma subpasta de `relatorios/`.

## Arquivos importantes para a versão dos alunos

- `GUIA_ALUNOS.md` → roteiro direto para a turma
- `scripts/01_instalacoes.R` → preparação do ambiente
- `scripts/04_validar_ambiente.R` → checagem rápida antes da primeira renderização
- `scripts/05_renderizar_docx.R` → atalho para gerar versão DOCX
- `relatorios/00_modelo_base/modelo_base.qmd` → ponto de partida mais simples
- `imagens/PROMPTS_IA_IMAGENS.md` → prompts para gerar imagens temáticas

## Problemas comuns

Se o HTML não renderizar:

1. confira se o projeto foi aberto pelo arquivo `.Rproj`;
2. rode `scripts/04_validar_ambiente.R`;
3. confirme se a planilha está em `dados/`;
4. confira se o aplicativo Quarto está instalado;
5. reabra o `.qmd` e tente novamente.

## Estratégia didática sugerida

Uma sequência que costuma funcionar bem é:

1. mostrar um HTML já pronto;
2. pedir mudanças mínimas em título, aba e variável;
3. discutir o que mudou no gráfico ou na tabela;
4. só depois explicar a sintaxe do código com mais detalhe.

Assim, a análise estatística aparece antes da sobrecarga com programação.
