# 3*kendall = 2*spaerman
num_data =10
trial = 100
x = matrix(runif(num_data*trial), nrow = num_data, ncol=trial)
y = matrix(runif(num_data*trial), nrow = num_data, ncol = trial)
spear = cor(x, y, method='spearman')
ken = cor(x, y, method='kendall')
plot(spear, ken, xlab='Spearman', ylab='Kendall', xlim=c(-1, 1), ylim=c(-1, 1), pch=20)
grid()
abline(0, 2/3, lwd=2)