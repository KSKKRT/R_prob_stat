j = 1:41
x = -2 + 0.1*(j-1)
f = function(x, sd) x**3 - 3*x + rnorm(length(x), 0, sd)
sd = seq(0.1, 9.9, by=0.1)
n = length(sd)
a = c = numeric(n)
for (i in 1:n) {
  y = f(x, sd[i])
  res = lm(y~x+I(x^2)+I(x^3))
  a[i] = summary(res)$coefficients[1, 4] < 0.05
  c[i] = summary(res)$coefficients[3, 4] < 0.05
}