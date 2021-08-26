#Estimadores


ejemplo01 <- c(1:5)
ejemplo02 <- c(1:4, 50)
n <- 5

#Promedio
mean(ejemplo01)
mean(ejemplo02)

#Mediana

median(ejemplo01)
median(ejemplo02)

#Rango y Rango interquartilico

#Rango

diff(range(ejemplo01))
diff(range(ejemplo02))

#Interquartil

IQR(ejemplo01)
IQR(ejemplo02)

#Desviacion estandard

factor <- sqrt((n-1)/n) #factor de correcion de prueba en la practica se utiliza el no sezgado sd()

factor*sd(ejemplo01)
factor*sd(ejemplo02)

#MAD

mad(ejemplo01, constant = 1) #Cuando no se multiplica por el factor 
mad(ejemplo02, constant = 1)

#Coeficiente de Asimetria

library(e1071)

skewness(ejemplo01)
skewness(ejemplo02)

#meadcouple

library(mrfDepth)

medcouple(ejemplo01)
medcouple(ejemplo02)

