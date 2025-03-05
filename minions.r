# Q1
x <- dbinom(3, 8, prob = 0.2/0.65)
x

# Q2
x <- 1 - dbinom(0, 5, prob = 0.45)
x

# Q3
x <- 1 - dgeom(0, 0.2) - dgeom(1, prob = 0.2)
x

# Q4
x <- dnbinom(10 - 3, 3, 0.45)
x
