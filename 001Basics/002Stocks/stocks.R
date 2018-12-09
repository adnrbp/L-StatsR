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




apple <- c(109.49, 109.90, 109.11, 109.95, 111.03, 112.12, 113.95, 113.30, 115.19, 115.19, 115.82, 115.97, 116.64, 116.95, 117.06, 116.29, 116.52, 117.26, 116.76, 116.73, 115.82)
ibm <- c(159.82, 160.02, 159.84, 160.35, 164.79, 165.36, 166.52, 165.50, 168.29, 168.51, 168.02, 166.73, 166.68, 167.60, 167.33, 167.06, 166.71, 167.14, 166.19, 166.60, 165.99)
micr <- c(59.20, 59.25, 60.22, 59.95, 61.37, 61.01, 61.97, 62.17, 62.98, 62.68, 62.58, 62.30, 63.62, 63.54, 63.54, 63.55, 63.24, 63.28, 62.99, 62.90, 62.14)

cbind_stocks <- cbind(apple,ibm,micr)
rbind_stocks <- rbind(apple,ibm,micr)
#relationship between apple and microsoft stock prices
plot(cbind(apple,micr))



#portfolio with lists
name <- "Apple and IBM"
apple <- c(109.49, 109.90, 109.11, 109.95, 111.03)
ibm <- c(159.82, 160.02, 159.84, 160.35, 164.79)
cor_matrix <- cor(cbind(apple, ibm))

portfolio <- list(name,apple,ibm,cor_matrix)

#name to de elements of the portfolio list:
names(portfolio) <- c("portfolio_name", "apple", "ibm", "correlation")

#look at stocks of the portfolio list:
portfolio[c(2,3)]
#inspect the correlation stored:
portfolio$correlation



