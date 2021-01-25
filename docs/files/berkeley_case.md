---
title: "Apparent or actual discrimination in graduate school admissions?"
output: 
  html_document: 
    keep_md: yes
---

In this case study we have data from graduate admissions at UC Berkeley from 1973. The university was concerned about apparent gender bias in graduate admissions, because they observed graduate school admission rates for men being significantly higher than for women. The university administration asked a statistics professor to dig into the data and see if there was real evidence of gender bias in admission decisions.

The paper reporting on the findings is quite readable if you're interested in learning more: P.J. Bickel, E.A. Hammel and J.W. O'Connell (1975). "Sex Bias in Graduate Admissions: Data From Berkeley". Science. 187 (4175): 398–404. doi:10.1126/science.187.4175.398.

### UC Berkeley Data (Part A - Male Applicants)


We'll get some practice working with joint, conditional, and marginal probabilities
using this data. First, let's look data from the 2127 male applicants to the four largest departments (labelled A, B, C, and D here):


```
##           Dept
## Admit        A   B   C   D
##   Admitted 512 353 120 138
##   Rejected 313 207 205 279
```




As discussed in your reading for today, for your calculations below we you can stick with the counts in the table or normalize them to probabilities/frequencies first. For these problems stick with the counts, to avoid annoying rounding & decimals.

1. What is the overall admission rate for men (i.e. $Pr(Admitted)$)?
1. What is $P(A, Admitted)$? (Recall: this is the probability that an applicant applied to department A and was admitted)
2. Compute the same joint admission probability for departments B, C, and D.
3. What is $P(A)$, the marginal probability that a male applicant applied to Department A?
4. Compute the same probability for departments B, C, and D.
5. Does it seem that men are applying to different departments at different rates? (No need to consider statistical significance here, just comment on the probabilities themselves)
6. Compute the conditional probability $P(Admitted\mid A)$. This is the chance that a male applicant would be admitted, {\em given} they applied to department A. 
7. Compute the same conditional probability above for departments B, C, and D.
8. Based on the last question, does it seem that men are being *admitted* to different departments at different rates? (Again, no need to consider statistical significance here, just comment on the probabilities themselves)
9. Based on your calculations above, does it seem like there is a relationship between the chance a male applicant applies to a given department and the selectivity of that department? (i.e. are they more likely to apply to less selective departments, more likely to apply to less selective departments, or about equally likely to apply to any department, regardless of selectivity?)

### UC Berkeley Data (Part B - Comparing Female and Male Applicants)


Here's the equivalent table for the $n= 1101$ female applicants:


```
##           Dept
## Admit        A   B   C   D
##   Admitted  89  17 202 131
##   Rejected  19   8 391 244
```



1. What is  $P(Admitted)$ for women? Compare it to Part A problem 1.
2. Compute the marginal probability that a female applicant applies to each department.  Does it seem that women are applying to different departments at different rates? How does this compare to the marginal probabilities you computed for the men in part A problems 4-5? (Still no need to consider statistical significance here.)
6. Compute the conditional probability for each department, as in part A problems 7-8.
8. Based on the last question, does it seem that women are being *admitted* to different departments at different rates? (Again, no need to consider statistical significance here, just comment on the probabilities themselves)
9. Based on your calculations above, does it seem like there is a relationship between the chance a female applicant applies to a given department and the selectivity of that department?
10. Compare your answers from part B problem 4 to part A problem 9. Does it still seem like there is evidence of gender bias in graduate admissions, as we might have concluded by comparing overall admissions rates (in problem 1 of both parts)? If so, is the direction and size the same? 

