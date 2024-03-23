a = 2;b = 1
sy = 66;n = 44

theta.mc10 = rgamma(10, shape=a+sy, rate=b+n)
theta.mc100 = rgamma(100, shape=a+sy, rate=b+n)
theta.mc1000 = rgamma(1000, shape=a+sy, rate=b+n)

#平均
pos_mean = (a+sy)/(b+n)
print('平均')
print(c("真値", pos_mean))
print(c("モンテカルロ近似n=10",mean(theta.mc10)))
print(c("モンテカルロ近似n=100",mean(theta.mc100)))
print(c("モンテカルロ近似n=1000",mean(theta.mc1000)))

#1.75における累積分布確率
print('1.75における累積分布確率')
print(c("真値", pgamma(1.75, a+sy, b+n)))
print(c("モンテカルロ近似n=10",mean(theta.mc10 < 1.75)))
print(c("モンテカルロ近似n=100",mean(theta.mc100 < 1.75)))
print(c("モンテカルロ近似n=1000",mean(theta.mc1000 < 1.75)))

#累積97.5%分位点
print('累積97.5%分位点')
print(c("真値", qgamma(0.975, a+sy, b+n)))
print(c("モンテカルロ近似n=10",quantile(theta.mc10, 0.975, name=FALSE)))
print(c("モンテカルロ近似n=100",quantile(theta.mc100, 0.975, name=FALSE)))
print(c("モンテカルロ近似n=1000",quantile(theta.mc1000, 0.975, name=FALSE)))

#収束性の検証
N = 2000
theta_mean = theta_p1.75 = theta_q0.975 = numeric(N)
samples = rgamma(N, a+sy, b+n)
for (i in 1:N){
  theta_mean[i] = mean(samples[1:i])
  theta_p1.75[i] = mean(samples[1:i]<1.75)
  theta_q0.975[i] = quantile(samples[1:i], 0.975, name=FALSE)
}

par(mfrow = c(1, 3))
plot(1:N, theta_mean, xlab='サンプルサイズ', ylab='累積平均', type='l', lwd=2)
par(new=TRUE)
abline(h=pos_mean)
plot(1:N, theta_p1.75, xlab='サンプルサイズ', ylab='1.75における累積分布関数', type='l', lwd=2)
par(new=TRUE)
abline(h=pgamma(1.75, a+sy, b+n))
plot(1:N, theta_q0.975, xlab='サンプルサイズ', ylab='累積97.5%分位点', type='l', lwd=2)
par(new=TRUE)
abline(h=qgamma(0.975, a+sy, b+n))


