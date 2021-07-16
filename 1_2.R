codes <- c(380, 124, 818)
country <- c("Italy", "Canada", "Egypt")

codes <- c(Italy = 380, Canada = 124, Egypt = 818)
# Another way of writing that last line is with "" on the countries, or:
names(codes) <- country
codes

seq(1, 10)
# Another way of writing that last line is 1:10
seq(1, 10, 2)

# To access a specific element:
codes[2]
codes["Canada"]
country[c(1, 3)]
codes[c("Egypt", "Italy")]
codes[1:2]

seq(1, 200, 28)[c(1, 5, 7, 8)]

x <- c(1, "canada", 3)
x
class(x)

x <- 1:5
y <- as.character(x)
y <- as.numeric(y)

x <- c("1", "b", "3")
x <- as.numeric(x)

library(dslabs)
data(murders)
sort(murders$total)

x <- c(31, 4, 15, 92, 65)
x
sort(x)    # puts elements in order

index <- order(x)    # returns index that will put x in order
x[index]    # rearranging by this index puts elements in order
order(x)

index <- order(murders$total)
murders$abb[index]

max(murders$total)    # highest number of total murders
i_max <- which.max(murders$total)    # index with highest number of murders
murders$state[i_max]    # state name with highest number of total murders

min(murders$total)
i_min <- which.min(murders$total)
murders$state[i_min]

rank(x)    # returns ranks (smallest to largest)
rank(murders$total)

murders$state[which.max(murders$population)]
max(murders$population)

murder_rate <- murders$total/murders$population*100000
murders$state[order(murder_rate, decreasing=TRUE)]
