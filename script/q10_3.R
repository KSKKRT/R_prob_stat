n = 1000
mu_ = 5
sd_ = 1
x = rnorm(n, mu_, sd_)
mad_mean = numeric(n)
for (n in 1:n) mad_mean[n] = mean(mad(x[1:n]))
plot(1:n, mad_mean, xlab='sample size', ylab='E[MAD]')
abline(h=sd_)