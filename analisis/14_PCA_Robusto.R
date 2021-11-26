#PCA Robusto

library(mvtnorm)
library(pcaPP)

x <- rbind(rmvnorm(200, rep(0,6), diag(c(5,rep(1,5)))), 
           rmvnorm(15, c(0,rep(20,5)), diag(rep(1,6))))

#Calculando componentes PCAproj

pc1 <- PCAproj(x, 6)

#Biplot

biplot(pc1)

#Funcion de objetivo  los 2 primeros PCs

pc2 <- PCAproj(x, 3, "qn", "sphere")
biplot(pc2)

#PCAgrid

pc3 <- PCAgrid(x, k= 6)
biplot(pc3)

