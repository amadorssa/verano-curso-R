
library(readxl)

encuestados <- read_excel("/Users/imac/Library/CloudStorage/OneDrive-UniversidaddeSonora/University/Trabajo Delfin/Ricardo/Curso R/resources/files/encuestados.xlsx")
encuestados

mujeres_estatura <- 1.544
hombres_estatura <- 1.664
Nicaragua <- c(mujeres_estatura, hombres_estatura)
barplot(Nicaragua)
barplot(Nicaragua, ylim = c(0, 2))
text(x = c(0.35, 1.35), y = c(1.62, 1.7), labels = Nicaragua)

encuestados$Edad
datos1 <- round(prop.table(table(encuestados$Edad)) * 100, 2)
texto <- paste(datos1, "%")
texto
abcisas <- barplot(datos1)
text(x = abcisas, y = datos1, labels = texto)

encuestados$Sexo
datos2 <- round(prop.table(table(encuestados$Sexo)) * 100, 2)
datos2
texto <- paste(datos2, "%")
texto
abcisas <- barplot(datos2, ylim = c(0, 60))
text(x = abcisas, y = datos2, labels = texto)

abcisas <- barplot(datos2,
                   main = "Proporción de mujeres y hombres",
                   xlab = "Sexo",
                   ylab = "Porcentaje",
                   ylim = c(0, 60))
text(x = abcisas, y = datos2, labels = texto)

abcisas <- barplot(datos2,
                   main = "Proporción de mujeres y hombres",
                   xlab = "Sexo",
                   ylab = "Porcentaje",
                   ylim = c(0, 60),
                   col = c("blue", "#FFF8DC"))
text(x = abcisas, y = datos2, labels = texto)


table(encuestados$Sexo)
datos3 <- round(prop.table(table(encuestados$Sexo)) * 100, 0)
datos3
pie(datos3, labels=datos3)

sex <- c("Mujeres", "Varones")
sex <- paste(sex, datos3, "%")
sex

pie(datos3, labels = sex)

pie(datos3, labels = sex, col = c("pink", "black"))

encuestados$Edad
hist(encuestados$Edad)
hist(encuestados$Edad,
     breaks = 10,
     main = "Histograma",
     xlab = "Edades",
     ylab = "Frecuencia")

edad <- encuestados$Edad
hist(edad, breaks = c(10))

max(edad)
min(edad)
rango <- max(edad) - min(edad)
rango
intervalo <- 9
mivector <- seq(min(edad), max(edad), rango / intervalo)
mivector
hist(edad,
  freq = FALSE,
  breaks = mivector,
  main = "Histograma con 9 breaks",
  col = "orange"
)
lines(density(edad, adjust = 0.9), col = "blue", lwd = 5, lty = 3)
plot(density(edad))
lines(density(edad, adjust = 0.8), col = "blue", lwd = 5, lty = 3)

hist(edad,
  freq = FALSE,
  ylim = c(0, 0.04),
  breaks = mivector,
  main = "Histograma con 9 breaks",
  col = "orange"
)
curve(dnorm(x, mean = mean(edad), sd = sd(edad)),
      add = TRUE,
      lwd = 3,
      col = "green")

dnorm(edad, mean = mean(edad), sd = sd(edad))

stem(edad)