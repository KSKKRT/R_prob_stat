n = 10000
x = runif(n, 0, 1)
y = runif(n, 0, 2)
D1 = x^2 + (y-1)^2 <= 1
D2 = (x-2)^2 + y^2 <= 4
D = D1 & D2
D_area = sum(D)/n * 2
plot(x, y, col = ifelse(x^2 + (y-1)^2 <= 1 & (x-2)^2 + y^2 <= 4, 'black', 'white'), pch=20, asp=1, xlim=c(0.0, 2.0))
plot.circle = function(a, b, r, st, ed){
  theta = seq(st, ed, length=100)
  points(a+r*cos(theta), b+r*sin(theta), type='l', asp=1)
}
plot.circle(0, 1, 1, -1/2*pi, 1/2*pi)
plot.circle(2, 0, 2, 1/2*pi, pi)
rect(0, 0, 2, 2)
segments(0, 1, 2, 0)
segments(0, 1, 4/5, 8/5)
segments(2, 0, 4/5, 8/5)