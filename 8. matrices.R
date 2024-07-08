# Crear una matriz con la función matrix()
matriz <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
matriz

matriz <- matrix(c(1, 2, 3, 4, 5, 6), ncol = 3)
matriz

matriz <- matrix(c(1, 2, 3, 4, 5, 6))
matriz

matriz <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, byrow = TRUE)
matriz

# Para obtener la dimensión de una matriz usamos la función dim()
dim(matriz)

# Crear una matriz con etiquetas de filas y columnas
carros <- matrix(c(12, 41, 72, 10, 25, 51, 82, 11, 38, 61, 92, 12), nrow = 4, ncol = 3)
carros

carros <- matrix(c(12, 41, 72, 10, 25, 51, 82, 11, 38, 61, 92, 12), nrow = 4, ncol = 3, dimnames = list(c("Blanco", "Rojo", "Negro", "Gris"), c("Toyota", "Audi", "Nissan")))
carros

cuadrada <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3)
cuadrada

# Obtener el determinante de una matriz
det(cuadrada)

# Obtener la inversa de una matriz
solve(cuadrada)