N = 1000
p = c(4, 3, 2, 1) / 10
x = rmultinom(N, size=10, prob = p)
expmatrix = rep(N*p, N)
z = x - expmatrix
chisqval = apply(z*z/expmatrix, 2, sum)
hist(chisqval)