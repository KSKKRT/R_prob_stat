library(MASS)

n = 10000
x1 = rnorm(n, 10, 5)
x2 = rpois(n, 10)
x3 = rcauchy(n, 0, 3)
print(fitdistr(x1, 'normal'))
print(fitdistr(x2, 'Poisson'))
print(fitdistr(x3, 'cauchy'))