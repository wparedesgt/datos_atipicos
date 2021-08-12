library(Rmisc)

#outliers ejemplos 

conjunto01 <- c(150,160,130,150,120)
conjunto02 <- c(150,160,130,150,120,180)
conjunto03 <- c(150,160,130,150,120,350)
conjunto04 <- c(150,160,130,150,120,300,320,340,350)
conjunto05 <- c(1:7)

mean(conjunto01)
mean(conjunto02)
mean(conjunto03)
mean(conjunto04)




median(conjunto01)
median(conjunto02)
median(conjunto03)
median(conjunto04)

mean(conjunto05)    #Promedio
median(conjunto05)  #Media 
var(conjunto05)     #Varianza
CI(conjunto05, ci= 0.95)

confint(conjunto05, level = 0.95)  #Calcular el intervalo de confianza


