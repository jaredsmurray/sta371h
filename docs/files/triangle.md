---
layout: page
title: Hypothesis testing in sensory evaluations
---
One of the earliest examples of randomized experiments in statistics involved sensory testing, that is, assessing whether a food or beverage produced in two different ways (or stored under two different conditions, etc) yields a product that is *perceptibly* different to consumers.[^1]

There are many different ways to design such an experiment, but most involve presenting subjects with samples of the product from each experimental condition -- without identifying which sample comes from which condition -- and asking the subjects to pick out which samples are different. Perhaps the simplest design presents each subject with three samples, two from one condition and one from the other, and asks them to identify which sample is different from the other two. These are called "triangle tests". The goal of a triangle test is typically to assess whether anyone in some relevant population can detect a difference between samples from the different conditions.

1. Watch this short video on triangle tests: [Triangle test video](https://www.youtube.com/watch?v=nFXfg3ONgl0)
3. What is the probability that a *single* subject identifies the different sample if the null hypothesis is true (i.e. through random guessing)? 
4. Now suppose that we collect data from $n$ subjects. What is the *null hypothesis* of the relevant hypothesis test? (Hint: Remember that we are interested in assessing whether *anyone* can tell the difference between samples from each condition). What is an appropriate *test statistic* to measure evidence against the null hypothesis?
5. For the given test statistic, how should we define "extreme" when computing the p-value? Assume that all the participants are honestly trying to identify the different sample.
6. Suppose that you have data from $n=18$ subjects, 8 of whom correctly identified the different sample. Simulate the distribution of the test statistic under the null hypothesis and compute the p-value. (Use at least 10,000 iterations in your simulation.). Hint: Think of our coin tossing examples. You can use the `sample` to simulate from a binary random variable with probability other than 0.5 using the `probs` argument: `sample(c(0,1), 3, replace=TRUE, prob=c(0.2, 0.8))` returns three draws of a binary random variable where the probability of a 1 is 0.8.
7. Now suppose that you had data from $n=54$ subjects, 24 of whom correctly identified the different sample. Repeat the simulation to obtain the p-value associated with your test statistic in this dataset and compare it to the p-value in part 6. In both experiments,the same proportion (4/9) of subjects made the correct selection; explain why the p-value here is lower.

[^1] That example is from Sir R.A. Fisher's 1935 book "The Design of Experiments", and involved an experiment with a single test subject who claimed she could tell the difference between a cup of tea with milk prepared by adding the milk first or the tea first. You can watch a short video about the experiment [here](https://www.youtube.com/watch?v=lgs7d5saFFc) or read its [Wikipedia page](https://en.wikipedia.org/wiki/Lady_tasting_tea), which steps through calculating p-values for different outcomes analytically. 


  
