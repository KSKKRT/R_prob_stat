MAX = 1000
mesh = 0.1
x = seq(0, 10, by=mesh)
n = length(x)
alpha = beta = numeric(MAX)
for (i in 1:MAX) {
  y = x - sqrt(3) + rgamma(n, shape=3, scale=1/sqrt(3))
  res = lm(y~x)
  alpha[i] = summary(res)$coefficients[1, 1]
  beta[i] = summary(res)$coefficients[2, 1]
}
sda = sqrt(1/MAX+mean(x)^2/sum((x-mean(x))^2))
sdb = sqrt(1/sum((x-mean(x))^2))