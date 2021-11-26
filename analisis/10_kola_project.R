#kola project

library(mvoutlier)
data("humus")

str(humus)

xy <- humus[,c("XCOO", "YCOO")] #Coordenadas X y Y 
x <- log(humus[, c("As", "Cd", "Co", "Cu", "Mg", "Pb", "Zn")])

#Grafica de Mahalanobis clasico distanciall con quantil clasico robusto basado en MD y MCD
#Basada en el MCD con el quantil ajustado.

distances <- dd.plot(x, quan = 1/2, alpha = 0.025)
str(distances$md.cla)
str(distances$md.rob)


#Grafica dimensional 


colorData <- color.plot(x[,c(1,2)], quan = 1/2, alpha = 0.025)

# Grafico de distribuciones dibujadas en su mapa

m <- map.plot(xy, x, symb = TRUE)

#Visualización Univariante

uni.plot(x, symb = TRUE)

#Outliers o datos atipicos

indexes <- 1:617
out <- indexes[m$outliers]
out
