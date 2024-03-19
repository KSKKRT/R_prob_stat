erlang = function(k, lambda, x) return(
  lambda^k*x^(k-1)*exp(-lambda*x)/gamma(k)
)

k = 10
lambda = 2
n = 100000
mu = k/lambda
var = k/lambda^2
x = rexp(k*n, rate = lambda)
xm = matrix(x, nrow=n, ncol=k)
s = apply(xm, 1, sum)
hist(s, prob=TRUE, ylim=c(0, 0.30), xlim=c(0, mu+3*var))
curve(erlang(k, lambda, x), add=TRUE)
abline(v=mu, lty=3, lwd=3)