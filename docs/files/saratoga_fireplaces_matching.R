library(mosaic)
library(MatchIt)

data(SaratogaHouses)

# Make a dummy variable for any fireplaces; this will be our "treatment"
SaratogaHouses$any_fireplaces = as.numeric(SaratogaHouses$fireplaces>0)

# Checking out one of the confounders (variables that are associated with
# the "treatment" (any_fireplaces) and the outcome (price))

boxplot(livingArea~any_fireplaces, data=SaratogaHouses)
mean(livingArea~any_fireplaces, data=SaratogaHouses)
plot(price~livingArea, data=SaratogaHouses)

# since any_fireplaces is a dummy variable, the means below correspond to the
# proportion of houses with >= 1 fireplace that are and are not new construction
mean(any_fireplaces~newConstruction, data=SaratogaHouses)
boxplot(price~newConstruction, data=SaratogaHouses)

# Do some matching!
# The first argument below is a formula like:
# treatment ~ confounder1 + confounder2
# Here you should read + as "and", i.e. do the matching based on the treatment variable
# called "treatment" using confounder1 and confounder2
# The argument estimand = "ATC" below is not standard. It tells matchit to perform
# the matching by finding one treated unit
# for every control unit -- by default it's the other way around, finding one control
# unit for every treated unit. We do it this way here because we're thinking about adding
# a fireplace to a "control" house (one with no fireplaces). The default is a better choice for
# most observational studies, especially those were units (say people) can choose whether to 
# take the treatment, since it estimates the effect of treatment among units who actually received it.
houses_match = matchit(any_fireplaces ~ livingArea+age+newConstruction+bedrooms+bathrooms, 
                       data=SaratogaHouses, estimand = "ATC")

# Examining balance after matching -- focus on the columns Means Treated, Means Control, and 
# Std. Mean Diff (which is the difference in means divided by the standard deviation;
# we'd like this to be low) which are computed in the original and matched dataset
summary(houses_match)

# This command extracts the matched dataset so we can do analysis 
houses_matched_data = match.data(houses_match)

# Let's see what happened to the distribution of sale prices for houses with >=1
# fireplaces after matching
par(mfrow=c(1,2))
boxplot(price~any_fireplaces, data=SaratogaHouses, main = "Original Data", ylim=c(0, 9e5))
boxplot(price~any_fireplaces, data=houses_matched_data, main = "Matched Dataset", ylim=c(0, 9e5))
par(mfrow=c(1,1))

# Let's see how the estimated mean difference in sale price changes once
# after matching:

mean(price~any_fireplaces, data=SaratogaHouses)
mean(price~any_fireplaces, data=houses_matched_data)

lm(price~any_fireplaces, data=SaratogaHouses)
lm(price~any_fireplaces, data=houses_matched_data)

matched_boot = do(1000) * {
  lm(price~any_fireplaces, data=resample(houses_matched_data))
}

original_boot = do(1000) * {
  lm(price~any_fireplaces, data=resample(SaratogaHouses))
}

par(mfrow=c(2,1))
hist(original_boot$any_fireplaces, main="Original", xlim=c(-15000, 80000))
hist(matched_boot$any_fireplaces, main="Matched", xlim=c(-15000, 80000))
par(mfrow=c(1,1))

confint(original_boot)
confint(matched_boot)

# NOTE: This is just an example. Here the matching wasn't terribly successful, 
# although it did improve balance on the covariates. In your case study you'll see
# an example where matching yields much better balance, and next week we'll see
# how to use regression models to make additional adjustments for remaining
# imbalance
