library(readr)
path = "https://jaredsmurray.github.io/sta371g_f17/data/"
salary = read_csv(paste0(path, 'salary_gender.csv'))
# Turn the year hired variable into years of experience; the command
# below makes a new column in the salary data frame called Exp
salary$Exp = 96-salary$YrHired

head(salary)

# This line ensures that R treats the Gender variable as categorical
# when it comes time to fit regression models
salary$Gender = factor(salary$Gender)

salaryfit = lm(Salary~Gender, data=salary)
coef(salaryfit)
confint(salaryfit)

salaryfit_exp = lm(Salary~Gender+Exp, data=salary)
summary(salaryfit_exp)

library(mosaic)
plotModel(salaryfit_exp, Salary~Exp)

housing = read_csv(paste0(path, 'MidCity.csv'))
# Rescale the response to be in $1000 & Size in 1000sqft
housing$Price = housing$Price/1000
housing$Size = housing$SqFt/1000
housing_fit = lm(Price~factor(Nbhd) + Size, data=housing)
coef(housing_fit)
  
plotModel(housing_fit, Price~Size)

lm(Price~Size, data=housing)
