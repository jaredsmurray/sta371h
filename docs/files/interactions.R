library(readr)
library(mosaic)

path = "https://jaredsmurray.github.io/sta371g_f17/data/"
salary = read_csv(paste0(path, 'salary_gender.csv'))
# Turn the year hired variable into years of experience; the command
# below makes a new column in the salary data frame called Exp
salary$Exp = 96-salary$YrHired

# This line ensures that R treats the Gender variable as categorical
# when it comes time to fit regression models
salary$Gender = factor(salary$Gender)

# The model from last time, without interactions
salaryfit_exp = lm(Salary~Gender+Exp, data=salary)

plotModel(salaryfit_exp, Salary~Exp)

# The model with interactions -- note the Gender*Exp versus Gender+Exp
salaryfit_int = lm(Salary~Gender*Exp, data=salary)
summary(salaryfit_int)
plotModel(salaryfit_int, Salary~Exp)

# Bootstrapping for wage gaps at 5 and 10 years of experience

# Let's set this up before we bootstrap it...
betas = coef(salaryfit_int)
# The previous line gives you the following output
#(Intercept)     GenderMale            Exp GenderMale:Exp 
#34.2483163     -5.3460502      0.2799634      1.2477984 
# so salary = betas[1] + betas[2]Male + betas[3]Exp + betas[4]Male*Exp + residual 
# which is about salary = 34.25 - 5.35Male + 0.28Exp + 1.25*Male*Exp + residual

# Following the steps in the slides/videos, the estimated wage gap for an 
# experience level of exper years (say exper = 5 years)
exper = 5 # for example
betas[2] + betas[4]*exper

# We can use the bootstrap to get a confidence interval for the wage gap at a
# given level of experience:

gap1 = do(1000) * {
  fit = lm(Salary ~ Gender * Exp, data = resample(salary))
  betas = coef(fit)
  exper = 5 # 25th percentile of experience

  betas[2] + betas[4]*exper
}

confint(gap1)


gap2 = do(1000) * {
  fit = lm(Salary ~ Gender * Exp, data = resample(salary))
  betas = coef(fit)
  exper = 10 
  betas[2] + betas[4]*exper
}

confint(gap2)

### MBA GPA example (interacting continuous variables)

gpa = read_csv(paste0(path, 'grades.csv'))


fit1 = lm(MBAGPA ~BachGPA+Age, data=gpa)
coef(fit1)

fit2 = lm(MBAGPA ~ BachGPA*Age, data=gpa)
betas = coef(fit2)

# To compute the effect of undergrad GPA on expected MBA GPA holding age 
# constant at some value d:

d = 26
betas[2] + betas[4]*d

