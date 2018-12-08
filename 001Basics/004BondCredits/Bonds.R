credit_rating <- c("AAA", "AA", "A", "BBB", "AA", "BBB", "A")

factor(credit_rating)

credit_rating2 <- c("BB", "AAA", "AA", "CCC", "AA", "AAA", "B", "BB")
credit_factor2 <- factor(credit_rating2)

str(credit_rating2)
str(credit_factor) #indicate levels


#bucket credit bonds
AAA_rank <- c(31,48,100,53,85,73,62,74,42,38,97,61,48,86,44,9,43,18,62,38,23,37,54,80,78,93,47,100,22,22,18,26,81,17,98,4,83,5,6,52,29,44,50,2,25,19,15,42,30,27)

head(AAA_rank)
AAA_factor <- cut(x = AAA_rank, breaks = c(0, 20, 40, 60, 80, 100))

head(AAA_factor)


AAA_factor <- cut(x = AAA_rank, breaks = c(0, 25, 50, 75, 100))
levels(AAA_factor)<-c("low","medium","high", "very_high")
plot(AAA_factor)



#no order specified in bars
#order least risky to most risky
#AAA, AA, A, BBB, BB, B, CCC, CC, C, D
#2 ways: 1. while create, 2. existing unordered


credit_factor_ordered <- factor(credit_rating, ordered = TRUE, 
                                levels = c("AAA", "AA", "A", "BBB"))

ordered(credit_factor, levels = c("AAA", "AA", "A", "BBB"))


#identify levels:
unique(credit_rating2)
#credit_factor_ordered <- factor(credit_rating2, ordered = TRUE, levels = c("AAA","AA","A","BBB","BB","B","CCC","CC", "C", "D"))
credit_factor_ordered <- factor(credit_rating2, ordered = TRUE, levels = c("AAA","AA","BB","B","CCC"))
plot(credit_factor_ordered)



#delete 2 values:
keep_level <- credit_factor2[c(-3 ,-7)]
plot(keep_level)
drop_level <-credit_factor2[c(-3,-7),drop=TRUE]
plot(drop_level)


#avoid convert characters into factors with "stringsAsFactors"
credit_rating <- c("AAA", "A", "BB")
bond_owners <- c("Dan", "Tom", "Joe")

bonds <-data.frame(credit_rating,bond_owners,stringsAsFactors = FALSE)
str(bonds)

bonds$credit_factor <- factor(bonds$credit_rating, ordered = TRUE, levels = c("AAA","A","BB"))
str(bonds)






