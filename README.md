# MechaCar_Statistical_Analysis

## Goals:
1. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population
4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

## 1. Linear Regression to Predict MPG

<img width="474" alt="Screen Shot 2021-10-03 at 9 55 02 PM" src="https://user-images.githubusercontent.com/85847344/135796413-585b15c2-cbc9-407b-8c40-fda5ca035b65.png">

1.  Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

  * Variance of a non-random variable is usually 0. So the intercept, vehicle_length, and ground_clearance coeeficients provided a non-random amount of variance to the mpg values.
  * The two variables that had the most amount of random variance are gspoiler_angle and AWD .

2.  Is the slope of the linear model considered to be zero? Why or why not?

  * Our slope is not considered to be zero because of the relationship between 2 independent variables (vehicle length and ground clearance) and the dependent variable (mpg).

3.  Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

   * The Multiple R-squared value is 0.7149, which means that the model predicts MPG of MechaCar effectively at a 71% rate. But there is. possibility that there will be more factors not included in this dataset that could make a better prediction.

## Summary Statistics on Suspension Coils

### Total Summary:
<img width="336" alt="total_summary" src="https://user-images.githubusercontent.com/85847344/135796860-3098945f-7b5c-436f-90d7-2e6513fdb154.png">

### Lot Summary:
<img width="494" alt="lot_summary" src="https://user-images.githubusercontent.com/85847344/135796976-bd2b0a2b-f1ab-45e3-8304-d0990f9f65b5.png">

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

 * The manufacturing lots grouped together meet the design specification; the variance on PSI is 76.

 * Individually:
    * Lot 1 and 2 meet the design specifications. They have the variance on PSI as 1 and 10 respectively.
    * Lot 3 does not meet the design specification with variance on PSI at 220.

## T-Tests on Suspension Coils

Summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

### Perform t-test across all Lots:
* For all t-tests, the significance level was 0.05 percent. The t-test compared the means of the Suspension Coil dataset, 1498.78, a mean of 1500. All t-tests resulted in the means being statistically similar.

* A t-test across all suspension coil manufacturing lots had a p-value of 0.06.
* This is above the significance level so the two means are statistically similar.

<img width="463" alt="Screen Shot 2021-10-03 at 10 07 27 PM" src="https://user-images.githubusercontent.com/85847344/135797287-352d04dc-899d-49bd-80c3-38ee6e8e0da1.png">

### Perform t-test on Lot 1
* A t-test for Lot 1 gave a p-value of 1.
* This is above the significance level so the two means are statistically similar.

<img width="463" alt="Screen Shot 2021-10-03 at 10 07 56 PM" src="https://user-images.githubusercontent.com/85847344/135797325-becd6f9b-2e27-4790-a8a0-727c3a1dc171.png">

### Perform t-test on Lot 2
* The p-value for Lot 2 t-test was 0.6072.
* This is above the significance level so the two means are statistically similar.

<img width="445" alt="Screen Shot 2021-10-03 at 10 08 34 PM" src="https://user-images.githubusercontent.com/85847344/135797380-f0628577-7a8d-47e2-a898-654cb56898a3.png">

### Perform t-test on Lot 3
* The p-value for Lot 3 t-test was 0.4168. 
* This is above the significance level so the two means are statistically similar.

<img width="451" alt="Screen Shot 2021-10-03 at 10 08 50 PM" src="https://user-images.githubusercontent.com/85847344/135797400-ba42b854-616f-4816-88f9-cb0df13ac7da.png">

## Study Design: MechaCar vs Competition

### Description of Statistical Study:
Owning and maintaining a vehicle can be costly, so AutosRUs wants to ensure that their customers are going to get the better deal over their competitors. Thus means they would like to measure the rate of depreciation for MechaCars against other manufacturers.

### Metric to Test
Rate of depreciation: the value of the vehicle over time

### Null and Alternate Hypothesis
Null hypothesis: Rate of depreciation for MechaCars is equal to the competitors
Alternative hypothesis: Rate of depreciation for MechaCars is not equal to the competitors

### Statistical Test Used
Use multiple linear regression to predict the rate of depreciation for MechaCar

### What Data is Needed
Data needed will be vehicle values, age, and mileage to perform multiple linear regression.
