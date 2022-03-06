library(dplyr)
mecha_car<-read.csv(file="MechaCar_mpg.csv",check.names=F,stringsAsFactors=F)
#generate multiple linear regression model
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_car)
#generate summary statistics
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_car))
