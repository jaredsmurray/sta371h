---
title: 
---

# Beauty in the Classroom, Part 2

In part one of this case study we concluded that even after adjusting for different
sets of plausible confounding variables, there did seem to be an association between
an instructor's appearance and their course evaluations. In part two we will ask whether
this effect is different for men and women.

1. For the moment, ignore the confounding variables you identified in part one. Fit
a regression model using gender and beauty that allows the effect of the beauty rating
to vary between men and women.
2. Based solely on the point estimates from your model in part 1, does appearance have a larger
association with course evaluations for men or women?
3. Using the plotModels function from the mosaic package, plot the two regression lines
for men versus women. Describe how the gap in course evaluations between men 
4. Using the bootstrap, assess the evidence in the data for different effects of beauty
for men and women. Provide a relevant 95% confidence interval. (Hint: First identify the 
coefficient that governs whether the effects differ, and the value it would have to take 
for there to be no difference. Is that a plausible value for the interesting coefficient?)
5. Repeat parts 1, 2, and 4, but now using the confounding variables and other predictors you
identified in part 1. Do your conclusions change?
