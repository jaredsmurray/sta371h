library(readr)
library(mosaic)
afc = read_csv("https://jaredsmurray.github.io/sta371h/data/afc.csv")

plot(Price~FoodScore, data=afc, xlim=c(0, 10), ylim=c(-7, 140))
fit = lm(Price ~ FoodScore, data=afc)
abline(fit)

# Get yhat, the fitted values (the point on the line for each value of x)
# and the residuals, the difference between the real value y and the predicted 
# value yhat
yhat = fitted(fit)
resids = resid(fit)

# Verify that y = yhat + residuals
print(yhat+resids)
print(afc$Price)

## Story 1: Regression as prediction machine

betas = coef(fit)
print(betas)

# The prediction for average price per person at a new restaurant
# with FoodScore = x is -6.16 + 7.88x. That is, if the FoodScore
# is 7, the prediction is -6.16 + 7.88(7). You can think of this as
# a *conditional* mean or expected value -- the average price per person
# among restaurants with FoodScore = 7.

-6.16 + 7.88*7
betas[1] + betas[2]*7
predict(fit, newdata = data.frame(FoodScore = c(7,8,9)))

# Story 2: Regression summarizes the trend in the data.
# How do we interpret the regression coefficients? What do they
# tell us about the relationship between Y and X?

print(betas)

# Story 3: Regression takes the X-ness out of Y. After we account
# for the linear X-Y relationship, what's left in the residuals?

par(mfrow=c(2,1)) # Sets up a 2 by 1 matrix of plots
plot(Price~FoodScore, data=afc)
abline(fit)
plot(resids~FoodScore, data=afc, ylab="Residuals")
abline(h=0)
par(mfrow=c(1,1)) # Reset the plot window to contain one plot

# Linear regression leaves residuals that are uncorrelated with X. This is what
# we mean mathematically by "taking the X-ness out of Y" -- the linear part of 
# the relationship is completely captured in the fitted values.
cor(resids, afc$FoodScore)

# And our *average* prediction error is also zero
mean(resids)

# Does the simple linear regression take ALL the  X-ness out of Y here? Do the 
# residuals still vary with X?

# Story 4: Regression quantifies the information in a predictor. Remember, 
# variance is a measure of (lack of) information, or unpredictability.

# Before we have any information about the food quality:
var(afc$Price)

# After we adjust for food quality by taking out the linear trend, the unpredictable
# "part" of Y is in the residuals. What's the variance of the residuals?
var(resids)

par(mfrow=c(2,1))
centered_price = afc$Price - mean(afc$Price)
hist(centered_price, xlim=c(-100, 100), breaks=20)
hist(resids, xlim=c(-100, 100), breaks=20)
par(mfrow=c(1,1))

# The closer the points are to the least squares line, the more accurate our
# predictions are. This is the same as saying X carries a lot of information
# about y, and it also means the variance of the residuals has to be small.

# Notice that...
var(yhat) + var(resids)
var(afc$Price)

# R-squared is the proportion of predictable (using x) variation in y:
rsquared(fit)
var(yhat)/var(afc$Price)
1 - var(resids)/var(afc$Price)
# Keep in the back of your mind that "predictable" means
# predictable using a linear function of X

# It's also...
cor(afc$Price, afc$FoodScore)^2

# But that's only true for simple linear regression. 
# However, in any OLS regression model:
cor(afc$Price, yhat)^2

# This should make it even more clear what R^2 does -- it's a unitless
# measure of how closely the fitted values track the observed y's

