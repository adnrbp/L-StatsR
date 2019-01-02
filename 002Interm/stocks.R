
#apple <- c(109.49, 109.90, 109.11, 109.95, 111.03, 112.12, 113.95, 113.30, 115.19, 115.19, 115.82, 115.97, 116.64, 116.95, 117.06, 116.29, 116.52, 117.26, 116.76, 116.73, 115.82)
#ibm <- c(159.82, 160.02, 159.84, 160.35, 164.79, 165.36, 166.52, 165.50, 168.29, 168.51, 168.02, 166.73, 166.68, 167.60, 167.33, 167.06, 166.71, 167.14, 166.19, 166.60, 165.99)
#micr <- c(59.20, 59.25, 60.22, 59.95, 61.37, 61.01, 61.97, 62.17, 62.98, 62.68, 62.58, 62.30, 63.62, 63.54, 63.54, 63.55, 63.24, 63.28, 62.99, 62.90, 62.14)



apple <- c(0.37446342,-0.71883530,0.76986527,0.98226467,0.98171665,1.63217981,-0.57042563,1.66813769,0.00000000,0.54692248,0.12951131,0.57773562,0.26577503,0.09405729,-0.65778233,0.19778141,0.63508411,-0.42640287,-0.02569373,-0.77957680)
ibm <- c(0.1251408,-0.1124859,0.3190691,2.7689429,0.3458948,0.7014998,-0.6125390,1.6858006,0.1307267,-0.2907839,-0.7677657,-0.0299886,0.5519558,-0.1610979,-0.1613578,-0.2095056,0.2579329,-0.5683858,0.2467056,-0.3661465)
micr <- c(0.08445946,1.63713080,-0.44835603,2.36864053,-0.58660583,1.57351254,0.32273681,1.30287920,-0.47634170,-0.15954052,-0.44742729,2.11878010,-0.12574662,0.00000000,0.01573812,-0.48780488,0.06325111,-0.45828066,-0.14287982,-1.20826709)
stock_return <- list(apple,ibm,micr)
stock_return2 <-data.frame(apple,ibm,micr)

percent_to_decimal <- function(percent, digits = 2) {
    decimal <- percent / 100
    
    round(decimal, digits)
}

lapply(stock_return, FUN = percent_to_decimal)

lapply(stock_return2,FUN=mean)

# Sharpe ratio = [mean(returns) - risk free rate] / std(returns)
sharpe <- function(returns) {
    (mean(returns) - .0003) / sd(returns)
}

lapply(stock_return2,FUN=sharpe)

#with risk free rate
sharpe2 <- function(returns, rf=.0003) {
    (mean(returns) - rf) / sd(returns)
}

lapply(stock_return2,FUN=sharpe, rf=.0004)
lapply(stock_return2,FUN=sharpe, rf=.0009)

sapply(stock_return2,FUN=sharpe)
#lapply equivalent
sapply(stock_return2,FUN=sharpe,simplify=FALSE,USE.NAMES=FALSE)