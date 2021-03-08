
## Group comparisons and dummy variables in regression models

Use the following commands in R to load the SaratogaHouses dataset from the mosaic package:

```
library(mosaic)
data(SaratogaHouses)
```

These data were originally collected to estimate how much value a fireplace adds to a home's value. Answering this question turns out to be tricky! We'll start by examining the association between the number of fireplaces and the sale price of a house.

#### Part A
  1. Create a scatterplot of price (y) against fireplaces (x). What do you see? 
  2. Treating fireplaces as a numeric variable, fit a simple linear regression model for price as a function of the number of fireplaces. What is the estimated increase in value for each additional fireplace?
  3. The model we fit in part 2 assumes that the expected sale price of a house increases the same amount with each additional fireplace -- that is, the difference in expected sale price between a house with 1 vs. 0 fireplaces is the same as the expected diffrence in sale price for a house with 3 vs. 2 fireplaces (or 2 vs. 1, or 4 vs. 3). Do you think this is a good assumption? Why or why not?

#### Part B

Here we'll treat the number of fireplaces as a categorical variable. In general it's better to avoid discretizing continuous or numeric variables, but here the number of fireplaces is almost always 0, 1, or 2, so it is essentially a categorical variable anyway (it would be hard to learn much about the relationship between price and fireplaces above 3 anyway, since we only have four data points there).

To begin let's compare houses with *any* fireplaces to houses with none. To do this we can create a new categorical variable (and inspect it using the summary() command) using the R code below:

  ```
  SaratogaHouses$any_fireplaces = factor(SaratogaHouses$fireplaces>0)
  summary(SaratogaHouses$any_fireplaces)
  ```

  Unpacking this code, remember that `SaratogaHouses$fireplaces>0` will create a new vector with the value TRUE when the house has at least one fireplace and FALSE when it does not. The factor() command tells R to treat this new variable as a categorical variable, instead of a logical/Boolean or character vector. 

1. Compute the sample mean sale price for houses with and without fireplaces using the code below:

    ```
    mean(price~any_fireplaces, data=SaratogaHouses)
    ```
    
    Ignoring uncertainty in these estimates for now, do houses with fireplaces tend to have higher sale prices on average? If so, by how much?
  
2. Fit a simple linear regression model predicting price from `any_fireplaces`. How do the estimated coefficients relate to the two subgroup means you computed above?

3. Now let's make a new categorical variable indicating whether a house has zero, one, or more than one fireplace. We can do this using the R code below:

    ```
    SaratogaHouses$fireplace_categories = SaratogaHouses$fireplaces # Make a copy
    # Then replace the 2, 3, and 4's with a label 2+
    SaratogaHouses$fireplace_categories[SaratogaHouses$fireplaces>1] = "2+"
    # Make a factor
    SaratogaHouses$fireplace_categories = factor(SaratogaHouses$fireplace_categories)
    summary(SaratogaHouses$fireplace_categories)
    ```
    
    (You can also accomplish this using the cut() function; type `?cut` into your R console to learn more). Compute the average sale price for each fireplace category by modifying the code in part B #1. 
    
4. Fit a linear regression model predicting price using our new categorical variable. How do the estimated coefficients relate to the means you computed above?

5. Bootstrap the regression model in part B #4. Is there strong evidence in the data that houses with one fireplace have higher average prices than houses with no fireplaces? Draw a histogram of the bootstrap-estimated sampling distribution for the relevant coefficient, and compute a 95% confidence interval. 

6. Briefly explain why the model we just fit doesn't tell us directly whether there is evidence for a difference in average prices between houses with one and two or more fireplaces.

7. We can fit a model that *does*  include this contrast by changing the *reference category* using the R code below:

    ```
    SaratogaHouses$fireplace_categories = relevel(SaratogaHouses$fireplace_categories, ref = "1")
    ```
  
    After running this command, refit the linear model from part B #4 above.  How do the new estimated coefficients relate to the sample means you computed in part B #3? Using the bootstrap, do you find strong evidence in the data that houses with 2+ fireplaces have higher average sale prices than houses with 1 fireplace?

8.  Say adding a fireplace to a house would cost $15,000. Based on our analysis here, if you were selling a house in Saratoga (at the time these data were collected) should you add a fireplace to a house with no fireplace? With one fireplace? (That is, do you think the differences in average sale prices here are *caused* by the varying numbers of fireplaces?) Why or why not?

