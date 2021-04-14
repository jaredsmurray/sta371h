---
layout: page
title: Final Project Examples
---

Here are some examples of final project ideas from previous class years, in no particular order. Some of these ideas turned into final projects, some did not. But they were
all good ideas!

## Project 1

I am interested in pursuing a career in commercial real estate. I think it would be interesting to use this project to learn more about the factors that affect real estate sales. The primary research question that I intend to answer is: What factors affect the sale price of property in New York City?

The NYC Property Sales dataset on Kaggle contains information about property sales in New York City between September of 2016 and September of 2017. The dataset includes detailed information on each sale’s location, building class, tax class, easement, number of commercial and residential units, square footage, year built, sale price and sale date.

https://www.kaggle.com/new-york-city/nyc-property-sales (Links to an external site.)Links to an external site.

I plan to separate the data by building class to determine the factors that affect different property types. In addition, it would be interesting to merge this data set with others that contain more information about the area. For example, when looking at the sale price of retail units, it would be interesting to look at information such as the neighborhood’s median income, auto- and foot- traffic patterns, uber picks ups, density of retail stores, etc.  

## Project 2

My primary research question is what observable factors predict whether an apartment in West Campus gets subleased during the summer. Factors may include the price of rent, whether the unit is a single or shared unit, distance from UT campus (for students who are taking summer classes or doing research at UT) or from downtown Austin (for students who are working downtown), flexibility of move-in dates, whether utilities are included, whether parking is included, whether the apartment is furnished, when the posting was made, etc.

The main data source for this question will come from analyzing successful and unsuccessful sublease postings in the UT Austin Sublets/Roommate Finder and UT Austin Apartment Subleasing pages on Facebook. There is a lot of data available on these pages that will make it easy for me to identify which factors are important for prediction. However, a confounding variable may be that tenants will have friends sublet their apartment, so the other factors (price, location, amenities) don’t matter as much as their pre-existing relationships. In addition, it may be difficult to determine whether a posting was successful or unsuccessful because conversations between tenants and prospective subtenants are often held privately over direct messages rather than publicly in the comments section. That is why it would be helpful to collect my own data by sending out surveys with the factors I have identified to UT students who have attempted and/or succeeded in subletting their apartment over the summer.

## Project 3

For my end-of-year project, I would like to find an answer to this question: What characteristic(s) of songs predict their presence on the Billboard Hot 100 chart? What factor(s) make a song more successful on the Hot 100 chart than other songs? Also, what characteristic(s) is/are common between songs that are on the Billboard Hot 100 chart? I’ve always been curious about this question, and I’m hoping that with the help of some data, I can find some sort of an answer. I’m also curious about whether those predictive or common factors have changed over the years and if there’s any sort of trend in those changes. These factors could be anything, including song duration, time signature, key, loudness, energy, and tempo. Another question that I want to possibly answer is what words are common between these songs and whether those popular words have changed over time.

