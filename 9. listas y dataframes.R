# Listas para filas y vectores para columnas

lista <- list("Aylin", 22, 1.51, "Ciudad Juarez")
lista

lista[1]
lista[3]

# Modificar un elemento de la lista

lista[3] <- 1.52
lista

# DATA FRAMES

nombres <- c("Aylin", "Amado", "Carolina")
edades <- c(22, 26, 20)

# Crear un data frame
estudiantes <- data.frame(nombres, edades)
estudiantes

# Para agregar una columna a un data frame
ciudades <- c("Ciudad Juarez", "Hermosillo", "Colombia")
estudiantes <- cbind(estudiantes, ciudades)
estudiantes

# Para agregar una fila a un data frame

estudiantes <- rbind(estudiantes, c("Oscar", 23, "Nicaragua"))
estudiantes

install.packages("openxlsx")

library(openxlsx)

write.xlsx(estudiantes, "estudiantes.xlsx", sheetname = "datos")
