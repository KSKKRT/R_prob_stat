# ニュートン法
newton = function(f, df, x_0, ep=10^-6, max_trial=10000){
  x = numeric(max_trial+1)
  x[1] = x_0
  for (i in 1:max_trial){
    x[i+1] = x[i] - f(x[i]) / df(x[i])
    if (abs(x[i+1]-x[i])<ep) {
      x = x[1:i+1]
      break
    }
  }
  return(x)
}

#実行例 x^2 - 4x + 1 = 0(x = 2 +- sqrt(3)= 0.2679492, 3.732051)
f = function(x) {x^2-4*x+1}
df = function(x){2*x-4}
x_0 = 0
print(newton(f, df, x_0))
x_0 = 10
print(newton(f, df, x_0))