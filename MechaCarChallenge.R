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