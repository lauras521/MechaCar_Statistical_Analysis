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

### T-Test to Compare All Manufacturing Lots vs. Mean PSI for Population = 1500
The following code was used in RStudio to run 4 different t-tests on the PSI for the coils.  

<p align="center">
  <img src = https://github.com/lauras521/MechaCar_Statistical_Analysis/blob/af4da05d70cc42ef8bedd708b3a393b42bf38861/Resources/Deliverable3_RStudioCode.PNG>
</p>

The null hypothesis to compare all 3 manufacturing lots as one sample to the population mean is the following:

H<sub>0</sub> : There is no statistical difference between the observed sample mean and its presumed population mean.

After running the t-test, you can see the p-value = 0.06.  Since the p-value is not less than 0.05 we cannot reject the null hypothesis and therefore conclude that there is no statistical difference between the observed sample mean and its presumed population mean.  

<p align="center">
  <img src = https://github.com/lauras521/MechaCar_Statistical_Analysis/blob/af4da05d70cc42ef8bedd708b3a393b42bf38861/Resources/Deliverable3_RStudio_Par1.PNG>
</p>

### T-Tests to Compare Each Manufacturing Lot vs. Mean PSI for Population = 1500

The null hypothesis to compare each manufacturing lot as one sample to the population mean is the following:

* H<sub>0</sub> : There is no statistical difference between the observed sample mean of Lot 1 and its presumed population mean.
* H<sub>0</sub> : There is no statistical difference between the observed sample mean of Lot 2 and its presumed population mean.
* H<sub>0</sub> : There is no statistical difference between the observed sample mean of Lot 3 and its presumed population mean.


After running three t-tests, you can see the following:

* Lot 1: p-value = 1.  Since the p-value is not less than 0.05 we cannot reject the null hypothesis and therefore conclude that there is no statistical difference between the Lot 1 mean and its presumed population mean.  
* Lot 2: p-value = 0.6072.  Since the p-value is not less than 0.05 we cannot reject the null hypothesis and therefore conclude that there is no statistical difference between the Lot 2 mean and its presumed population mean.  
* Lot 3: p-value = 0.04168.  Since the p-value is less than 0.05 we reject the null hypothesis and therefore conclude that there is a statistical difference between the Lot 3 mean and its presumed population mean.  

<p align="center">
  <img src = https://github.com/lauras521/MechaCar_Statistical_Analysis/blob/af4da05d70cc42ef8bedd708b3a393b42bf38861/Resources/Deliverable3_RStudio_Part2.PNG>
</p>


## Study Design: MechaCar vs. Competition

