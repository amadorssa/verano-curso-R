# Programa para manejar archivos en R

install.packages("readxl")

library(readxl)

# Importar datos de un archivo Excel
Pacientes <- read_excel("/Users/imac/Library/CloudStorage/OneDrive-UniversidaddeSonora/University/Trabajo Delfin/Ricardo/Curso R/resources/files/BDPacientes.xlsx")
View(Pacientes) # Ver todos los registros
Pacientes

Datos <- read_excel("/Users/imac/Library/CloudStorage/OneDrive-UniversidaddeSonora/University/Trabajo Delfin/Ricardo/Curso R/resources/files/datos.xlsx")
Datos

# Importar datos de un archivo Excel con una hoja específica
Datos <- read_excel("/Users/imac/Library/CloudStorage/OneDrive-UniversidaddeSonora/University/Trabajo Delfin/Ricardo/Curso R/resources/files/datos.xlsx", sheet = "data")
Datos

# Importar datos de un archivo Excel con una hoja y un rango específico
Datos <- read_excel("/Users/imac/Library/CloudStorage/OneDrive-UniversidaddeSonora/University/Trabajo Delfin/Ricardo/Curso R/resources/files/datos.xlsx", sheet = "data", range = "A1:C10")
Datos


setwd("/Users/imac/Library/CloudStorage/OneDrive-UniversidaddeSonora/University/Trabajo Delfin/Ricardo/Curso R/resources/files")

getwd()

Encuestados <- read_excel("BDEncuestados.xlsx")
Encuestados

Encuestados <- read_excel("BDEncuestados.xlsx", sheet = "001", range = "A1:G100")

# Recuperar columnas
Encuestados$Peso
Encuestados$Edad

# ESTADISTICAS DESCRIPTIVAS

table(Encuestados$Sexo) # Tabla de frecuencias

prop.table(table(Encuestados$Sexo)) # Frecuencia relativa (proporciones)

prop.table(table(Encuestados$Sexo)) * 100 # Frecuencia relativa en porcentaje

round(prop.table(table(Encuestados$Sexo)) * 100, 2) # Frecuencia relativa en porcentaje

min(Encuestados$Edad)

max(Encuestados$Edad)

sd(Encuestados$Edad)

mean(Encuestados$Edad)

median(Encuestados$Edad)

as.numeric(names(which.max(table(Encuestados$Edad)))) # Moda

# TABLAS CRUZADAS

table(Encuestados$Ciudad, Encuestados$Sexo)
#guardar la tabla cruzada en una variable
cruzada1 <- table(Encuestados$Ciudad, Encuestados$Sexo)
prop.table(cruzada1) # Frecuencia relativa

round(prop.table(cruzada1) * 100, 2) # Frecuencia relativa en porcentaje
lenght(Encuestados$Sexo)

round(prop.table(cruzada1, 2) * 100, 2) # Frecuencia relativa en porcentaje


# ************************** MANEJO DE ARCHIVOS SPSS **************************

install.packages("haven")

library(haven)

spss <- read_sav("BDspss.sav")
spss

table(spss$Sexo)
attr(spss$Sexo, "labels")
