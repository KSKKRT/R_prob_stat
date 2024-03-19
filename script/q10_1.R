num_X = 3
trial = 1000
X = rexp(num_X*trial, rate=5)
Xm = matrix(X, nrow=trial, ncol=num_X)
X_mean = apply(Xm, 1, mean)
hist(X_mean, prob=TRUE)
curve(dnorm(x, mean(X_mean), sd(X_mean)), add=TRUE, lwd=2)