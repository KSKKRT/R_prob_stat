MAX = 1000
mesh = 0.1
s = 1
x = seq(0, 10, by=mesh)
n = length(x)
alpha = beta = numeric(MAX)
for (i in 1:MAX) {
  y = 1 + 0.5*x + rnorm(n, 0, sd=s)
  res = lm(y~x)
  alpha[i] = summary(res)$coefficients[1,1]
  beta[i] = summary(res)$coefficients[2,1]
}