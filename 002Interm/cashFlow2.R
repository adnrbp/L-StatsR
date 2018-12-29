percent_to_decimal <- function(percent, digits = 2) {
    decimal <- percent / 100
    
    round(decimal, digits)
}

percents <- c(25.88, 9.045, 6.23)
percent_to_decimal(percents)
percent_to_decimal(percents,digits=4)

#present value function
pv <- function(cash_flow, interest, year) {
    
    disMult <- 1 + percent_to_decimal(interest)
    cash_flow * disMult ^ -year
}

pv(1200,7,3)

