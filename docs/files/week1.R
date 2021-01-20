# The set.seed function makes R generate the same random numbers across multiple 
# sessions. If you change it to some other value, you'll get different results below.
# If you use set.seed(1), you can replicate the lecture slides.
set.seed(1) 

1+3
sqrt(5)

x = 5
print(x)
x+2
y = "Hello"
print(y)

z = c(1,3,4,7) # c concatenates its arguments
print(z)

s = rep(1, 3) # repeats the first argument 3 times
print(s)

sample(c(1, 4, 5), size=4, replace=TRUE)

sample(x = c(0,1), size = 2, replace = TRUE)
sample(x = c(0,1), size = 2, replace = TRUE)
sample(x = c(0,1), size = 2, replace = TRUE)
sample(x = c(0,1), size = 2, replace = TRUE)


# This is the number of simulations we'll run 
# (one sim = flip two coins and count the number of heads
num.sim = 10000
# This variable will hold the results of our sample. It will be a vector of
# numbers (each 0, 1, or 2) of length num.sim. We create it with "rep", which
# repeats "x" (NA) "times" (num.sim) times
num.heads.sample = rep(x=NA, times=num.sim) #NA is R-speak for "missing"
for (i in 1:num.sim) {
  # i is an "index" that runs from  is incremented every time the loop runs
  # it starts at 1 and stops at num.sim
  coinflips.result = sample(x = c(0,1), size = 2, 
                            replace = TRUE)
  num.heads.sample[i] = sum(coinflips.result)
}

library(mosaic)
num.heads.sample = do(num.sim) * {
  coinflips.result = sample(x = c(0, 1),
                            size = 2, replace = TRUE)
  sum(coinflips.result)
}
head(num.heads.sample, 10)
# table() takes a vector and counts the number of times each unique value is encountered
table(num.heads.sample)
table(num.heads.sample)/num.sim
