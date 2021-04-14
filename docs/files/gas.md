## Gas prices in Austin   

### The data

For this exercise, you'll need to download the [GasPrices.csv](http://jaredsmurray.github.io/sta371h/data/GasPrices.csv) data set from the class website.  This data set came from a student project in spring of 2016.  (It was a pretty awesome project.)  I'll let the students who did the project describe things in their own words:

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

### The questions

People have a lot of pet theories about what explains the variation in prices between gas stations.  Here are several such theories:  
A) Gas stations charge more if they lack direct competition in sight, all else being equal.    
B) Gas stations in richer areas charge more, all else being equal.  
C) If a gas station doesn't have direct competition within sight, then it will obviously charge more in richer areas.  But if it has direct competition, then the correlation between price and income will disappear. (All else being equal)
D) Gas stations from the major brands (Shell, ExxonMobil, ChevronTexaco) charge more, all else being equal.  (See the Brand variable.)  
E) The market for gas is so competitive that the brand of the gas station is entirely irrelevant for predicting prices once we account for other factors
F) Gas stations at stoplights can charge more, all else being equal. 
G) Gas stations with direct highway access can charge more, all else being equal.  

Before you begin, define a new response variable Cents measured in units of cents and Income in units of $10,000 using the following code:

```
GasPrices$Cents = GasPrices$Price*100
GasPrices$Income10K = GasPrices$Income/10000
```

1. Construct a plot for each theory that examines the overall relationships between the relevant variables (i.e., ignoring the "all else equal" part of the theory for now). Do you see evidence supporting these theories? (Hint: For theory C, you will need to construct a plot involving three variables)
2. Build *one* regression model suitable for assessing all these theories. (Hints: Think carefully about how categorical variables are transformed into factors and then into dummy variables, so that the theory maps onto a regression coefficient or coefficients)
3. Using your fitted model, assess each theory providing appropriate measures of uncertainty. You may use confidence intervals/the bootstrap and/or hypothesis tests as appropriate (Hint: Remember from your reading how we evaluate the existance of a partial effect for a categorical variable)

