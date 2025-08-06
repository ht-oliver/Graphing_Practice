## The goal of this code is to plot a function and the derivative of that function. Comments with a single "#" are lines of code that should be run in the console before executing the main script.

# library(tidyverse)

#usethis::use_git()
#usethis::use_github()

f_x <- function(x) {
  ((3*x^2 - 2*x + 3)^2)
  }

my_data_range <- data.frame(x = c(-20, 20))

df_dx <- D(expr = expression(
  ((3*x^2 - 2*x + 3)^2)),
  name = "x")

df_dx

df_dx_fun <- function(x) {
  2 * ((3 * (2 * x) - 2) * (3 * x^2 - 2 * x + 3))
}

ggplot(data = my_data_range, aes(x = x)) +
  geom_function(fun = f_x, color = "orange") +
  geom_function(fun = df_dx_fun, color = "blue")









