library(dslabs)
data(murders)

murder_rate <- murders$total / murders$population * 100000

index <- murder_rate <= .71
index

murders$state[index]
sum(index)

west <- murders$region == "West"
safe <- murder_rate <= 1

index <- safe & west
index
murders$state[index]

x <- c(FALSE, TRUE, FALSE, TRUE, TRUE, FALSE)
which(x)    # returns indices that are TRUE

# to determine the murder rate in Massachusetts we may do the following
index <- which(murders$state == "Massachusetts")
index
murder_rate[index]

# to obtain the indices and subsequent murder rates of New York, Florida, Texas, we do:
index <- match(c("New York", "Florida", "Texas"), murders$state)
index
murders$state[index]
murder_rate[index]

x <- c("a", "b", "c", "d", "e")
y <- c("a", "d", "f")
y %in% x

# to see if Boston, Dakota, and Washington are states
c("Boston", "Dakota", "Washington") %in% murders$state

library(dplyr)

murders <- mutate(murders,rate=total/population*100000)

filter(murders, rate <= .71)

new_table <- select(murders, state, region, rate)
filter(new_table, rate <= .71)

murders %>% select(state, region, rate) %>% filter(rate <= .71)

grades <- data.frame(names = c("John", "Juan", "Jean", "Yao"),
                     exam_1 = c(95, 80, 90, 85),
                     exam_2 = c(90, 85, 85, 90),
                     stringsAsFactors = FALSE)

grades <- mutate(grades,avg=(exam_1+exam_2)/2)

my_f_states <- murders %>% mutate(rate=total/population*100000, rank=rank(-rate)) %>% filter(region %in% c("Northeast","West") & rate <= 1) %>% select(state,rate,rank)
my_f_states

population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions,total_gun_murders)

hist(murder_rate)
hist(murders$total)

boxplot(rate~region, data = murders)
