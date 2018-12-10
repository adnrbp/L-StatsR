company <- c("A", "A", "A", "B", "B", "B", "B")
cash_flow <- c(1000, 4000, 550, 1500, 1100, 750, 6000)
year <- c(1, 3, 4, 1, 2, 4, 5

cash <- data.frame(company, cash_flow, year)
head(cash,n=4)
tail(cash,n=3)
# company is a factor
str(cash)

cash[3,2]
cash[5,"year"]


# moving money backwards
cash_flow <- 100
interest <- 10
periods <- 2

present_value <- cash_flow * (1 + interest /100) ^ - periods
print(present_value)



cash$present_value <-cash$cash_flow * (1 + .05)^-cash$year
total_pv <- sum(cash$present_value)

#Filtering company B and calculate total present Value (individual contribution)
cash_B <- subset(cash,company=="B")
total_pv_B <- sum(cash_B$present_value)

#split cash data frame by company in a new list
grouping <- cash$company
split_cash_companies <- split(cash, grouping)

#modify each company cash flow differently
split_cash_companies$A$cash_flow <- split_cash_companies$A$cash_flow * 2
split_cash_companies$B$cash_flow <- split_cash_companies$B$cash_flow * 3

new_cash <- unsplit(split_cash_companies, grouping)


#split cash data frame by  year in a new list
grouping2 <- cash$year
split_cash_years <- split(cash, grouping2)
#mix the list again
original_cash <- unsplit(split_cash_years,grouping2)


