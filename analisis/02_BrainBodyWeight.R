#Peso de cuerpo y cerebro de 28 especies

library(MASS)
library(tidyverse)

#cargando los datos

data("Animals")
View(Animals)


#Plot de Regresion

plotbb <- function(bbdat) {
  d.name <- deparse(substitute(bbdat))
  plot(log(brain) ~ log(body), data = bbdat, main = d.name)
  abline(lm(log(brain) ~ log(body), data = bbdat))
  abline(MASS::rlm(log(brain) ~ log(body), data = bbdat), col = 2)
  legend("bottomright", leg = c("lm", "rlm"), col=1:2, lwd = 1, inset = 1/20)
  
}

plotbb(Animals)

