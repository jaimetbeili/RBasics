library(tidyverse)
library(dslabs)
data(murders)

murders %>%
  ggplot(aes(population, total, label = abb, color = region)) +
  geom_label()


a <- 1
b <- 1
c <- -1

solution_1 <- (-b + sqrt(b^2 - 4*a*c))/(2*a)
solution_2 <- (-b - sqrt(b^2 - 4*a*c))/(2*a)

murders$murpc <- murders$total / murders$population
murders %>%
  ggplot(aes(population, murpc, label = abb, color = region)) +
  geom_label()

class(murders)
str(murders)
head(murders)
tail(murders)

# Variables can be numeric (population), characters (state), 
# logical vectors (true or false) or factors (regionleve).

names(murders)
murders$population
murders$state

pop <- murders$population
pop
length(pop)
length(murders$population)

class(murders$state)

z <- 3 == 2
class(z)
z

class(murders$region)
levels(murders$region)

# n is not the same as "n".

m <- "n"
n <- 20
m
n
m <- n
m
