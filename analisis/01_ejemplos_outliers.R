library(Rmisc)
library(tidyverse)
library(mrfDepth)

#outliers ejemplos 

conjunto01 <- c(150,160,130,150,120)
conjunto02 <- c(150,160,130,150,120,180)
conjunto03 <- c(150,160,130,150,120,350)
conjunto04 <- c(150,160,130,150,120,300,320,340,350)


mean(conjunto01)
mean(conjunto02)
mean(conjunto03)
mean(conjunto04)

median(conjunto01)
median(conjunto02)
median(conjunto03)
median(conjunto04)

#Primer Caso

conjunto05 <- c(1:7)

mean(conjunto05)    #Promedio
median(conjunto05)  #Media 
var(conjunto05)     #Varianza

error <- qnorm(0.975)*sqrt(var(conjunto05)/length(conjunto05))
left1 <- mean(conjunto05) - error
right <- mean(conjunto05) + error
cil <- c(left1, right)

cil

#Segundo Caso outlier 

conjunto06 <- c(1:6, 77)

mean(conjunto06)
median(conjunto06)
var(conjunto06)

error2 <- qnorm(0.975)*sqrt(var(conjunto06)/length(conjunto06))
left2 <- mean(conjunto06) - error
right2 <- mean(conjunto06) + error
cil2 <- c(left2, right2)

cil2

ejemplo01 <- c(1:5)
ejemplo02 <- c(1:4, 50)
ejemplo03 <- c(2,2,4,7,15)

mean(ejemplo01)
mean(ejemplo02)

median(ejemplo01)
median(ejemplo02)

range(ejemplo01)
rank(ejemplo01)
rank(ejemplo02)


#Varianza y desviación standard

var(ejemplo01)
var(ejemplo02)
sd(ejemplo01)
sd(ejemplo02)

#Median Absolute Desviation

mad(ejemplo01)
mad(ejemplo02)

#Ejemplos

ejemplo04 <- c(1:7, 10,15,16)

median(ejemplo04)
medcouple(ejemplo04) #Sacando la MedCouple

#Vemos el ejemplo

medcouple(ejemplo01) #Normal
medcouple(ejemplo02) # Es robusta sigue marcando 0

#Coeficiente de asimetria



