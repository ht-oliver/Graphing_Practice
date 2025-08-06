## The goal of this code is to plot a function and the derivative of that function. Comments with a single "#" are lines of code that should be run in the console before executing the main script.

# library(tidyverse)

#usethis::use_git()
#usethis::use_github()

f_x <- function(x) {((x^2 + 2*x - 14)^2 +1)}
idiot <- function(n) {sin(n)}


x <- seq(from = -20, to = 20, by = 1)

ggplot() + xlim(c(-20,20)) + geom_function(fun = f_x)






