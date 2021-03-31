## You will have to install the faraway package, which contains the SAT data
library(faraway)
library(lattice)
library(mosaic)
data(sat)

# If you want to read about the data...
?sat

# Let's begin by looking at the relationship between total SAT score (0-1600 in 1994)
# and per-pupil expenditures
plot(total~expend, data=sat, xlab = "Expenditure Per Pupil ($1000)", ylab = "Average Total SAT")
fit1 = lm(total~expend, data=sat)
abline(fit1)

# Looks like the relationship is negative!
coef(fit1)

# We get a 95\% CI that includes
# only negative values
boot1 = do(1000) * {
  lm(total~expend, data=resample(sat))
}
confint(boot1)

# Let's see if it's just the four states with large expenditures...
fit2 = lm(total~expend, data=subset(sat, expend<8))
coef(fit2)
confint(fit2)
# Nope -- the estimate actually goes down if we remove them!

# What's going on? We're missing a lurking variable: The rate of participation 
# in the SAT.

# SAT partipation rates  (the takers variable) vary a lot between states:
hist(sat$takers, main="Pct Taking SAT", xlab="Percent")

# One explanation for that is just that different states have different proportions
# of students interested in attending college, for various reasons (demographics and so on).

# Another big reason for the variability is that during this time period, different 
# schools/geographic areas had different test requirements or preferences -- 
# some preferred SAT, some ACT, and not every school accepted both. So in some states
# you might not need to take the SAT to attend a state school while in others you'd be
# required to take it. 

# However, most applicants to elite or out-of-state schools were taking the SAT. 
# Therefore, in states with low SAT participation, the SAT-taking population was 
# disproportionally higher-performing students. We see this in the data:

plot(total~takers, data=sat, ylab = "Average SAT", xlab = "Pct Taking SAT")
cor(total~takers, data=sat)
# In states where participation is low, it is disproportionately better students taking
# the SAT, leading to this strong negative correlation.

# Participation rates are also correlated with student expenditures:
plot(expend~takers, data=sat, ylab = "Expenditure Per Pupil ($1000)", xlab = "Pct Taking SAT")
cor(expend~takers, data=sat)

# When we ignore the effect of participation rates on average SAT scores (in SLR),
# the correlation between particpation and expenditures allows expenditures
# to work as a "proxy" for participation rates, possibly leading us astray!

# We need to adjust for this lurking variable, similar to how we adjusted for
# the rates of male vs. female applicants to different departments
# in the Berkeley case study in order to get an "apples-to-apples" comparison

##############################################################################
# Multiple Linear Regression for Adjustment
##############################################################################

# Multiple linear regression lets us make the necessary adjustment using a model
# instead of data subsetting... We assume that
# (total sat) = beta_0 + beta_1(school expenditures) + beta_2(participation) + (residual)
# The coefficient beta_1 represents the change in expected SAT scores for 
# a one-unit (i.e. $1000) increase in expenditures, **holding constant**
# the SAT participation rate
fit3 = lm(total~expend+takers, data=sat)

boot3 = do(1000) * {
  lm(total~expend+takers, data=resample(sat)) 
}
confint(boot3)

# When controlling for the SAT participation rate -- estimating the relationship
# between expenditures and average SAT scores within schools that have the same
# level of SAT participation -- we see that there is actually a positive partial 
# association between school expenditures and SAT scores