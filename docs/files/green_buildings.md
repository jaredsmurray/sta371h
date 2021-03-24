---
title: "Green Buildings"
output: 
  html_document: 
    keep_md: yes
---



In this activity we'll learn how to use matching in an observational study to 
estimate causal effects, using the "green buldings" case study from your reading.
The variables in your dataset are listed below:

- Rent: the rent charged to tenants in the building, in dollars per square foot per calendar year.
- leasing_rate: a measure of occupancy; the fraction of the building’s available space currently under lease.
- size: the total square footage of available rental space in the building.
- stories: the height of the building in stories.
- age: the age of the building in years.
- renovated: whether the building has undergone substantial renovations during its lifetime.
- class_a, class_b: indicators for two classes of building quality (the third is Class C). These are relative classifications within a specific market. Class A buildings are generally the highest-quality properties in a given market. Class B buildings are a notch down, but still of reasonable quality. Class C buildings are the least desirable properties in a given market.
- amenities: an indicator of whether at least one of the following amenities is available on-site: bank, convenience store, dry cleaner, restaurant, retail shops, fitness center.
- net: an indicator as to whether the rent is quoted on a “net contract” basis. Tenants with net-rental contracts pay their own utility costs, which are otherwise included in the quoted rental price.
- cluster_rent: a measure of average rent per square-foot per calendar year in the building’s local market.
- Precipitation: annual precipitation in inches in the building’s geographic region.
- green_rating: an indicator for whether the building is either LEED- or EnergyStar-certified.



To begin load the data in [green.csv](https://raw.githubusercontent.com/jaredsmurray/sta371h/master/docs/data/green.csv) (right click and use "Save As" or similar to download it). Before you start, use the code below to make the revenue per sqft measure as 
a new column in the dataset:


```r
green$RevPSF = green$Rent * green$leasing_rate / 100
```

Then install and load the `MatchIt` R package to do the matching. Install it as you
did mosaic, or run the command `install.packages("MatchIt")` in your R console.

1. Fit a regression model to estimate the difference in revenue per sqft
for green vs. not green buildings. Use the bootstrap to assess the distribution of plausible values for this difference.

2. As noted in your reading, an immediate concern is the presence of *confounders*, variables that are
associated with both the treatment (green certification) and the response (revenue per sqft) because the treatment was not randomized. One potential confounder is age. Examine a boxplot of age by green_rating and 
a simple linear regression of RevPSF with age as the covariate (along with a scatterplot of the two). Does age seem like a confounder? Why or why not?

3. The building's class is another important confounder. Construct a matched dataset using the matching variables age, class_a, and class_b. You might have noticed that there are many more control than treated units here, so add the argument `ratio=3` to the `matchit` command to build a bigger matched dataset by finding three control matches to each treated unit

4. Call `summary` on the object returned by the `matchit` command (see the Saratoga script if you would like to see an example). Comment on the balance of the matching covariates before and after performing matching

5. Repeat part 1 using your matched dataset. How do your results change?

6. While age and building class are two important confounders, others might remain. Looking at the list of variables above, do any seem like plausible confounders? Using your matched dataset above, see if you can find any imbalance on variables *not* used to do the matching in step 3. If they are also associated with revenue per sqft, then we should be worried that there is remaining confounding from these variables.

7. Using plots and summary statistics, see whether there is evidence in the matched data that any of these variables are potential confounders. (Hint: We want summary statistics and/or plots that show any potential relationship between the potential confounder and RevPSF/ -- think boxplots of a continuous variable when green = 1 and green = 0, or scatterplots, or mean differences between groups, etc)

8. Using the additional variables you identified in part 7, generate a new matched dataset and repeat parts 4 & 5 above.
