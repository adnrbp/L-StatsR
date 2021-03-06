#Rscript invest.R
savings <- 100
growth_multiplier <- 1.1
years <- 7

result <- savings * growth_multiplier^years
result

profit <- FALSE
desc <- "you have invested some amount of money"

week_days <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
#percent:
apple_eq_returns <- c(1,-2,3,1,-2)
nvidia_eq_returns <- c(4,-1,2,3,1)
names(apple_eq_returns) <- week_days
names(nvidia_eq_returns) <- week_days

apple_eq_returns
nvidia_eq_returns

total_return <- apple_eq_returns + nvidia_eq_returns
total_return


#base information
interest_rate <- 10 #percent per month
starting_cash <- 50 #dolars

#Return multiplier
mult <- 1 + interest_rate / 100

#new amount
new_cash <- starting_cash * mult

jan_mult <- mult
feb_interest <- 5
feb_mult <-  1 + feb_interest / 100

#multiple periods:
#10% return + 5% return  (diff months)
new_cash <- starting_cash * jan_mult * feb_mult