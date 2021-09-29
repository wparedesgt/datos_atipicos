#Estimadores de localizacion multivariante


library(MASS)
library(depth)

set.seed(3)

mu1 <- c(0,0)
mu2 <- c(10,0)
sigma <- matrix(c(1,0,0,1), nc = 2)
X <- rbind(mvrnorm(80, mu1, sigma), mvrnorm(20, mu2, sigma))
plot(X)

#Promedio del vector
m <- c(mean(X[,1]), mean(X[,2]))

#Componente -wise de la mediana
med1 <- c(median(X[,1]), median(X[,2]))

#Mediana espacial

med2 <- med(X, method = "Spatial")

