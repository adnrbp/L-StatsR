cost <- 100000
life <- 60 #months
salvage <- 10000

Months <- seq(1,60,1)
Units <- c(60,50,40,30,60,50,40,30,60,50,40,30,60,50,40,30,60,50,40,30,60,50,40,30,60,50,40,30,60,50,40,30,60,50,40,30,60,50,40,30,60,50,40,30,60,50,40,30,60,50,40,30,60,50,40,30,60,50,40,30)

production <- data.frame(Months=Months, Units=Units)
# Depreciation with Straight-line # Constant
production$Depr_Straight <- (cost - salvage)/life
# Depreciation on units Produced
production$Depr_UnitsProd <- (cost - salvage)*(production$Units) / sum(production$Units)

# Plot two depreciation schedules
ggplot(production, aes(x = Month)) + 
    geom_line(aes(y = Depr_Straight)) + 
    geom_line(aes(y = Depr_UnitsProd))