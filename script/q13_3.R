iris_data = iris[1:4]
pca_iris = prcomp(iris_data, scale=TRUE)
pc1 = pca_iris$x[,1]
pc2 = pca_iris$x[,2]
plot(pc1, pc2, col = as.factor(iris[,5]))
legend('topright', legend=c('setosa', 'vergicolor', 'virginica'), col=as.factor(iris[,5]))