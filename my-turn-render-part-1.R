library(quarto)

quarto_render(
  input = "report.qmd",
  output_file = "Afghanistan.html",
  execute_params = list(country = "Afghanistan")
)
