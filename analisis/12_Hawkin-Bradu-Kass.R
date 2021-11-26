#Metodos de Deteccion de Atipicos

#Hawkin-Brandu-Kass

library(mrfDepth)
library(robustbase)
library(rrcov)
library(mvoutlier)

data(hbk)

hbk_x <- data.matrix(hbk[,1:3])

#Del paquete rrcov
#Cov Classic

cc <- CovClassic(hbk_x)
plot(cc, which = "pairs")
plot(cc, which = "distance")

#Stahel-Donojo estimador

c <- CovSde(hbk_x)
plot(c)
plot(c, which = "pairs")
plot(c, which = "xydist")


#MCD

MCDe <- CovMcd(hbk_x)
plot(MCDe)
plot(MCDe, which = "pairs")
plot(MCDe, which = "xydist")


#MCD Ajustado

m <- aq.plot(hbk_x)
uni.plot(hbk_x, symb = TRUE)
colorData <- color.plot(hbk_x[,c(1,2)])

#Outliers 

indexes <- 1:75
out <- indexes[m$outliers]
out


#OGK

Ogk <- CovOgk(hbk_x)
plot(Ogk)
plot(Ogk, which ="pairs")
plot(Ogk, which = "xydist")