I’ve found several possible data sources that could help me answer these questions. One is a Billboard package that I found on Github that contains data about Billboard Hot 100 songs over time (https://github.com/mikkelkrogsholm/billboard (Links to an external site.)Links to an external site.). Another dataset that could be helpful is the Million Song Dataset (https://labrosa.ee.columbia.edu/millionsong/ (Links to an external site.)Links to an external site.) which contains data about contemporary popular music. It would also be helpful to have data on songs from each year that weren’t present on the Billboard Hot 100 so that I could compare songs on the chart to songs not on the chart, which I haven’t been able to find and would need to find in order to have a meaningful analysis of song success.

Some initial variables that I need to collect are song title and year of presence on the chart, and important predictor variables could include BPM, key, loudness, energy, and any other qualitative of quantitative data that I can find about these songs to enrich my analysis. All of these variables are present in the Million Song Dataset and in the Billboard package. An important outcome variable would be each songs’ peak position on the chart so that I can determine which factors seem to increase the likelihood of success, which is an available in the “wiki_hot_100s” dataset in the Billboard package. I’m not sure what confounding variables would be present in this analysis, but I would continue to think of them as I completed my analysis so that I can ensure that the relationships that I find are actually meaningful.

## Project 4

How well do the last year of a college player’s NCAA statistics correlate to the NBA? I want to analyze how similar college basketball play is to the NBA. Are players that are gifted in college just made for college style basketball or are they made to be good at any level of play. I will figure this out by taking a sample of NBA players that played in the NBA and run linear regressions to see how their last year of a college stat are correlated with their current stats in the NBA. The numbers I will be comparing will be calculated on a per-minute basis or by percentage. I will also be looking at the R^2 value as I want to see how well NBA outcomes were predicted by the model. Other interesting aspects could be making the data conditional on if the players are NBA starters, bench players, All-Stars, 1st, 2nd, or 3rd team all-NBA, along with if they played 1,2, or 3 years of college basketball.

I will scrape the data from ESPN.com getting the current NBA players stats as well as his stats from his last year in college. The data I will be looking at is points per minute, field goal attempts per minute, field goal percentage, three-point attempts per minute, three-point percentage, free-throw attempts per minute, free throw percentage, rebounds per minute, assists per minute, steals per minute, blocks per minute, and turnovers per minute.

## Project 5

All my life, I have had a strong passion for education. This was first prompted by my mother, the best kindergarten teacher ever, and continued by all of my teachers I have had the pleasure of interacting with my whole life. Specifically, I have always been fascinated by all the different factors of a child’s life that contribute to their academic success. There are so many social, socioeconomic, and environmental variables can affect students, but the thought of which exact ones mattered the most intrigued me. For my project, I am very interested in digging deeper into factors such as parent occupations, the number of books in a household, emotional support received from parents, and access to resources. My goal is to see which of these variables, if any, are strong predictors for estimating a child’s academic performance.

In order to collect data to study my question, I will use the Programme for International Student Assessment’s bank of datasets. In these datasets, there are questionnaires from 15 year old students regarding the aforementioned variables and the results of their assessments in the fields of reading, mathematics, and science.

## Project 6
 
Background:

I have been fascinated by the field of medicine- particularly the field of Oncology; I am actually planning to pursue a career as a doctor, preferably with a specialization in interventional radiology. In this field, I believe that data science will be the catalyst that pushes us towards personalized medicine & treatment. During my brief summer as a research assistant at MD Anderson Cancer Center, I was able to see this change first-hand. Doctors began the shift in practice to classify cancers by genetic aberration rather than the area affected (e.g., a patient with lung cancer and prostate cancer could be in the same “basket case” because their cancer was caused by a similar genetic mutation). I am very excited about the opportunity to choose & evaluate our own data set as part of this class, and I am hoping to choose one that will help me further my knowledge of statistics in parallel to this field of medicine.

Primary Research Question(s):

What observable factors predict diagnosis age/survival days in patients with prostate cancer?

This is one of the largest questions that many people are trying to solve. While there have been potential correlations documented in published papers, it is hard to validate them through experimental testing. I think I can further my understanding of this question by investigating potential bivariate & trivariate relationships within the clinical data of a subset of patients. Additionally, by analyzing these different variables (that lead to diagnosis age & survival days) with each other, it is possible to gain insight on which ones are correlated with each other.

What observable factors influence the tumor site of prostate cancer?

This is starting to become a big question in the field on oncology; in some cases, they are “unknown primary carcinomas” where doctors cannot find the tumor site - this makes treatment of the disease significantly more difficult. I aim to further my understanding of the answer to this question by evaluating it against other metrics including: location, genetic mutations, specific mutations, age, etc.

What observable factors could influence the stage of diagnosis?

While this research question may be confounded with a variety of different variables, I thought it may be interesting to evaluate any potential correlation or relationship that is present between the stage of diagnosis of prostate cancer patients.

 

Potential Data Sources:

General Areas & Repositories of Interest:

http://www.cbioportal.org/ (Links to an external site.)Links to an external site.

https://seer.cancer.gov/ (Links to an external site.)Links to an external site.

https://biometry.nci.nih.gov/cdas/plco/ (Links to an external site.)Links to an external site.

 

Potential Specific Data Sets:

http://www.cbioportal.org/study?id=prad_mich&tab=clinicalData (Links to an external site.)Links to an external site.

https://dcc.icgc.org/projects/EOPC-DE/donors (Links to an external site.)Links to an external site.

http://www.cbioportal.org/study?id=prad_su2c_2015&tab=clinicalData (Links to an external site.)Links to an external site.

https://dcc.icgc.org/projects/PRAD-UK/donors (Links to an external site.)Links to an external site.

 

General Considerations:

Important Predictors - subject for analysis

Confounders - specific way in which data was collected, location, geography, what type of data was collected, who collected the data, etc.

Outcomes (Including but not limited to) - patient survival, stage of cancer, diagnosis age


## Project 7

Question: What factors predict home attendance for Texas Football? Which factor is the most important?

As a student at Texas, we expect top-notch sporting events and for our football team to consistently perform at the highest caliber. In order for that to occur, the athletics department must have proper revenues and support, therefore, attendance at sporting events is crucial to the success of the entire athletics department. Football is the primary money-making sport for most athletics departments and therefore the attendance at the events is important to understand.

In order to analyze this question, we will consider several factors, including:

Weather
Texas record percentage
Opponent record percentage
Days into the season
Day of the week
Texas ranking
Opponent Ranking
Combined average ranking
Marketing budget for the year - or for football
Number of drafted players
Ticket sales
Start time

Texas athletics has attendance information online and from looking through previous schedules we can gather the majority of the data. We will then need to compile all of the data into a single source. It might be difficult to find the marketing budget and ticket sales. It is important to consider that there may be year by year variations, so it may be important to instead consider yearly average attendance or segment based on year. I believe that the combined average ranking, marketing budget, and start time will be the most influential.