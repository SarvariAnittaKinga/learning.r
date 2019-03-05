source(here::here("R/package-loading.R"))
1

#note to yourself.

#object assignment
weight_kilos<- 100
weight_kilos

#vector
c("a", "b")
c(1,2)
1:10

#dataframe
head(iris)

colnames(iris)
str(weight_kilos)
str(iris)
summary(iris)

lm

# data wrangling ----------------------------------------------------------


# project-session ---------------------------------------------------------


sd

`+`

summing <- function(a, b) {
  add_numbers <- a + b
  return(add_numbers)
}
summing(2, 2)

library(tidyverse)

write_csv(iris, here::here("data/iris.csv"))

iris_data<- read_csv(here::here("data/iris.csv"))
iris_data

