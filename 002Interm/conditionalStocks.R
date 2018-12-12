microsoft <- c(59.20,61.25,60.22,62.95)
ebay <- c(17.44, 18.32, 19.11, 18.22)

dates <- as.Date(c("2017-01-02", "2017-05-03", "2017-08-04", "2017-10-17"))

stocks <- data.frame(dates, microsoft,ebay)


#buy ebay stocks if crosses below 18
stocks$ebay_buy <- stocks$ebay < 18

print(stocks)

#sell microsoft stocks if crosses above 61
stocks$microsoft_sell <- stocks$microsoft > 61 

#define a range to buy microsoft stocks:
stocks$microsoft_buy_range <- (stocks$microsoft > 60.5) & (stocks$microsoft < 61.5)

stocks$good_dates <- (stocks$date > as.Date('2017-01-21')) & (stocks$date < as.Date('2017-08-25'))


print(stocks)


subset(stocks,(stocks$ebay < 18.30) & (stocks$microsoft > 60))

