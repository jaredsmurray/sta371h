# Sampling distributions: The College Scorecard
  

To help students and their families make informed choices about attending colleges, 
the Department of Education collects data on the entire population of 4 year institutions of higher education
in the U.S. and [makes this it available to the general public](https://collegescorecard.ed.gov/) (some data  are suppressed due to small sample sizes, to preserve the confidentiality of individual students). Here we're going to concern ourselves with the average net price of attendance and its relationship to outstanding debt when a student enters repayment of their federal student loans. We want to learn about cost and debt in the entire population of four year institutions.

In this exercise we're going to pretend that the DOE *didn't* collect that data for the entire population, and instead we have to estimate it using a random sample (the same way we might assess public opinion among American adults or eligible voters by drawing a random sample, rather than asking tens or hundreds of millions of people their opinion). Each of your breakout room teams will be a different "pollster" who collected data on 50 colleges, with the goal of using that data to learn about the entire population of 1,453 institutions.

###Exercise:
In [this zip file](scorecard_samples.zip) there are 15 random samples of 50 colleges taken from the total population. In your breakout rooms, **use the CSV file corresponding to your breakout room number** to compute the sample mean average net annual price (in the column average_net_price) and to fit a linear model with median debt at repayment (in the column median_debt) as the response. Keep those numbers handy, as you will report them when we come back together.