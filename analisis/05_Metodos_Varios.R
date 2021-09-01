#Metodos Varios

library(robustbase)

Ejemplo05 <- c(3.2, 3.4, 3.7, 3.8, 3.9, 4, 4, 4.1, 4.2, 4.7, 4.8, 14, 15)
Ejemplo06 <- c(3.2, 3.4, 3.7, 3.8, 3.9, 4, 4, 4.1, 4.2, 4.7, 4.8, 14, 15, 40)


Ejemplo05 <- sort(Ejemplo05)
n <- length(Ejemplo05)
m <- mc(Ejemplo05)
n4 <- floor((n+3)/2)/2
d <- c(1, n4, (n+1)/2, n+1 -n4, n)
q <- 0.5 * (data[floor(d)] + Ejemplo05[ceiling(d)])
