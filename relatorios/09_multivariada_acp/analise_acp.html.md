---
title: "Análise de componentes principais (ACP)"
subtitle: "Redução de dimensionalidade e interpretação"
author: "Nome da estudante ou do estudante"
date: today
---

# Objetivo

Resumir várias variáveis em poucos componentes e visualizar padrões gerais.

::: {.callout-note}
## Nível indicado
Avançado. Na primeira leitura, não altere o algoritmo da ACP.
Troque apenas a aba, a coluna identificadora e a interpretação final.
:::

::: {.callout-note}
## Base usada neste modelo
Este exemplo usa a aba **ecomorfologico**.
A coluna `especie` funciona como identificador.
:::

::: {.callout-tip}
## Roteiro mínimo para a primeira leitura
1. Observe quanta variância os primeiros componentes explicam.
2. Veja onde as unidades aparecem no biplot.
3. Identifique as variáveis com maior contribuição.
4. Escreva uma interpretação curta dos dois primeiros componentes.
:::

# Pacotes usados


::: {.cell}

:::


# Importação dos dados


::: {.cell}
::: {.cell-output .cell-output-stdout}

```
# A tibble: 10 × 12
   especie      ic    ar    cr icpcd   iav  ranp   pro   crc    lrb    arb   abo
   <chr>     <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl> <dbl>
 1 O. ruber  2.50  0.373 0.345  2.08 0.661  3.28 0.311 0.315 0.0801 0.124  1.55 
 2 E. arge…  2.77  0.332 0.290  2.46 0.607  4.63 0.282 0.302 0.0496 0.0733 1.48 
 3 H. stei…  2.41  0.361 0.323  2.43 0.665  3.62 0.335 0.357 0.0836 0.210  2.51 
 4 H. plum…  2.66  0.374 0.347  2.24 0.690  3.21 0.396 0.370 0.0855 0.230  2.69 
 5 H. auro…  2.40  0.317 0.340  2.46 0.687  3.78 0.302 0.349 0.0711 0.157  2.21 
 6 S. micr…  7.29  0.441 0.236  5.70 0.517  6.45 0.197 0.267 0.0508 0.0947 1.86 
 7 S. test…  0.988 0.215 0.291  1.46 0.679  1.40 0.577 0.325 0.0702 0.0305 0.434
 8 B. ocel… 11.4   0.629 0.239  6.33 0.478  6.30 0.118 0.239 0.0472 0.0724 1.53 
 9 P. corv…  2.65  0.312 0.313  2.63 0.668  3.59 0.304 0.325 0.114  0.204  1.79 
10 L.synag…  2.93  0.349 0.400  2.67 0.649  3.46 0.335 0.363 0.0547 0.0708 1.29 
```


:::
:::


# Preparação dos dados


::: {.cell}

:::


# Variância explicada


::: {.cell}
::: {.cell-output-display}
![](analise_acp_files/figure-html/unnamed-chunk-4-1.png){width=672}
:::
:::



::: {.cell}
::: {.cell-output-display}

