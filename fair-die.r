n <- 10000
die1 <- sample(1:6, n, replace = TRUE)
die2 <- sample(1:6, n, replace = TRUE)

sum <- die1 + die2
prob1 <- length(sum[sum <= 6]) / n
prob1 

prob2 <- length(sum[sum <= 6 & die1 > 2]) / length(sum[sum <= 6])
prob2

# Error compared to theoretical value
abs(prob1 - 15/36) / (15/36)
abs(prob2 - 0.4) / (0.4)

