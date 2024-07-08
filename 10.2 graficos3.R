# Instalar y cargar las librerías necesarias
library(ggplot2)
library(readxl)

# Establecer el directorio de trabajo
setwd("/Users/imac/Library/CloudStorage/OneDrive-UniversidaddeSonora/University/Trabajo Delfin/Ricardo/Curso R/resources/files")

# Importar datos de un archivo Excel con una hoja y un rango específico
indicadores_paises <- read_excel("BDGraficos.xlsx", sheet = "001", range = "A2:E7")
indicadores_paises

# Renombrar las columnas
names(indicadores_paises) <- c("Pais", "EVN", "AEE", "APE", "PIB")

# Visualizar los datos
View(indicadores_paises)

# Crear otro objeto con las columnas 1 y 3
yrs_esperados <- indicadores_paises[, c(1, 3)]
yrs_promedio <- indicadores_paises[, c(1, 4)]

names(yrs_esperados) <- c("Pais", "Años")
names(yrs_promedio) <- c("Pais", "Años")

tabla_3 <- rbind(yrs_esperados, yrs_promedio)
tabla_3

categoria <- c(rep("Esperados", 5), rep("Promedio", 5))
tabla_3$categoria <- categoria
tabla_3

pacientes <- read_excel("BDPacientes.xlsx", sheet = "001", range = "A2:E7")
pacientes

ggplot(DFCiudad, aes(x = Ciudad, y = -Freciencia)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = Freciencia), vjust = -0.5) +
  ylim(0, 15)

install.packages("dplyr")
library(dplyr)

encuestados <- read_excel("BDEncuestados.xlsx")
View(encuestados)

# Obtener el promedio de peso por sexo
peso_promedio_sexo <- summarise(group_by(encuestados, Sexo), Peso_promedio = mean(Peso))
peso_promedio_sexo

recuento_sexo <- summarise(group_by(encuestados, Sexo), Recuento = n())
recuento_sexo

recuento_ciudad <- summarise(group_by(encuestados, Ciudad), Recuento = n())
recuento_ciudad

promedio_puntaje_ciudad <- summarise(group_by(encuestados, Ciudad), Promedio_puntaje = mean(Puntaje))
promedio_puntaje_ciudad

ggplot(promedio_puntaje_ciudad, aes(x = Ciudad, y = Promedio_puntaje)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = Promedio_puntaje), vjust = -0.5) +
  ylim(0, 70) +
  ylab("Puntaje") +
  ggtitle("Promedio de puntaje por ciudad") +
  theme(plot.title = element_text(hjust = 0.5))

ggplot(encuestados, aes(x = Estatura, y = Peso)) +
  geom_point() +
  stat_smooth(method = "lm", col = "red")

ggplot(encuestados, aes(x = Estatura, Sexo, y = Peso)) +
  geom_point() +
  stat_smooth(method = "lm", col = "red")

ggplot(encuestados, aes(Estatura, Peso)) +
  geom_point(aes(color = Sexo)) +
  geom_smooth(se = FALSE) +
  facet_wrap(~Sexo)

ggplot(encuestados, aes(Peso)) +
  geom_boxplot() +
  coord_flip()

ggplot(encuestados, aes(Sexo, Estatura)) +
  geom_boxplot() +
  coord_flip()

ggplot(encuestados, aes(Sexo, Estatura)) +
  geom_boxplot() +
  geom_jitter()

ggplot(encuestados, aes(Sexo, Estatura)) +
  geom_boxplot() +
  stat_summary(fun.y = mean, geom = "point", shape = 16, size = 3, fill = "red")

ggplot(encuestados, aes(Sexo, Estatura)) +
  geom_boxplot(fill = "#a2a1a2") +
  stat_summary(fun.y = mean, geom = "point", shape = 16, size = 3, fill = "red")

ggplot(encuestados, aes(Edad)) +
  geom_histogram(col = "black", fill = "steelblue", bins = 30)

# Para crear puntos de corte
puntos_corte <- seq(min(encuestados$Edad), max(encuestados$Edad), 5)
puntos_corte

ggplot(encuestados, aes(Edad)) +
  geom_histogram(breaks = puntos_corte, col = "black", fill = "steelblue", bins = 30)

ggplot(encuestados, aes(Peso, fill = Sexo)) +
  geom_histogram() +
  facet_wrap(~Sexo)

ggplot(encuestados, aes(Peso)) +
  geom_density()

ggplot(encuestados, aes(Peso)) +
  geom_density(alpha = 0.8, fill = "steelblue")

ggplot(encuestados, aes(Peso, fill = Sexo)) +
  geom_density(alpha = 0.8)