```{=html}
<div id="dueccjatas" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#dueccjatas table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#dueccjatas thead, #dueccjatas tbody, #dueccjatas tfoot, #dueccjatas tr, #dueccjatas td, #dueccjatas th {
  border-style: none;
}

#dueccjatas p {
  margin: 0;
  padding: 0;
}

#dueccjatas .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 13px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: 100%;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#dueccjatas .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#dueccjatas .gt_title {
  color: #333333;
  font-size: 16px;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#dueccjatas .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#dueccjatas .gt_heading {
  background-color: #FFFFFF;
  text-align: left;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#dueccjatas .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#dueccjatas .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#dueccjatas .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#dueccjatas .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#dueccjatas .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#dueccjatas .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#dueccjatas .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#dueccjatas .gt_spanner_row {
  border-bottom-style: hidden;
}

#dueccjatas .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#dueccjatas .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#dueccjatas .gt_from_md > :first-child {
  margin-top: 0;
}

#dueccjatas .gt_from_md > :last-child {
  margin-bottom: 0;
}

#dueccjatas .gt_row {
  padding-top: 6px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#dueccjatas .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#dueccjatas .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#dueccjatas .gt_row_group_first td {
  border-top-width: 2px;
}

#dueccjatas .gt_row_group_first th {
  border-top-width: 2px;
}

#dueccjatas .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#dueccjatas .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#dueccjatas .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#dueccjatas .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#dueccjatas .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#dueccjatas .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#dueccjatas .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#dueccjatas .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#dueccjatas .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#dueccjatas .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#dueccjatas .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#dueccjatas .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#dueccjatas .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#dueccjatas .gt_left {
  text-align: left;
}

#dueccjatas .gt_center {
  text-align: center;
}

#dueccjatas .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#dueccjatas .gt_font_normal {
  font-weight: normal;
}

#dueccjatas .gt_font_bold {
  font-weight: bold;
}

#dueccjatas .gt_font_italic {
  font-style: italic;
}

#dueccjatas .gt_super {
  font-size: 65%;
}

#dueccjatas .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#dueccjatas .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#dueccjatas .gt_indent_1 {
  text-indent: 5px;
}

#dueccjatas .gt_indent_2 {
  text-indent: 10px;
}

#dueccjatas .gt_indent_3 {
  text-indent: 15px;
}

#dueccjatas .gt_indent_4 {
  text-indent: 20px;
}

#dueccjatas .gt_indent_5 {
  text-indent: 25px;
}

#dueccjatas .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}

#dueccjatas div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="4" class="gt_heading gt_title gt_font_normal gt_bottom_border" style><span data-qmd-base64="KipWYXJpw6JuY2lhIGV4cGxpY2FkYSBwZWxvcyBwcmltZWlyb3MgY29tcG9uZW50ZXMuKio="><span class='gt_from_md'><strong>Variância explicada pelos primeiros componentes.</strong></span></span></td>
    </tr>
    
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Componente">Componente</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Autovalor">Autovalor</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Variancia-percentual">Variancia percentual</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Variancia-acumulada">Variancia acumulada</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Componente" class="gt_row gt_left">comp 1</td>
<td headers="Autovalor" class="gt_row gt_center">7.04</td>
<td headers="Variancia percentual" class="gt_row gt_center">63.98</td>
<td headers="Variancia acumulada" class="gt_row gt_center">63.98</td></tr>
    <tr><td headers="Componente" class="gt_row gt_left gt_striped">comp 2</td>
<td headers="Autovalor" class="gt_row gt_center gt_striped">2.42</td>
<td headers="Variancia percentual" class="gt_row gt_center gt_striped">22.01</td>
<td headers="Variancia acumulada" class="gt_row gt_center gt_striped">85.99</td></tr>
    <tr><td headers="Componente" class="gt_row gt_left">comp 3</td>
<td headers="Autovalor" class="gt_row gt_center">0.79</td>
<td headers="Variancia percentual" class="gt_row gt_center">7.23</td>
<td headers="Variancia acumulada" class="gt_row gt_center">93.22</td></tr>
    <tr><td headers="Componente" class="gt_row gt_left gt_striped">comp 4</td>
<td headers="Autovalor" class="gt_row gt_center gt_striped">0.37</td>
<td headers="Variancia percentual" class="gt_row gt_center gt_striped">3.33</td>
<td headers="Variancia acumulada" class="gt_row gt_center gt_striped">96.55</td></tr>
  </tbody>
  
</table>
</div>
```

:::
:::


# Coordenadas das unidades


::: {.cell}
::: {.cell-output-display}

