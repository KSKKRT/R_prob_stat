deathrate = as.integer(deaths/pym*100000)
smoke = 1:5
nonsmoke = 6:10
agelabels = c('35-44', '45-54', '55-64', '65-74', '75-84')
plot(smoke, deathrate[smoke], xlab='', ylab='', ylim=c(0, 2200), xaxt='n', yaxt='n', pch=19)
par(new=TRUE)
plot(nonsmoke, deathrate[nonsmoke], xlab='age', ylab='death rate per 100,000', ylim=c(0, 2200), xaxt='n', pch=17)
axis(1, at=nonsmoke, labels = agelabels)
legend('topleft', legend=c('smoke', 'nonsmoke'), pch=c(19,17))