# sample stock prices
apple_stocks <- c(109.49,109.90,109.11,109.95,111.03,112.12,113.95,113.30,115.19,115.19,115.82,115.97,116.64,116.95,117.06,116.29,116.52,117.26,116.76,116.73,115.82)
ibm_stocks <- c(159.82, 160.02, 159.84)



#plot(apple_stocks)
#plot(apple_stocks, type ="p") #plot points
plot(apple_stocks, type ="l") #plot lines

#portfolio return #using weighted average
#weight = % of total cash in each stock 

#portfolio1:
apple_ret <- 5 # %
ibm_ret <- 7

apple_weight <- .4
ibm_weight <- .6

portf_1_ret <- apple_ret * apple_weight + 
				ibm_ret * ibm_weight

portf_1_ret

#portfolio2
microsoft_ret <- 7
sony_ret <- 9
microsoft_weight <- .2
sony_weight <- .8

portf_2_ret <- microsoft_ret * microsoft_weight +
				sony_ret * sony_weight
portf_2_ret














# Weights, returns, and company names
ret <- c(7, 9)
weight <- c(.2, .8)
companies <- c("Microsoft", "Sony")

# Assign company names to your vectors
names(ret) <- companies
names(weight) <- companies

# Multiply the returns and weights together 
ret_X_weight <- ret * weight

# Print ret_X_weight
ret_X_weight

# Sum to get the total portfolio return
portf_ret <-sum(ret_X_weight)

# Print portf_ret
portf_ret







#stock prices: same time period
microsoft <- c(59.20,59.25,60.22,59.95)
ebay <- c(17.44, 18.32, 19.11, 18.22)

#create 2 columns (for each company)
cbind(microsoft, ebay)
#bind by rows
rbind(microsoft,ebay)

#relationship between 2 stocks (how much they move relative to each other)
cor(microsoft, ebay)
microsoft_ebay_matrix <- cbind(microsoft, ebay)
cor(microsoft_ebay_matrix)



