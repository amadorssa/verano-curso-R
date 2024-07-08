library(readxl)

encuestados <- read_excel("/Users/imac/Library/CloudStorage/OneDrive-UniversidaddeSonora/University/Trabajo Delfin/Ricardo/Curso R/resources/files/BDEncuestados.xlsx")
encuestados

# CATEGORIZACION DE VARIABLES
# Categorizar la variable Edad en Niño, Joven y Adulto mayor según los siguientes criterios: Niño (0-28), Joven (29-60), Adulto mayor (61-100) años.
encuestados$Edad
encuestados$Edad <- cut(encuestados$Edad, breaks = c(0, 28, 60, 100), labels = c("Niño", "Joven", "Adulto mayor"))

encuestados$Edad
table(encuestados$Edad)

# para ver la clase de la variable
class(encuestados$Edad)

prop.table(table(encuestados$Edad))
