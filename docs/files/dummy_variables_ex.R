library(readr)
library(mosaic)
path = "https://jaredsmurray.github.io/sta371h/data/"
housing = read_csv(paste0(path, 'MidCity.csv'))

View(housing)

# Turn the neighborhood variable into a factor (categorical) variable
housing$Nbhd = factor(housing$Nbhd)

# Rescale the response to be in $1000 & Size in 1000sqft
housing$Price = housing$Price/1000

# Compute the sample mean of price within each neighborhood
mean(Price~Nbhd, data=housing)

housing_fit = lm(Price~Nbhd, data=housing)
coef(housing_fit)

# By default, R will choose the reference category to be the 
# first level of the factor alphabetically. You will see how to
# change this in our Week 8 case study.