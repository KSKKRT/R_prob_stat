library(mvtnorm)
library(scatterplot3d)

sigma.zero = matrix(c(1, 0.5, 0.5, 1), 2, 2)
x = seq(-3, 3, length=30)
y = x
f = function(x, y) {
  dmvnorm(matrix(c(x, y), ncol=2), mean=c(0, 0), sigma=sigma.zero)
}
z = outer(x, y, f)
persp(x, y, z, theta=45, phi=30, expand = 0.5, col='gray')