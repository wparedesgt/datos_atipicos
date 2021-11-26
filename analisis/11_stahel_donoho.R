#Stahel-Donoho

library(mrfDepth)
library(robustbase)
library(rrcov)

data("Animals2")

#Calcular los datos atipicos con un data set simple dimensional

BivData <- log(Animals2)
Result <- outlyingness(x = BivData)
IndOutliers <- which(!Result$flagX)
plot(BivData)
points(BivData[IndOutliers,], col = "red")

#Calculo estaimado robusto de localizacion y escala usando una proyeccion Stahel-Donoho basada en estimadores

CovSde(BivData)

#Ejemplo simulado

BivData <- matrix(rnorm(120), ncol = 2)
BivData <- rbind(BivData, matrix(c(6,6,6,-2), ncol = 2))
Result <-  outlyingness(x = BivData)
IndOutliers <- which(!Result$flagX)
plot(BivData)
points(BivData[IndOutliers,], col = "red")
