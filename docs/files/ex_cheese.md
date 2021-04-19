---
layout: page
title: Cheese sales and promotional displays: Modeling demand
---

This case study considers data on sales volume, price, and advertisting
display activity for packages of Borden sliced cheese, available as
“cheese.csv” [here](https://jgscott.github.io/STA371H_Spring2018/data/cheese.csv). 
For each of 88 stores (store) in different
US cities, we have repeated observations of the weekly sales volume
(vol, in terms of packages sold), unit price (price), and whether the
product was advertised with an in-store display during that week (disp
= 1 for display). Altogether there are 5,555 observations in the data set.
We want to understand whether the displays are effective at increasing demand,


1. Ignoring price, do the in-store displays appear to have an effect on
sales volume? Conduct an appropriate hypothesis test.

2. Different stores have different overall sales volumes, and different preferences for running display ads, making store an important potential confounder of the effect of display ads. Using a regression model, estimate the expected *percentage change* in sales volume
when a display is present, controlling for the store, and provide a 95\% confidence interval. 
Note: I’m asking for a percentage
(multiplicative) change due to the display, rather than an
absolute (additive) change. Think carefully about why we should
expect the change to be multiplicative, and about what kind of
transformation would be appropriate for answering this question
with a single number. (Hint: if $log(y_1)=a$ and $log(y_2) = a + b$,
then what is the ratio $y_2/y_1$, expressed in terms of $a$ and $b$?)

3. You suspect that this relationship is further confounded by pricing strategies (for example, some stores may have be aggressive in general, 
leading them to both set lower prices and run displays). Propose a model that allows you to adjust for both price and store differences in assessing the effect of in-store displays on sales volume.
    
    (Remember back to our milk demand example: a typical model for price elasticity 
    of demand is of the form $\hat{y}_i = \gamma x_i^{\beta_1}$ where $\hat{y}_i$ is expected sales, 
    $x_i$ is price, $\gamma$ is a constant, and $\beta_1$ is the
    elasticity. We talked about how to fit this model with least squares; adapt that strategy to this problem where we also have the store and presence of display as predictors of demand.)
    
    Fit this model and provide the estimated expected *percentage change* in sales volume when a display is present, controlling for store and price. 
    Were you right to suspect confounding?


4. You suspect that the shape of the demand curve -- specifically the price elasticity (the partial relationship between price and sales volume) --
might change when an in-store display is present. Construct and fit an appropriate model to explore this possibility. Are your suspicions supported by the data? 

5. What should Kroger’s in Dallas/Ft. Worth charge for cheese in
display weeks? Should their price change when they’re not running
a display ad? Assume that the wholesale cost of cheese is $1.50 per
unit.
    
    (Hint: Think back to our milk demand case study; what do you need to change in that code to answer this problem?)