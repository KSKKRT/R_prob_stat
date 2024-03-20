library(effsize)
set.seed(42)
n = 100
x = rnorm(n, 50, 10)
y = rnorm(n, 55, 15)
print(cohen.d(x, y))
print(cohen.d(x, y, hedges.correction = TRUE))