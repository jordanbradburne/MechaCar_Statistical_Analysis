## Deliverable 1
# ------------------------------------------------------------------------------
#load dplyr package
library(dplyr)

#read file
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MechaCar)
# multiple linear regression
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = MechaCar)
# find the p-value and r-squared
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = MechaCar))

# ------------------------------------------------------------------------------

## Deliverable 2
#read file
Suspension <- read.csv(file='Suspension_coil.csv',
                       check.names=F,stringsAsFactors = F)
head(Suspension)

# create a summary dataframe
total_summary <- Suspension %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
# create summaries for each lot
lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# ------------------------------------------------------------------------------

## Deliverable 3
#perform t-test to determine if the PSI across 
# Perform t-test across all Lots
t.test(Suspension$PSI,mu = 1500)
# Perform t-test on Lot 1
t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# Perform t-test on Lot 2
t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# Perform t-test on Lot 3
t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)







