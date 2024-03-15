library(MASS)

N = 100000
mp = data.frame(math, phys)
Sigma = var(mp)
mp.mu = c(mean(math), mean(phys))
mp.rand = mvrnorm(N, mp.mu, Sigma)
mp.matrix = cbind(mp.rand[,1], mp.rand[,2])
mp.sum = apply(mp.matrix, 1, sum)