m = 10; n = 4
num = 100000
X = rchisq(num, df=m)
Y = rchisq(num, df=n)
Z = (X/m)/(Y/n)
hist(Z, prob=TRUE,xlim=c(0,6),breaks=8000)
curve(df(x,m,n),add=TRUE)