#事前分布は一様分布(n=860のうちn1=441が正例)
a = 1; b = 1
theta.prior.mc = rbeta(10000, a, b)
log_odds_prior = log(theta.prior.mc/(1-theta.prior.mc))
n_1 = 441; n_0 = 860 - n_1
theta.pos.mc = rbeta(10000, a+n_1, b+n_0)
log_odds_pos = log(theta.pos.mc/(1-theta.pos.mc))

#密度推定
plot(density(log_odds_prior), type='l', main='', xlab='', ylab='',
    col='blue', ylim=c(0, 6), xlim=c(-5, 5))
par(new=TRUE)
plot(density(log_odds_pos), type='l',
     main='対数オッズの事前分布と事後分布のモンテカルロ平均',
     xlab='対数オッズ', ylab='確率分布', col='red',
     ylim=c(0, 6), xlim=c(-5, 5))
legend('topright', lty=c(1, 1), legend = c('prior', 'posterior'), col = c('blue', 'red'))
