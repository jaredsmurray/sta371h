
##
# Find a profit-maximizing price
##

# Define an R function to evaluate (predicted) profit at a
# unit price P and unit cost c.


unit_cost = 1

# Here's a function to compute profits for a given price. This is not the
# correct function for your case study
profit = function(P, unit_cost) {
  exp(3) * P^(-2.6) * (P - unit_cost)
}

## Finding approximate maxima for c=1 (or "plot and point")
P = seq(1, 5, length.out=100) 
profits = profit(P, 1)

# Get the price that has the corresponding maximum profit
max_profits_price = P[which.max(profits)] 

# Three different ways to plot our curve...
plot(profits~P)
plot(profits~P, type='l')
curve(profit(x, 1), from=1, to=5)
abline(v=max_profits_price)

# If you want to learn more about optimizing functions in R:
# https://github.com/jaredsmurray/learnR/blob/master/optimize/optimize.md
# (optional)

