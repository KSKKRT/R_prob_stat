num_sample = 30
sample_size = 20
plot(c(0,num_sample), c(35, 65), type='n', axes=FALSE, xlab='', ylab='')
axis(1)
abline(h=50)
lower = upper = numeric(num_sample)
count = 0
for (i in 1:num_sample){
  x = rnorm(sample_size, 50, 10)
  lower[i] = t.test(x)$conf.int[1]
  upper[i] = t.test(x)$conf.int[2]
  segments(i, lower[i], i, upper[i], lwd=2)
  if(lower[i] <= 50 & upper[i] >= 50) count = count + 1
}
print(c('信頼区間が真値を含んだ割合', count/num_sample))