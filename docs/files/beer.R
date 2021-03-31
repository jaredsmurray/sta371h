# Load price/sales data from section 3.1
library(readr)
path = "https://jaredsmurray.github.io/sta371h/data/"

beer = read_csv(paste0(path, 'beer.csv'))

plot(nbeer~height, data=beer)
beerfit = lm(nbeer~height, data=beer)
summary(beerfit)
confint(beerfit)

beerfit_hw = lm(nbeer~height+weight, data=beer)
summary(beerfit_hw)
confint(beerfit_hw)

beerfit_w = lm(nbeer~weight, data=beer)
summary(beerfit_w)
confint(beerfit_w)
