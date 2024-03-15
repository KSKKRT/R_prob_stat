n = 30
k = 5
total = n * k
trial = 10000
mu = 0
noisevar = 1
q = numeric(trial)
for (i in 1:trial) {
  x = rnorm(total, mu, noisevar)
  xmat = matrix(x, n, k)
  mus = apply(xmat, 1, mean)
  S = sum((n-1)*var(mus))/(total-k)
  q[i] = (max(mus)-min(mus))/(S/sqrt(n))
}

hist(q, prob=TRUE)