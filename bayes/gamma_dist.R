par(mfrow=c(2, 3))
curve(dgamma(x, 1, 1), main='a=1, b=1', xlim=c(0, 10), xlab='theta', ylab='p') #指数分布
curve(dgamma(x, 2, 2), main='a=2, b=2', xlim=c(0, 10), xlab='theta', ylab='p')
curve(dgamma(x, 4, 4), main='a=4, b=4', xlim=c(0, 10), xlab='theta', ylab='p')
curve(dgamma(x, 2, 1), main='a=2, b=1', xlim=c(0, 10), xlab='theta', ylab='p')
curve(dgamma(x, 8, 4), main='a=8, b=4', xlim=c(0, 10), xlab='theta', ylab='p')
curve(dgamma(x, 32, 16), main='a=32, b=16', xlim=c(0, 10), xlab='theta', ylab='p')