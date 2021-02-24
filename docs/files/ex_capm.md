### Market model  

For this exercise, you'll need to download [marketmodel.csv](../data/marketmodel.csv). You have weekly returns for 6 individual stocks:

- Apple, AAPL
- Google, GOOG
- Merck, MRK
- Johnson & Johnson, JNJ
- Walmart, WMT
- Target, TGT

and an ETF tracking the S&P 500 (SPY).

1. Plot the returns for each of the 6 stocks individually against the returns of S&P 500. (That is, make 6 scatterplots with S&P 500 returns on the x-axis). Describe the relationships you see.

2. Regress the returns for each of the 6 stocks on the return of S&P 500 (use each of the stocks as a Y variable, and SPY as the X variable).   Which stock seems to be the most tightly coupled to the movements of the wider market? What statistic from the regression fit did you use to measure this?

3. What do you notice about the intercepts? Are they mostly small, or mostly large? Interpret these intercepts in terms of whether any of the individual stocks appear to be outperforming the market.

4. How do we interpret the slopes? What information do they give us about the stocks relative to the market?

5. Based on the fitted model, are any of the stocks are more or less volatile than the market as a whole?

6. Assess the evidence in the data for the following claim: “Even after adjusting for their shared dependence on the broader market, we should expect Wal-Mart’s stock market returns to be most closely related to Target’s returns than with any of the other four firms, because they are both large retailers.” (Hint: Consider the 6 models you fit in Part (A). Each model leads to a set of residuals for one particular stock. Which set of residuals has the largest correlation with the residuals for the model having Wal-Mart as the response variable? Why do you think this is so?)

