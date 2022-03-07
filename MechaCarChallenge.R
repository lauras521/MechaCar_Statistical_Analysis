library(dplyr)
mecha_car<-read.csv(file="MechaCar_mpg.csv",check.names=F,stringsAsFactors=F)
#generate multiple linear regression model
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_car)
#generate summary statistics
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_car))


suspension_coil<-read.csv(file="Suspension_Coil.csv",check.names=F,stringsAsFactors=F)
total_summary <- summarize(suspension_coil, mean(PSI), median(PSI),var(PSI),sd(PSI))
total_summary
lot_groups<- group_by(suspension_coil, Manufacturing_Lot)
lot_summary <- summarize(lot_groups, mean(PSI), median(PSI),var(PSI),sd(PSI))
lot_summary

#overall - determine if PSI across all lots is statistically different than the population mean of 1500
sample_PSI<-suspension_coil[ ,c("PSI")] 
t.test(sample_PSI,mu=1500) #compare sample versus population mean give of 1500

#lot 1
sample_PSI_lot1<-subset(suspension_coil, Manufacturing_Lot=="Lot1", select= c("PSI"))
t.test(sample_PSI_lot1,mu=1500)

#lot 2
sample_PSI_lot2<-subset(suspension_coil, Manufacturing_Lot=="Lot2", select= c("PSI"))
t.test(sample_PSI_lot2,mu=1500)

#lot 3
sample_PSI_lot3<-subset(suspension_coil, Manufacturing_Lot=="Lot3", select= c("PSI"))
t.test(sample_PSI_lot3,mu=1500)