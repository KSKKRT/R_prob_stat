j = 1:41
x = -2 + 0.1*(j-1)
y = x**3 - 3*x + rnorm(length(x), 0, 0.2)
plot(x, y)
curve(x^3-3*x, x, add=TRUE)

res = lm(y~x+I(x^2)+I(x^3))