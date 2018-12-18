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