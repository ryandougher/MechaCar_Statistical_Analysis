# MechaCar Statistical Analysis

## Purpose

AutosRU's is a car manufacturer with a new product out, the MechaCar, which is suffering from production troubles. This project analyzes the production data for insights taht may help the manufacturing team. The analysis includes:
- Multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
- Summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
- T-tests to determine if the manufacturing lots are statistically different from the mean population.
- A statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Linear Regression to Predict MPG

![Image1](https://user-images.githubusercontent.com/96550846/162809831-59722c3c-e8a9-490f-9ead-98e56ada1601.png)

- Vehicle length and ground clearance are variables that provide a non-random amount of variance to the mpg values.
- The p-value is 5.35e-11, which is smaller than the assumed significance level of 0.05%, suggesting the slope of this model is not zero.
- The R-squared value is 0.7149, meaning this regression model effectively predicts the mpg.

## Summary Statistics on Suspension Coils

![Image2](https://user-images.githubusercontent.com/96550846/162809871-1084ee46-b596-43db-af6a-ca33629df389.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.
- When looking at all manufacturing lots, the variance of the coils is 62.29 PSI. This is within the 100 PSI requirment.
- Looking at the individual lots, Lot 1 and Lot 1 are well within the 100 PSI requirment, at 0.98 and 7.47 respecitively.
- Lot 3 is not within the 100 PSI requirement, at 170 PSI.

## T-Tests on Suspension Coils

Here is a summary of the t-test across all manufacturing lots
<img width="418" alt="Ttest_summary" src="https://user-images.githubusercontent.com/96550846/162809903-c2b2a36f-c3ce-4f05-8e26-4352b7407994.png">

The mean of the data is 1498.78. Our p-value is greater than 0.05, which means there is not enough evidence to support rejecting the null hypothesis.

![Ttest1](https://user-images.githubusercontent.com/96550846/162809934-5cc1a83d-4eeb-4265-a13b-91f1f95d3194.png)

For Lot 1, the true mean is 1500. The p-value is 1, meaning we cannot reject the null hypothesis.

Similarly, Lot 2 has a mean 1500.2 and a p-value of 0.6072. We cannot reject the null hypothesis.

![Ttest2](https://user-images.githubusercontent.com/96550846/162809981-57864ca6-4e6e-4bcd-a393-548470f2c809.png)

The mean of Lot 3 is 1496.14. The p-value is 0.04168, which is less than significance level of 0.05. We can reject the null hypothesis that this mean and the population mean are not statistically different.

![Ttest3](https://user-images.githubusercontent.com/96550846/162810030-8f52c398-ce66-473a-9c8d-599dd80e5826.png)

## Study Design: MechaCar vs Competition

Using the data, a statistical study can be performed to compare the performance of the MechaCar against the performance of other competitors.

To quantify how the MechaCar performs against the competition, the following metrics can be tested:
- cost
- fuel-efficiency
- safety rating
- Resale Value

Null Hypothesis: Based on certain performance metrics, there is no statistical difference between the MechaCar's pricing and the competition's pricing.

Althernative Hypothesis: The MechaCar's pricing differs from the competition's pricing.

To test this, multiple linear regression would be used to find the correlation between the performance metrics and pricing. This can help determine which metrics impact pricing the greatest.
