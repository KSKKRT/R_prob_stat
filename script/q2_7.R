trial = 1000
n = 5
spearman = numeric(trial)
kendall = numeric(trial)
for (i in 1:trial){
  x = runif(n)
  y = runif(n)
  spearman[i] = cor(x, y, method='spearman')
  kendall[i] = cor(x, y, method='kendall')
}
res = 3 * kendall - 2 * spearman
plot(res, ylim=c(-1.5, 1.5))
