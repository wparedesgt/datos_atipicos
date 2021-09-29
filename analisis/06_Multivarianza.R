#Multivarianza Normal 

library(MASS)

#Generar una muestra de N(mu, Sigma) Correlación Moderada

bivn <- mvrnorm(5000, mu = c(0,0), Sigma = matrix(c(1,.5, .5, 1), 2))

#Variables independientes: correlacion = 0

bivn2 <- mvrnorm(1000, mu = c(0,5), Sigma = matrix(c(1,0,0,1),2))

#Variables altamente correlacionadas

bivn3 <- mvrnorm(1000, mu = c(0,5), Sigma = matrix(c(1,0.9,0.9,1),2))

#Visualizando los datos

plot(bivn[,1], bivn[,2])
plot(bivn2[,1], bivn2[,2])
plot(bivn3[,1], bivn3[,2])


#Calculando la densidad estimada del centro


bivn_kde <- kde2d(bivn[,1],bivn[,2], n = 50)
bivn2_kde <- kde2d(bivn2[,1],bivn2[,2], n = 50)
bivn3_kde <- kde2d(bivn3[,1],bivn3[,2], n = 50)

#Visualizacion de contorno 

image(bivn_kde) 
contour(bivn_kde, add = TRUE)

#Superficie dimencional (3 dimensiones)

persp(bivn2_kde, phi = 45, theta = 30, shade = .1, border = NA)

#Visualización Interactiva

library(rgl)


col1 <- heat.colors(length(bivn_kde$z))[rank(bivn_kde$z)]
persp3d(x=bivn_kde, col = col1)

col2 <- rainbow(length(bivn2_kde$z))[rank(bivn2_kde$z)]
persp3d(x=bivn2_kde, col = col2)

col3 <- rainbow(length(bivn3_kde$z))[rank(bivn3_kde$z)]
persp3d(x=bivn3_kde, col = col3)

library(threejs)

#Desempacando los datos

x <- bivn2_kde$x
y <- bivn2_kde$y
z <- bivn2_kde$z

#Construccion de coordenadas x,y,z

xx <- rep(x, times = length(y))
yy <- rep(y, each = length(x))
zz <- z; dim(zz) <- NULL

#Seteando el rango de color

ra <- ceiling(16 * zz/max(zz))
col <- rainbow(16, 2/3)

#Visualización interactiva

scatterplot3js(x=xx, y=yy, z=zz, size = 0.2, color = col[ra], bg = "black")

library(corrplot)
library(clusterGeneration)

mu <- rep(0,10)
pdMat <- genPositiveDefMat(10, lambdaLow = 10)
Sigma <- pdMat$Sigma
dim(Sigma)
mvn <- mvrnorm(5000, mu = mu, Sigma = Sigma)

corrplot(cor(mvn), 
         method = "ellipse", 
         tl.pos = "n")
