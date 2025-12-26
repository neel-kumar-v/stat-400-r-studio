# Q1-A
sample <- c(16, 12, 18, 13, 15, 21, 19)
df_var <- length(sample) - 1
alpha <- 0.20
variance <- sum((sample - mean(sample))^2) / df_var

lower_chi_sq <- qchisq(1 - alpha / 2, df_var)
upper_chi_sq <- qchisq(alpha / 2, df_var)

lower_bound <- variance * df_var / lower_chi_sq
upper_bound <- variance * df_var / upper_chi_sq

round(lower_bound, 3)
round(upper_bound, 3)

# Q1-B
alpha <- 0.2

lower_bound <- 0
upper_chi_sq <- qchisq(alpha, df_var)
round(upper_chi_sq, 3)
upper_bound <- variance * df_var / upper_chi_sq

round(upper_bound, 3)
# Q1-C
alpha <- 0.04

t_value <- qt(1 - alpha / 2, df_var)

lower_bound <- mean(sample) - t_value * sqrt(variance / length(sample))
upper_bound <- mean(sample) + t_value * sqrt(variance / length(sample))

round(lower_bound, 3)
round(upper_bound, 3)

# Q1-D
alpha <- 0.06
t_value <- qt(1 - alpha, df_var)
lower_bound <- mean(sample) - t_value * sqrt(variance / length(sample))
upper_bound <- 100000

round(lower_bound, 3)
round(upper_bound, 3)

# Q2-A
sample <- c(1320, 1400, 1300, 1460, 1450)
df_var <- length(sample) - 1
mean <- mean(sample)
variance <- sum((sample - mean)^2) / df_var

# Q2-B
alpha <- 0.05
t_value <- qt(1 - alpha / 2, df_var)
lower_bound <- mean - t_value * sqrt(variance / length(sample))
upper_bound <- mean + t_value * sqrt(variance / length(sample))

round(lower_bound, 3)
round(upper_bound, 3)

# Q2-C
alpha <- 0.05
lower_chi_sq <- qchisq(1 - alpha / 2, df_var)
upper_chi_sq <- qchisq(alpha / 2, df_var)
round(lower_chi_sq, 3)
round(upper_chi_sq, 3)

lower_bound <- variance * df_var / lower_chi_sq
upper_bound <- variance * df_var / upper_chi_sq

round(lower_bound, 3)
round(upper_bound, 3)

# Q3-A

mu <- 20
standard_deviation <- 3
n <- 10
alpha <- 0.2

sample <- rnorm(n, mu, standard_deviation)
df_var <- length(sample) - 1

mean_value <- mean(sample) + c(-1, 1) * qnorm(1 - alpha / 2) * standard_deviation / sqrt(n) # nolint: line_length_linter.
mean_value


# Q3-B
# repeat the above code 20000 times to see how many intervals include the mean
count <- 0
repeats <- 20000
confidence_intervals <- matrix(0, repeats, 2)
for (i in 1:repeats) {
    sample <- rnorm(n, mu, standard_deviation)
    mean <- mean(sample)
    confidence_intervals[i, ] <- mean + c(-1, 1) * qnorm(1 - alpha / 2) * standard_deviation / sqrt(n) # nolint: line_length_linter.
    if ((mu >= confidence_intervals[i, 1]) && (mu <= confidence_intervals[i, 2])) {
        count <- count + 1
    }
}
count
count / repeats