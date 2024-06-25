# Programa para probar los operadores matemáticos en R

# Ejercicio 1
resultado <- ((12 + 3) / 2) - 5
cat("Resultado del ejercicio 1 =", resultado, "\n")

# Ejercicio 2
resultado <- (9 + 6) / (2 + 3)
cat("Resultado del ejercicio 2 =", resultado, "\n")

# Ejercicio 3
resultado <- 2 + 3 ^ 2 - 5
cat("Resultado del ejercicio 3 =", resultado, "\n")

# Ejercicio 4
resultado <- 75 / (3 ^ 2 - 2 ^ 2)
cat("Resultado del ejercicio 4 =", resultado, "\n")

# Ejercicio 5
resultado <- 5 * (5 / 2) + (5 / 3) + ((4 ^ 2 + 1) / 6)
cat("Resultado del ejercicio 5 =", resultado, "\n")

# Ejercicio 6
resultado <- 81 ^ (1 / 2) + 4096 ^ (1 / 4) + (25 + 10 ^ 2) ^ (1 / 3)
cat("Resultado del ejercicio 6 =", resultado, "\n")

# Ejercicio 7
resultado <- (2 * (2 * (2 ^ (1 / 2))) ^ (1 / 2)) ^ (1 / 2)
cat("Resultado del ejercicio 7 =", resultado, "\n")

# EJERCICIOS GEOMETRICOS

cat("\nEjercicios geometricos\n")
# Ejercicio 8 - Cuadrado
cat("\nCuadrado\n")
base <- 2
altura <- 2
area <- base * altura
cat("Area del cuadrado = ", area, "\n")

diagonal <- (base ^ 2 + altura ^ 2) ^ (1 / 2)
cat("Diagonal del cuadrado = ", diagonal, "\n")

perimetro <- 2 * (base + altura)
cat("Perimetro del cuadrado = ", perimetro, "\n")

# Ejercicio 9 - Circulo
cat("\nCirculo\n")
pi <- 3.1416
radio <- 3
area <- pi * radio ^ 2
cat("Area del circulo = ", area, "\n")

circunferencia <- 2 * pi * radio
cat("Circunferencia del circulo = ", circunferencia, "\n")

# Ejercicio 10 - Cono
cat("\nCono\n")
altura <- 15
generatriz <- (altura ^ 2 + radio ^ 2) ^ (1 / 2)
cat("Generatriz del cono = ", generatriz, "\n")

area_lateral <- pi * radio * generatriz
cat("Area de la diagonal del cono = ", area_lateral, "\n")

area_cono <- pi * radio * (radio + generatriz)
cat("Area del cono = ", area_cono, "\n")

volumen_cono <- (1 / 3) * pi * radio ^ 2 * altura
cat("Volumen del cono = ", volumen_cono, "\n")

# Ejercicio 11 - Trapecio
cat("\nTrapecio\n")
base_menor <- 6
base_mayor <- 10
altura <- 5
area <- (base_mayor + base_menor) * altura / 2
cat("Area del trapecio = ", area, "\n")