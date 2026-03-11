library(quarto)
library(tidyverse)
library(gapminder)

countries <-
  gapminder |>
  distinct(country) |>
  pull(country) |>
  as.character()

reports <-
  tibble(
    input = "my-turn-report.qmd",
    output_file = str_glue("{countries}.html"),
    execute_params = map(countries, ~list(country = .))
  )

pwalk(reports, quarto_render)
