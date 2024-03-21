# n = 10, 100, p=0.2,0.8それぞれの二項分布を描画

n = c(10, 100)
theta = c(0.2, 0.8)
ylim_ = c(0.30, 0.10)
par(mfrow=c(2,2))
for (i in 1:2) {
  for (j in 1:2) {
      barplot(dbinom(1:n[i], n[i], theta[j]),
            names.arg = 1:n[i],
            xlab='x',
            ylab=sprintf('P(X=x|theta=%g,n=%g)', theta[j], n[i]),
            ylim=c(0, ylim_[i]),
    )
  }
}
