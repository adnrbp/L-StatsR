year <- c(1,2,3,4,5)
sales <- c(175,200,180,100,50)
df_names <- c("year", "sales")

assumptions <- data.frame(year,sales)
names(assumptions)<- df_names
print(assumptions)

# define inputs
price <- 20
print_cost <- .5
ship_cost <- 2

# add revenue, expense, and profit variables
cashflow <- assumptions

cashflow$revenue <- cashflow$sales * price
cashflow$direct_expense <- cashflow$sales * (print_cost + ship_cost) 
cashflow$gross_profit <- cashflow$revenue - cashflow$direct_expense

# print cashflow
print(cashflow)
