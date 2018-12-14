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



apple3 <- c(109.49,109.90,109.11,109.95,111.03,112.12,113.95,113.30,115.19,115.19,115.82,115.97,116.64,116.95,117.06,116.29,116.52,117.26,116.76,116.73,115.82)


micr3 <-c(59.20,59.25,60.22,59.95,61.37,61.01,61.97,62.17,62.98,62.68,62.58,62.30,63.62,63.54,63.54,63.55,63.24,63.28,62.99,62.90,62.14)

date3 <- as.Date(c("2016-12-01","2016-12-02","2016-12-05","2016-12-06","2016-12-07","2016-12-08","2016-12-09","2016-12-12","2016-12-13","2016-12-14","2016-12-15","2016-12-16","2016-12-19","2016-12-20","2016-12-21","2016-12-22","2016-12-23","2016-12-27","2016-12-28","2016-12-29","2016-12-30"))


stocks3 <- data.frame(date3, micr3, apple3)

stocks3$micr_buy <- ifelse(test = (stocks3$micr3 > 60 & stocks3$micr3 <62), yes = 1, no = 0)

stocks3$apple_date <- ifelse(test = stocks3$apple3 > 117, yes = stocks3$date3, no = NA)

#from numeric to Date type
class(stocks3$apple_date) <- "Date"


