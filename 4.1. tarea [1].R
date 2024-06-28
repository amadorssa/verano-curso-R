library(haven)

spss <- read_sav("/Users/imac/Library/CloudStorage/OneDrive-UniversidaddeSonora/University/Trabajo Delfin/Ricardo/Curso R/resources/files/BDspss.sav")
spss

table(spss$Sexo)
attr(spss$Sexo, "labels")

# change labels of Sexo variable to "Hombre" and "Mujer"
spss$Sexo <- factor(spss$Sexo, labels = c("Mujer", "Varon"))

table(spss$Sexo)
spss
