library(mosaic)
library(readr)
library(lattice)

evals = read_csv('https://jaredsmurray.github.io/sta371h/data/profs.csv')

# Let's see how to compute estimates and CIs for some quantities determined by interaction terms
# We'll start with my model from the Beauty activity part 2
fit3 = lm(eval~beauty*gender+minority+credits+native+age, data=evals)
summary(fit3)

# Now let's bootstrap
set.seed(1)
boot_fit = do(1000) * {
  lm(eval~beauty*gender+minority+credits+native+age, data=resample(evals))
}

### Looking at the two partial effects of beauty (male vs female):

# What's the effect of an additional beauty "point" for men, all else constant?
hist(boot_fit$beauty + boot_fit$beauty.gendermale, xlim=c(-0.1, 0.45))
confint(boot_fit$beauty + boot_fit$beauty.gendermale)
mean(boot_fit$beauty + boot_fit$beauty.gendermale)

# What's the effect of an additional beauty "point" for women, all else constant?
hist(boot_fit$beauty, xlim=c(-0.1, 0.45))
confint(boot_fit$beauty)

### Looking at the difference between male and female average evaluations, for 
### different levels of the beauty score, holding constant other variables?

# What's the gap for average looking instructors (beauty=0), all else constant?
gaplim = c(-0.3,0.6) 
hist(boot_fit$gendermale, xlim=gaplim, "Gap at beaty=0")
confint(boot_fit$gendermale)

# What's the gap for instructures with a beauty score of 0.5, all else constant?
hist(boot_fit$gendermale + boot_fit$beauty.gendermale*0.5, xlim=gaplim, main="Gap at beauty=0.5")
confint(boot_fit$gendermale + boot_fit$beauty.gendermale*0.5)

# What's the gap for instructures with a beauty score of -0.5, all else constant?
hist(boot_fit$gendermale + boot_fit$beauty.gendermale*(-0.5), xlim=gaplim, main="Gap at beauty=-0.5")
confint(boot_fit$gendermale + boot_fit$beauty.gendermale*(-0.5))

# What's the gap for instructures with a beauty score of -1, all else constant?
hist(boot_fit$gendermale + boot_fit$beauty.gendermale*(-1), xlim=gaplim, main="Gap at beauty=-1")
confint(boot_fit$gendermale + boot_fit$beauty.gendermale*(-1))
