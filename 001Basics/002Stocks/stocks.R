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

