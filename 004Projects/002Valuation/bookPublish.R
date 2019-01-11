year <- c(1,2,3,4,5)
sales <- c(175,200,180,100,50)
df_names <- c("year", "sales")

assumptions <- data.frame(year,sales)
names(assumptions)<- df_names
print(assumptions)


price <- 20  #sell book price
print_cost <- .5
ship_cost <- 2

# add revenue, expense, and profit variables
cashflow <- assumptions

cashflow$revenue <- cashflow$sales * price
cashflow$direct_expense <- cashflow$sales * (print_cost + ship_cost) 
cashflow$gross_profit <- cashflow$revenue - cashflow$direct_expense

# print cashflow
print(cashflow)


#automate with function
calc_business_model <- function(assumptions, price, print_cost, ship_cost){
    cashflow <- assumptions
    cashflow$revenue <- cashflow$sales * price
    cashflow$direct_expense <- cashflow$sales * (print_cost + ship_cost) 
    cashflow$gross_profit <- cashflow$revenue - cashflow$direct_expense
    cashflow
}
book_assumptions <- assumptions
calc_business_model(book_assumptions, 20, 0.5, 2)$gross_profit
calc_business_model(book_assumptions, 25, 0.5, 2)$gross_profit



# Business model
cashflow$revenue <- cashflow$revenue + 2 * cashflow$sales
cashflow$gross_profit <- cashflow$revenue - cashflow$direct_expense

# Income statement
cashflow$depr_sl <- (1000 - 0) / 5
cashflow$operating_profit <- cashflow$gross_profit - cashflow$depr_sl
cashflow$tax <- cashflow$operating_profit * 0.3
cashflow$net_income <- cashflow$operating_profit - cashflow$tax

# Inspect dataset
cashflow
