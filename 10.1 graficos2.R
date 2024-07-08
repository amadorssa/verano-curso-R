# Instalar y cargar las librerías necesarias
install.packages("ggplot2")

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

# Crear un gráfico de barras usando ggplot2
ggplot(indicadores_paises, aes(x = Pais, y = EVN)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = EVN), vjust = -0.5) +
  ylim(0, 100) +
  ylab("Años") +
  ggtitle("Esperanza de vida al nacer por país") +
  theme(plot.title = element_text(hjust = 0.5))

#ver rango de datos de una columna
range(indicadores_paises$PIB)

# Crear un gráfico de barras usando ggplot2
ggplot(indicadores_paises, aes(x = reorder(Pais, -PIB), y = PIB)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = PIB), vjust = -0.5) +
  ylim(0, 70000) +
  ylab("Años") +
  ggtitle("Producto Interno Bruto per capita por país") +
  theme(plot.title = element_text(hjust = 0.5))

regiones <- read_excel("BDGraficos.xlsx", sheet = "002", range = "B2:D5")
regiones

names(regiones) <- c("Region", "Superficie", "Poblacion")

range(regiones$Poblacion)

View(regiones)

# Crear un gráfico de barras usando ggplot2
ggplot(regiones, aes(x = reorder(Region, -Poblacion), y = Poblacion, fill = Region)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = Poblacion), vjust = -0.5) +
  ylim(0, 20000000) +
  labs(x = "Region", y = "Habitantes") +
  ggtitle("Habitantes por región") +
  theme(plot.title = element_text(hjust = 0.5)) +
  scale_fill_manual(values = c("red", "blue", "green"))

# Crear un gráfico de barras usando ggplot2
ggplot(regiones, aes(x = "", y = Superficie, fill = Region)) +
  geom_bar(stat = "identity") +
  coord_polar(theta = "y") +
  geom_text(aes(label = Superficie)) +
  theme_void() # Eliminar ejes y etiquetas

# Calcular la proporción de superficie por región
prop_superficie <- round(regiones$Superficie / sum(regiones$Superficie) * 100, 0)

prop_superficie <- paste(prop_superficie, "%")

# Agregar columna con la proporción de superficie
regiones$prop_superficie <- prop_superficie

View(regiones)


# Crear un gráfico de barras usando ggplot2
ggplot(regiones, aes(x = "", y = prop_superficie, fill = Region)) +
  geom_bar(stat = "identity") +
  coord_polar(theta = "y") +
  geom_text(aes(label = prop_superficie), position = position_stack(vjust = 0.5), size = 5) +
  theme_void() + # Eliminar ejes y etiquetas
  scale_fill_brewer(palette = "Set2") # Cambiar paleta de colores

#vector_superficie <- 

# Crear un gráfico de barras usando ggplot2
ggplot(regiones, aes(x = "", y = prop_superficie, fill = Region)) +
  geom_bar(stat = "identity") +
  coord_polar(theta = "y") +
  geom_text(aes(label = vector_superficie), position = position_stack(vjust = 0.5), size = 5) +
  theme_void() + # Eliminar ejes y etiquetas
  scale_fill_brewer(palette = "Set2") + # Cambiar paleta de colores
  ggtitle("Proporción de superficie por región") +
  theme(plot.title = element_text(hjust = 0.5))

# Importar datos de un archivo Excel con una hoja y un rango específico
censo <- read_excel("BDGraficos.xlsx", sheet = "009", range = "B3:C10")
censo

names(censo) <- c("Año", "Poblacion")
View(censo)

ggplot(censo, aes(x = Año, y = Poblacion)) +
  geom_line(color = "blue", size = 1) +
  geom_point(color = "red", size = 3) +
  labs(x = "Año", y = "Población") +
  ggtitle("Evolución de la población (1940 - 2007)") +
  theme(plot.title = element_text(hjust = 0.5))
