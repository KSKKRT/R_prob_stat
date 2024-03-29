MAX = 1000
mesh = 0.1
x = seq(0, 10, by=mesh)
n = length(x)
alpha = beta = numeric(MAX)
a = -sqrt(3)
b = sqrt(3)
for (i in 1:MAX) {
  y = 1 + 0.5*x + runif(n, a, b)
  res = lm(y~x)
  alpha[i] = summary(res)$coefficients[1, 1]
  beta[i] = summary(res)$coefficients[2, 1]
}

sdal = sqrt(1/MAX+mean(x)^2/sum((x-mean(x))^2))
sdbe = sqrt(1/sum((x-mean(x))^2))