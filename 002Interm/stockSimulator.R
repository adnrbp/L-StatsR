stock_price <- 52.1
repeat {
	stock_price <- stock_price * runif(1,.99, 1.01)
	print(stock_price)

	if(stock_price > 52.5){
		print("Stock price is above 52.5! Sell!")
		break
	}
}

#loop n.2:
stock_price <- 126.34

repeat {
  stock_price <- stock_price * runif(1, .985, 1.01)
  print(stock_price)
  
  if(stock_price < 124.5) { # 125
    print("Stock price is below 124.5! Buy it while it's cheap!")
    break
  }
}



#loop n.3: (not random)
stock_price <- 67.55

repeat {
  stock_price <- stock_price * .995
  print(stock_price)
  
  if(stock_price < 66) {
    print("Stock price is below 66! Buy it while it's cheap!")
    print(stock_price)
    break
  }
  print(stock_price)
  
}


#loop n.4: while
stock_price <- 52.1

#restrict top-down; before: top-up.
while(stock_price <= 52.5 ) {
  stock_price <- stock_price * runif(1,.99, 1.01)
  print(stock_price)
}
print("Stock price is above 52.5! Sell!")






#debt reduction over months with a plot
debt <- 5000
#counter
i <- 0
# plot data
x_axis <- i
y_axis <- debt

plot(x_axis, y_axis, xlim = c(0,10), ylim = c(0,5000))

while (debt > 0) {

  debt <- debt - 500
  i <- i + 1

  x_axis <- c(x_axis, i)
  y_axis <- c(y_axis, debt)
  
  plot(x_axis, y_axis, xlim = c(0,10), ylim = c(0,5000))
}


#debt with limited cash to pay simulation
debt <- 5000
cash <- 4000

while (debt > 0) {
  debt <- debt - 500
  cash <- cash - 500
  print(paste("Debt remaining:", debt, "and Cash remaining:", cash))

  if (cash == 0) {
    print("You ran out of cash!")
    break
  }
}




apple <- c(109.49,109.90,109.11,109.95,111.03,112.12,113.95,113.30,115.19,115.19,115.82,115.97,116.64,116.95,117.06,116.29,116.52,117.26,116.76,116.73,115.82)
date <- as.Date(c("2016-12-01","2016-12-02","2016-12-05","2016-12-06","2016-12-07","2016-12-08","2016-12-09","2016-12-12","2016-12-13","2016-12-14","2016-12-15","2016-12-16","2016-12-19","2016-12-20","2016-12-21","2016-12-22","2016-12-23","2016-12-27","2016-12-28","2016-12-29","2016-12-30"))


stocks <- data.frame(date, apple)


#inspect each row:
for (row in 1:nrow(stock)) {
    price <- stock[row, "apple"]
    date  <- stock[row, "date"]

    if(price > 116) {
        print(paste("On", date, 
                    "the stock price was", price))
    } else {
        print(paste("The date:", date, 
                    "is not an important day!"))
    }
}



