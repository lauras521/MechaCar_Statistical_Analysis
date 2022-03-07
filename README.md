# MechaCar Statistical Analysis

## Overview

AutosRUs' hads a new prototype called the MechaCar.  It is having production troubles that are blocking progress.  Upper management would like the data analytics team to review the production data for insights that might help the team. For this analysis the team will look at the following:

1. Multiple linear regression analysis to identify which variables in the dataset predict the mpg of the MechaCar prototypes.
2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

## Linear Regression to Predict MPG

Running a mutliple linear regression model in RStudio calculated an r-squared value = 0.71 indicating a strong correlation.  71% of the variability in mpg is explained using this model.  The slope of the linear model is not zero since there are dependent variables which are contribiuting to mpg changes.  Due to the low p-value (5.35e-11) we will reject the null hypothesis that the slope was zero and dependent variables were determined by random chance or error.  By reviewing the Pr(>|t|) values, you can see vehicle length (Pr(>|t|)=2.60e-12) and ground clearance (Pr(>|t|)=5.21e-08) provided a non-random amount of variance to the mpg values in the dataset.  The raw information is located here:  [link to RStudio code](https://github.com/lauras521/MechaCar_Statistical_Analysis/blob/a3c7f086c5a7dc1bc73dac8b607ff659c9e75f23/Resources/Deliverable1_RStudio.PNG)
The intercept (Pr(>|t|)=5.08e-08) is also deemed statistically significant which means the intercept term explains a significant amount of variability in mpg when all other independent variables are set to zero.  While this model fits our current data well, we should be careful of overfitting due to the lack of significant variables in our model.  Overfitting shows good performance for your current data set but fails to generalize and predict future data correctly.

## Summary Statistics on Suspension Coils

## T-Tests on Suspension Coils

## Study Design: MechaCar vs. Competition

