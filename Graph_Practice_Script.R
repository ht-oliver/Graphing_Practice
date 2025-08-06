## The goal of this code is to plot a function and the derivative of that function. Comments with a single "#" are lines of code that should be run in the console before executing the main script.

# library(tidyverse)

#usethis::use_git()
#usethis::use_github()

## Define your function
f_x <- function(x) {
  ((3*x^2 - 2*x + 3)^2)
  }

## Define your data range
my_data_range <- data.frame(x = c(-20, 20))


## define your object that is a derivative
df_dx <- D(expr = expression(
  ((3*x^2 - 2*x + 3)^2)),
  name = "x")

## return the derivative of your input function from the console

df_dx

# take the returned derivative from the console, and determine a new function
df_dx_fun <- function(x) {
  2 * ((3 * (2 * x) - 2) * (3 * x^2 - 2 * x + 3))
}

#plot both functions
ggplot(data = my_data_range, aes(x = x)) +
  geom_function(fun = f_x, color = "orange") +
  geom_function(fun = df_dx_fun, color = "blue")









