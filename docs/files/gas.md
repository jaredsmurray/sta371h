### Gas prices in Austin

For this exercise, you'll need this dataset: [GasPrices.csv](http://jaredsmurray.github.io/sta371h/data/GasPrices.csv).  This data set came from a student project in a previous iteration of this class. The students described the project as follows:

> Have you ever been driving through town looking to make a quick stop to fill up your car with gas and noticed that different gas stations are advertising different gas prices? Have you ever stopped to wonder why this might be the case? Could there be some underlying factors responsible for this noticeable difference in price, specifically for the same, regular unleaded mix of gas on the same day at the same time?

> To observe prices and other traits of gas stations firsthand, we visited 101 gas stations in the Austin area. In two groups of two, we split the city into east and west sections with Lamar Blvd.~serving as the dividing line.  At each gas station, we observed all necessary characteristics while staying in the car. We used the Maps app to determine the address and zip codes of the gas stations and the transportation feature within Maps on the iPhone to locate the gas stations themselves. We input the data directly into an Excel spreadsheet. Once we had visited all 101 gas stations, we used the US Census Bureau's American Fact Finder to input the median income for each zip code. 


The variables in the data set are as follows:
  
  - ID: Order in which gas stations were visited  
- Name: Name of gas station  
- Price: Price of regular unleaded gasoline, gathered on Sunday, April 3rd, 2016  
- Pumps: How many pumps does the gas station have?  
- Interior: Does the gas station have an interior convenience store?  
- Restaurant: Is there a restaurant inside the gas station?  
- CarWash: Does the gas station have a car wash attached?  
- Highway: Is the gas station accessible from either a highway or a highway access road?  
- Intersection: Is the gas station located at an intersection?  
- Stoplight: Is there a stoplight in front of the gas station?  
- IntersectionStoplight: three-way variable for if the gas station was at an intersection and/or a stoplight (None, Intersection (only), or Both).  
- Gasolines: How many types of gasoline are offered? (Regular, midgrade, etc.)   
- Competitors: Are there any gas stations in sight?  
- Zipcode: Zip code in which gas station is located  
- Address: Physical location of gas station  
- Income: Median Household Income of the ZIP code where the gas station is located based on 2014 data from the U.S. Census Bureau  
- Brand: is the gas station branded by one of the major oil companies (ExxonMobil, ChevronTexas, Shell) or not (Other)?   
  
  People have a lot of pet theories about what explains the variation in prices between gas stations.  Here are three such theories:  
a) Gas stations charge more if they lack direct competition in sight, all else being equal.    
b) Gas stations in richer areas charge more, all else being equal.  
c) If a gas station doesn't have direct competition within sight, then it will obviously charge more in richer areas.  But if it has direct competition, then the correlation between price and income will disappear.  

1. Build a regression model including an appropriate set of predictors of gas prices and potential confounders of the relationship between gas prices and *both* variables of interest -- the presence of competing gas stations within sight and median household income -- in order to address theories a and b. (Your model should include potential confounders of both the price - competitors and price - income relationships). Quantify the strength of evidence in the data for theories a) and b) using the bootstrap and a 95% confidence interval

2. Add an interaction term to your model to address part c. Quantify the strength of evidence in the data for theory c) using the bootstrap and a 95% confidence interval
