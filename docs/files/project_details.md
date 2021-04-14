---
layout: page
title: Final Project Details
---

You will submit three items for your final projects:

1. A concise writeup of no more than 5 pages in 12 point font with 1 inch margins. This isn't a quota; you could write an A+ report in fewer pages. These 5 pages may be accompanied by other supplemental materials (lengthy details about data collection, survey questionnaires, large tables of regression output, or things that just didn't make the cut for the main document) but your main findings should be contained in those 5 pages (see details below). Your grade will be based on the contents of the 5 page document and -- for group projects -- completing 2 and 3 below, as well as your peer feedback.

2. A CSV (comma separated value) file of your dataset, and plain text documentation of each variable. The documentation should be at least as detailed as the gas prices project and similar exercises we have done (e.g. the Beauty in the classroom case study).

3. An R script that reads in this CSV file and reproduces your analysis. It doesn't need to generate every plot or table exactly as it appears in the report, but it should give me a "raw" version (e.g., your report might include a regression table that is truncated or contains rounded numbers, and your R script might give me raw output). If you use other software to make plots or generate tables give me enough code and/or details to reproduce these as well.

Items 2 and 3 are essential; your analysis must be reproducible to obtain a passing grade. In general I take a holistic approach to grading these projects: Some projects involve significant data collection efforts, while others use more complicated methods on ``second-hand'' datasets, and one approach is not better than the other. What's important is that the data and methods are appropriate for addressing a well-posed question(s). You will be evaluated both on the technical correctness and the overall intellectual quality of your approach and write-up. I will also take into account peer feedback from your other group members; my default is to assign the same grade to all members of a group, but I reserve the right to adjust individual grades up or down based on peer feedback.

Some general tips:

- As much as possible, use plots to enhance your story. But you don't waste precious space on diagnostic plots that look good, or plots that are less informative than you'd hoped. Everything in the report should have a reason for existing there.
- Make sure that your estimates are accompanied by appropriate measures of uncertainty: A standard error, CI, or a histogram of bootstrapped estimates are all acceptable, as are hypothesis test and p-values where appropriate.
- Use professional language. Be clear and concise; avoid narration ("Next we will...")
- Do not make claims for which you have no evidence. Do not say “will” or “would” when you really mean “may” or “might”. Be very careful about using language that implies causation.  


## Report Structure

Your report should have four sections: Introduction, Methods, Results, and Discussion. Below are a few specific pointers for each section. I don't have specific length requirements or suggestions, although I expect that both the Introduction and Discussion will take less than a page -- often much less. The length of your Methods and Results sections will vary depending on project specifics. Use your judgment here.

### Introduction

Outline the research question(s): What were you trying to do here? It's a good idea to motivate why this topic should interest the reader.  Conclude with a quick summary of your main findings.

### Methods

Describe how you got your dataset(s). If you did your own data collection, you'll have a lot to say here. If you re-used a dataset that you found online you will have less, but you should clearly describe where the data came from. Include details like the sample size and whether you dropped any observations due to missing data or incomplete merges. You should also clearly define and describe any particularly important variables that are non-obvious in their construction, but you don't have to discuss every single variable in detail. 

Describe the models you will present in the Results section. For example: "We fit linear regression models to predict log(price) using house size and number of bathrooms as predictors. We took a log of price because..." Describe how you recoded variables if you did so.

Most of your plots and tables should appear in the results section, but you may present particularly interesting or helpful exploratory data analysis or summaries here -- especially if they motivate the modeling choices above. Think the kinds of scatterplots/boxplots we draw before fitting regression models, or selected output from the summary() command in R.

### Results 

Make sure you address all the research questions from the introduction. If you have more than one, consider using subsections. 

As you present your results, remember that this is a report for an external audience, not the narrative you'd write in your data analysis diary. You don't need to talk about all the dead ends here -- key in on the most appropriate models/tables/plots you fit.  By "dead ends" I don't mean (for example) a regression model where the CI for a coefficient on an interesting variable contains zero. That's useful information, not a dead end! It's perfectly OK and often desirable to use more than one model to answer a question, as long as you contextualize how the results differ (if they differ).  But you don't need to discuss every single model you entertained.

A few specific pointers about reporting results:

- Choose your units to make the numbers manageable, and make sure that you mention what those units are.
- Plots and tables should be presented to support your conclusions (but if you don't refer to a figure/table in the text, cut it out!)
	- Both plots and tables should be labeled (Figure X, Table Y) with informative captions and referenced in the text.
	- Plots should have informative axis labels: "Price of gas (cents)", "Duration of nap (minutes)". dat$X2 is a useless axis label. I've been guilty of these in class or in homework solutions on occasion, but they shouldn't appear in a report.
	- Pie charts are awful. Don't use them! There is always a better alternative. (Line or bar charts are preferable.)
- Include as much supporting material in the main text as possible. 
    - Plots referenced in the main text should appear there. 
    - Regression tables should too, unless you have several of them or they are unusually large. You can truncate these for the main text -- presenting only the coefficients, SEs/CIs, p-values (if desired), R^2 and residual standard error is actually preferable. If you discuss the results of several model specifications to answer a research question, you can present one fit in the main text and the remainder in supplemental material.
- When reporting estimates in the text, use good rounding sense:
    - In general you should be rounding estimates to *at least* one decimal place beyond the precision of the original data, and rounding standard errors to one decimal place beyond the estimate
        - E.g., if you record GPA in tenths of a point (3.1, 2.9, 3.7...) report the sample mean to the hundredth (3.24) and its SE to the thousandth (SE 0.341)
    	- A better rule is not to be "hyperprecise" -- it is often appropriate to round further. For example, if you estimate a population mean to be 40.2, with a standard error of 5.09, write something like "The average number of chips consumed per bowl of queso is approximately 40 (95% CI: +/- 11 chips) (see Table 1)." Think about the level of precision that is meaningful to the reader. Extra decimal places are often just clutter, particularly when they are smaller than the standard error. (You'll also notice I rounded up the SE; it's OK to be conservative if you're doing extra rounding)
- To the extent possible, report estimates and standard errors or CIs along with the  p-values of any hypothesis tests. Often bootstrapping the test statistic is a sensible thing to do.

### Discussion

Give an overall discussion of research questions and your findings. Were the results in line with your expectations (you don't necessarily need to do a formal hypothesis test, but presumably you had some ideas about what you'd find)? Discuss potential limitations of your analysis: For example, was there a potential lurking variable you couldn't collect? Were data collected on a potentially biased sample, or on representative sample that came from a less-than-ideal population? Did you run into missing data issues?  You shouldn't feel embarrassed or defensive of these -- all analyses have limitations, and it's important to be clear about them and discuss how they might impact your findings.  Finally, what is/are the take-home message(s): What do we know now that we didn't before? What should we do about it? 