```{=html}
<div id="jlqkxcbrzb" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#jlqkxcbrzb table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#jlqkxcbrzb thead, #jlqkxcbrzb tbody, #jlqkxcbrzb tfoot, #jlqkxcbrzb tr, #jlqkxcbrzb td, #jlqkxcbrzb th {
  border-style: none;
}

#jlqkxcbrzb p {
  margin: 0;
  padding: 0;
}

#jlqkxcbrzb .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 13px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: 100%;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#jlqkxcbrzb .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#jlqkxcbrzb .gt_title {
  color: #333333;
  font-size: 16px;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#jlqkxcbrzb .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#jlqkxcbrzb .gt_heading {
  background-color: #FFFFFF;
  text-align: left;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#jlqkxcbrzb .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#jlqkxcbrzb .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#jlqkxcbrzb .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#jlqkxcbrzb .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#jlqkxcbrzb .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#jlqkxcbrzb .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#jlqkxcbrzb .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#jlqkxcbrzb .gt_spanner_row {
  border-bottom-style: hidden;
}

#jlqkxcbrzb .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#jlqkxcbrzb .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#jlqkxcbrzb .gt_from_md > :first-child {
  margin-top: 0;
}

#jlqkxcbrzb .gt_from_md > :last-child {
  margin-bottom: 0;
}

#jlqkxcbrzb .gt_row {
  padding-top: 6px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#jlqkxcbrzb .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#jlqkxcbrzb .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#jlqkxcbrzb .gt_row_group_first td {
  border-top-width: 2px;
}

#jlqkxcbrzb .gt_row_group_first th {
  border-top-width: 2px;
}

#jlqkxcbrzb .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#jlqkxcbrzb .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#jlqkxcbrzb .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#jlqkxcbrzb .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#jlqkxcbrzb .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#jlqkxcbrzb .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#jlqkxcbrzb .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#jlqkxcbrzb .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#jlqkxcbrzb .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#jlqkxcbrzb .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#jlqkxcbrzb .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#jlqkxcbrzb .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#jlqkxcbrzb .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#jlqkxcbrzb .gt_left {
  text-align: left;
}

#jlqkxcbrzb .gt_center {
  text-align: center;
}

#jlqkxcbrzb .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#jlqkxcbrzb .gt_font_normal {
  font-weight: normal;
}

#jlqkxcbrzb .gt_font_bold {
  font-weight: bold;
}

#jlqkxcbrzb .gt_font_italic {
  font-style: italic;
}

#jlqkxcbrzb .gt_super {
  font-size: 65%;
}

#jlqkxcbrzb .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#jlqkxcbrzb .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#jlqkxcbrzb .gt_indent_1 {
  text-indent: 5px;
}

#jlqkxcbrzb .gt_indent_2 {
  text-indent: 10px;
}

#jlqkxcbrzb .gt_indent_3 {
  text-indent: 15px;
}

#jlqkxcbrzb .gt_indent_4 {
  text-indent: 20px;
}

#jlqkxcbrzb .gt_indent_5 {
  text-indent: 25px;
}

#jlqkxcbrzb .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}

#jlqkxcbrzb div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="3" class="gt_heading gt_title gt_font_normal gt_bottom_border" style><span data-qmd-base64="KipDb29yZGVuYWRhcyBkYXMgZXNww6ljaWVzIG5vcyBjb21wb25lbnRlcyBwcmluY2lwYWlzLioq"><span class='gt_from_md'><strong>Coordenadas das espécies nos componentes principais.</strong></span></span></td>
    </tr>
    
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Especie">Especie</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Dim.1">Dim.1</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Dim.2">Dim.2</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Especie" class="gt_row gt_left">O. ruber</td>
<td headers="Dim.1" class="gt_row gt_center">0.940</td>
<td headers="Dim.2" class="gt_row gt_center">−0.148</td></tr>
    <tr><td headers="Especie" class="gt_row gt_left gt_striped">E. argenteus</td>
<td headers="Dim.1" class="gt_row gt_center gt_striped">−0.654</td>
<td headers="Dim.2" class="gt_row gt_center gt_striped">−1.159</td></tr>
    <tr><td headers="Especie" class="gt_row gt_left">H. steindachneri</td>
<td headers="Dim.1" class="gt_row gt_center">1.384</td>
<td headers="Dim.2" class="gt_row gt_center">1.713</td></tr>
    <tr><td headers="Especie" class="gt_row gt_left gt_striped">H. plumieri</td>
<td headers="Dim.1" class="gt_row gt_center gt_striped">2.085</td>
<td headers="Dim.2" class="gt_row gt_center gt_striped">2.044</td></tr>
    <tr><td headers="Especie" class="gt_row gt_left">H. aurolineatum</td>
<td headers="Dim.1" class="gt_row gt_center">1.265</td>
<td headers="Dim.2" class="gt_row gt_center">0.793</td></tr>
    <tr><td headers="Especie" class="gt_row gt_left gt_striped">S. micrurum</td>
<td headers="Dim.1" class="gt_row gt_center gt_striped">−4.016</td>
<td headers="Dim.2" class="gt_row gt_center gt_striped">0.044</td></tr>
    <tr><td headers="Especie" class="gt_row gt_left">S. testudineus</td>
<td headers="Dim.1" class="gt_row gt_center">2.481</td>
<td headers="Dim.2" class="gt_row gt_center">−3.539</td></tr>
    <tr><td headers="Especie" class="gt_row gt_left gt_striped">B. ocellatus</td>
<td headers="Dim.1" class="gt_row gt_center gt_striped">−5.979</td>
<td headers="Dim.2" class="gt_row gt_center gt_striped">−0.004</td></tr>
    <tr><td headers="Especie" class="gt_row gt_left">P. corvinaeformis</td>
<td headers="Dim.1" class="gt_row gt_center">1.407</td>
<td headers="Dim.2" class="gt_row gt_center">1.257</td></tr>
    <tr><td headers="Especie" class="gt_row gt_left gt_striped">L.synagris</td>
<td headers="Dim.1" class="gt_row gt_center gt_striped">1.088</td>
<td headers="Dim.2" class="gt_row gt_center gt_striped">−1.001</td></tr>
  </tbody>
  
</table>
</div>
```

:::
:::


# Biplot


::: {.cell}
::: {.cell-output-display}
![](analise_acp_files/figure-html/unnamed-chunk-7-1.png){width=672}
:::
:::


# Contribuição das variáveis


::: {.cell}
::: {.cell-output-display}
![](analise_acp_files/figure-html/unnamed-chunk-8-1.png){width=672}
:::
:::


# Interpretação guiada

> A ACP ajuda a visualizar quais variáveis mais contribuem para os componentes
> e como as unidades se distribuem no espaço multivariado.
> Unidades próximas tendem a ser mais parecidas; vetores mais longos costumam
> indicar maior contribuição da variável.

# Conclusão

Explique o que os dois primeiros componentes revelam e quais variáveis parecem mais importantes.
