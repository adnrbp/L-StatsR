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


