#Regresión Robusta

library(robustbase)
library(MASS)
library(L1pack)

data("starsCYG")

View(starsCYG)
plot(starsCYG)
cst <- covMcd(starsCYG)

#Ultimos cuadrados (minimos cuadrados ordinarios)

lm_stars <- lm(log.light ~ log.Te, data = starsCYG)
summary(lm_stars)

#Ultimos cuadrados LTS

lts_stars <- ltsReg(log.light ~ log.Te, data = starsCYG)
summary(lts_stars)

#LMS
lms_stars =  lqs(starsCYG$log.light, starsCYG$log.Te, method = "lms")
plot(starsCYG)


#List absolute Deviation (LDA)
lad_stars <- l1fit(starsCYG$log.light, starsCYG$log.Te)
plot(starsCYG)
abline(lm_stars, lty = 2, lwd = 2, col = "green")
abline(lad_stars, lty = 2, lwd = 2, col = "magenta")
abline(lms_stars, lty = 4, lwd = 2, col = "red")
abline(lts_stars, lty = 2, lwd = 2, col = "blue")
legend("bottomleft", c("LS", "LAD", "LMS", "LTS"), inset = 0.02, lty = c(2,2,4,4), lwd = 2, col = c("green", "magenta", "red", "blue"))

