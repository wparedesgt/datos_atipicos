#Estimadores MCD

library(MASS)

data("Animals")

data01 <- log(Animals)

plot(data01)

#Ejemplo del promedio y la covarianza de los estimadores de la matriz

clcenter <- colMeans(data01)
clcov <- cov(data01)

#Elipse al 97.5 con estimadores clasicos


library(mixtools)

ellipse(mu = clcenter, sigma = clcov, alpha = 0.025, col = "blue", lty = 2)


#Hola 

#Estimadores MCD

library(robustbase)

res <- covMcd(data01)
mcdcenter <- res$center
mcdcov <- res$cov

#Elipse con estimadores robustos

ellipse(mu = mcdcenter, sigma = mcdcov, alpha = 0.025, col = "red", tty = 2)

#Zoom

library(zoom)

zm()
