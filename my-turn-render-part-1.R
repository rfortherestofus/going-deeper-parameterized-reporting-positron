library(quarto)

quarto_render(
  input = "my-turn-report.qmd",
  output_file = "Albania.html",
  execute_params = list(country = "Albania")
)
