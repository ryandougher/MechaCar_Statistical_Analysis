### DELIVERABLE 1

# 3. Use the library() function to load the dplyr package
library(dplyr)

#4. Import and read in the MechaCar_mpg.csv file as a dataframe
library(tidyverse)
mecha_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 

#5. Perform linear regression using the lm() function
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

#6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model
summary(mecha_lm) 


### DELIVERABLE 2

#2. Import and read the Suspension_Coil.csv file as a table
mecha_suspension <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 

#3. Create a total_summary dataframe using the summarize() function
total_summary <- mecha_suspension  %>% summarize(Mean_PSI=mean(PSI),
                                                 Median_PSI=median(PSI),
                                                 Var_PSI=var(PSI),
                                                 Std_Dev_PSI=sd(PSI),
                                                 Num_Coil=n(), .groups = 'keep') 
#4. Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot                                                             
lot_summary <- mecha_suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                              Median_PSI=median(PSI),
                                                                              Var_PSI=var(PSI),
                                                                              Std_Dev_PSI=sd(PSI),
                                                                              Num_Coil=n(), .groups = 'keep')                                      


### DELIVERABLE 3

#1. use the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean
t.test(mecha_suspension$PSI,mu=1500)


#2. Use the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean
lot1 <- subset(mecha_suspension, Manufacturing_Lot=="Lot1")
lot2 <- subset(mecha_suspension, Manufacturing_Lot=="Lot2")
lot3 <- subset(mecha_suspension, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
