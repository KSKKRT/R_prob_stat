N = 10000
ave = numeric(N)
sd_c = numeric(N)
x = rcauchy(N)
for (n in 1:N) {
  ave[n] = mean(x[1:n])
  sd_c[n] = sd(x[1:n])
}
plot(1:N, ave)
abline(h=1.0)
#plot(1:N, sd_c)
