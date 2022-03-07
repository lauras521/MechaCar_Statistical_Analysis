# MechaCar Statistical Analysis

## Overview

AutosRUs' hads a new prototype called the MechaCar.  It is having production troubles that are blocking progress.  Upper management would like the data analytics team to review the production data for insights that might help the team. For this analysis the team will look at the following:

1. Multiple linear regression analysis to identify which variables in the dataset predict the mpg of the MechaCar prototypes.
2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

## Linear Regression to Predict MPG

Running a mutliple linear regression model in RStudio calculated an r-squared value = 0.71 indicating a strong correlation.  71% of the variability in mpg is explained using this model.  The slope of the linear model is not zero since there are dependent variables which are contribiuting to mpg changes.  Due to the low p-value (5.35e-11) we will reject the null hypothesis that the slope was zero and dependent variables were determined by random chance or error.  By reviewing the Pr(>|t|) values, you can see vehicle length (Pr(>|t|)=2.60e-12) and ground clearance (Pr(>|t|)=5.21e-08) provided a non-random amount of variance to the mpg values in the dataset.  The raw information is located here:  [link to RStudio code with output](https://github.com/lauras521/MechaCar_Statistical_Analysis/blob/a3c7f086c5a7dc1bc73dac8b607ff659c9e75f23/Resources/Deliverable1_RStudio.PNG)
The intercept (Pr(>|t|)=5.08e-08) is also deemed statistically significant which means the intercept term explains a significant amount of variability in mpg when all other independent variables are set to zero.  While this model fits our current data well, we should be careful of overfitting due to the lack of significant variables in our model.  Overfitting shows good performance for your current data set but fails to generalize and predict future data correctly.

## Summary Statistics on Suspension Coils
The team was provided with a dataset of weight capacities for multiple lots of suspension coils to determine if the manufacturing process is consistent across lots.  Summary statistics of mean, median, variance, and standard deviation for PSI as a whole and by lot were determined.  [link to RStudio code with output](https://github.com/lauras521/MechaCar_Statistical_Analysis/blob/72b0e3de9cf71d19c5a416dc7505130427b10002/Resources/Deliverable2_RStudio.PNG)

For the overall data set (all 3 lots included), the summary statistics for the dataframe total_summary are as follows:

<p align="center">
  <img src = https://github.com/lauras521/MechaCar_Statistical_Analysis/blob/72b0e3de9cf71d19c5a416dc7505130427b10002/Resources/Deliverable2_TotalSummary_RStudio.PNG>
</p>


By lot, the summary statistics for the dataframe lot_summary are as follows:

<p align="center">
  <img src = https://github.com/lauras521/MechaCar_Statistical_Analysis/blob/72b0e3de9cf71d19c5a416dc7505130427b10002/Resources/Deliverable2_LotSummary_RStudio.PNG>
</p>

The design specifications for this car indicate the variance of the suspension coils must not exceed 100 PSI.  When all of the lots are grouped together the overall sample does meet this specificiation (var=62) but you can clearly see that Lot 3 does not meet this specification (var=170).  The variance of Lot 1 (var=1) and Lot 2 (var=7.7) are much tighter.  I would recommend separating out Lot 3 and not using it.  

## T-Tests on Suspension Coils

## Study Design: MechaCar vs. Competition

