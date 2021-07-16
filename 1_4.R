a <- 5 
if(a!=0){
  print(1/a)
} else{
  print("No reciprocal for 0.")
}

library(dslabs)
data(murders)
murder_rate <- murders$total / murders$population*100000
ind <- which.min(murder_rate)
if(murder_rate[ind] < 0.5){
  print(murders$state[ind]) 
} else{
  print("No state has murder rate that low")
}

a<-0
ifelse(a > 0, 1/a, NA)

a <- c(0,1,2,-4,5)
result <- ifelse(a > 0, 1/a, NA)
result


data(na_example)
sum(is.na(na_example))
no_nas <- ifelse(is.na(na_example), 0, na_example) 
sum(is.na(no_nas))

z <- c(TRUE, TRUE, FALSE)
any(z)
all(z)

z <- c(FALSE, FALSE, FALSE)
any(z)
all(z)

z <- c(TRUE, TRUE, TRUE)
any(z)
all(z)


avg <- function(x){
  s <- sum(x)
  n <- length(x)
  s/n
}

x <- 1:100
avg(x)

# variables inside a function are not defined in the workspace
s <- 3
avg(1:10)
s

# functions can have multiple arguments as well as default values
avg <- function(x, arithmetic = TRUE){
  n <- length(x)
  ifelse(arithmetic, sum(x)/n, prod(x)^(1/n))
}

# Cuadratic formula equations in functions.
solution_1 <- function(a,b,c){
  (-b + sqrt(b^2 - 4*a*c))/(2*a)
}

solution_2 <- function(a,b,c){
  (-b - sqrt(b^2 - 4*a*c))/(2*a)
}

solution_1(1,1,-1)
solution_2(1,1,-1)

# creating a function that computes the sum of integers 1 through n
compute_s_n <- function(n){
  x <- 1:n
  sum(x)
}

# a very simple for-loop
for(i in 1:5){
  print(i)
}

# a for-loop for our summation
m <- 25
s_n <- vector(length = m) # create an empty vector
for(n in 1:m){
  s_n[n] <- compute_s_n(n)
}

# creating a plot for our summation function
n <- 1:m
plot(n, s_n)

# a table of values comparing our function to the summation formula
head(data.frame(s_n = s_n, formula = n*(n+1)/2))

# overlaying our function with the summation formula
plot(n, s_n)
lines(n, n*(n+1)/2)
