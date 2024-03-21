a = c(1, 3)
b = c(1, 2)
sum_y = c(1, 20)
n = c(5, 100)
ylim_ = c(2.5, 10)
par(mfrow=c(2, 2))
for (i in 1:2){
  for (j in 1:2) {
    curve(dbeta(x=x, shape1=a[i], shape2=b[i]), type='l', col='blue'
         ,xlab='theta', ylab='p(theta|y)'
         ,ylim=c(0, ylim_[j])
         ,main = sprintf('beta(%d, %d)prior, n=%d, \ncount of success=%d', a[i], b[i], n[j], sum_y[j]))
    par(new=TRUE)
    curve(dbeta(x=x, shape1=a[i]+sum_y[j], shape2 = b[i]+n[j]-sum_y[j])
          ,add = TRUE, xlab = '', ylab='', col='red')
    legend('topright', legend = c('prior', 'posterior'), col = c('blue', 'red'), lty = c(1, 1))
  }
}