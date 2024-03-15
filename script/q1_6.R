N = 10000
x1 = rnorm(N)
x2 = rnorm(N)
x3 = rnorm(N)
m = (x1+x2+x3)/3
A = (x1-m)**2 + (x2-m)**2 + (x3-m)**2
B = x1**2 + x2**2 + x3**2
