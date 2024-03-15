mu = c(2, 1)
Sigma = matrix(c(16, 2, 2, 9), 2, 2)
n = 20
m = 1000
z = numeric(m)
fisher = function(r) return(log((1+r)/(1-r))/2)
for (i in 1:m){
  xy = mvrnorm(n, mu, Sigma)
  r = cor(xy[,1], xy[,2], method='pearson')
  z[i] = fisher(r)
}
hist(z, xlim=c(-2,2), ylim=c(0,2), prob=TRUE)
par(new=TRUE)
r_0 = 1/6
curve(dnorm(x, fisher(r_0), 1/sqrt(n-3)), xlim=c(-2,2), ylim=c(0,2), xlab='', ylab='', main='', lwd=2)