#Ejercicio

#Vamos a utilizar el dataset Kootenay, en R se carga así:
  
  data(kootenay, package="robustbase")

#Kootenay es un dataset clásico en los libros de regresión robusta. Aquí se mide el caudal del rio Kootenay entre 1971 y 1973 en dos lugares, uno llamado Libby y otro llamado Newgate. La idea es predecir el caudal en Newgate una vez que se observa lo que pasa en Libby.

#Una vez cargado el dataset, contesta a las siguientes preguntas:
  
#Preguntas de esta tarea

#Haz un plot de los datos Kootenay, poniendo en el eje vertical la variable respuesta Newgate y en el eje horizontal la explicativa, Libby. Enseña la imagen y explica si detectas visualmente algún dato atípico.

#Haz una regresión clásica de mínimos cuadrados y dibuja la recta de regresión obtenida sobre los datos. ¿Qué pasa y por qué?
  
#Haz las regresiones vistas en clase, LAD, LMS y LTS, dibújalas junto con LS (mínimos cuadrados) y junto con los datos. ¿Cuál se ajusta mejor?
  
  
library(robustbase)
library(MASS)
library(L1pack)

data("kootenay")

str(kootenay)
head(kootenay)
View(kootenay)
plot(kootenay)


#LM

lm_kootenay <- lm(kootenay$Newgate ~ kootenay$Libby)
lst_kootenay <- ltsReg(kootenay$Newgate ~ kootenay$Libby)
lms_kootenay <- lqs(kootenay$Newgate,kootenay$Libby)
lad_kootenay <- l1fit(kootenay$Newgate, kootenay$Libby)
abline(lm_kootenay, lty = 2, lwd = 2, col = "green")
abline(lad_kootenay, lty = 2, lwd = 2, col = "magenta")
abline(lms_kootenay, lty = 4, lwd = 2, col = "red")
abline(lst_kootenay, lty = 2, lwd = 2, col = "blue")
legend("bottomleft", c("LS", "LAD", "LMS", "LTS"), inset = 0.02, lty = c(2,2,4,4), lwd = 2, col = c("green", "magenta", "red", "blue"))
