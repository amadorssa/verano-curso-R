# Programa para probar funciones básicas en R

# Ejercicio 1 - Rombo
horizontal_rombo <- 6
vertical_rombo <- 3
area_rombo <- function(horizontal_rombo, vertical_rombo) {
  area <- (horizontal_rombo * vertical_rombo) / 2
  return(area)
}

area <- area_rombo(horizontal_rombo, vertical_rombo)
cat("El area del rombo es = ", round(area, 2), "\n")

lateral_rombo <- function(horizontal_rombo, vertical_rombo) {
  lateral <- sqrt(((horizontal_rombo) / 2)^2 + ((vertical_rombo) / 2)^2)
  return(lateral)
}

lateral <- lateral_rombo(horizontal_rombo, vertical_rombo)
cat("La lateral del rombo es = ", round(lateral, 2), "\n")


perimetro_rombo <- function(lateral) {
  perimetro <- 4 * lateral
  return(perimetro)
}

perimetro <- perimetro_rombo(lateral)
cat("El perimetro del rombo es = ", round(perimetro, 2), "\n")

# Ejercicio 2 - Cilindro

altura <- 15
radio <- 5

area_cilindro <- function(altura, radio) {
  area <- 2 * pi * radio * (altura + radio)
  return(area)
}

area <- area_cilindro(altura, radio)
cat("El area del cilindro es = ", round(area, 2), "\n")

area_lateral_cilindro <- function(altura, radio) {
  area_lateral <- 2 * pi * radio * altura
  return(area_lateral)
}

area_lateral <- area_lateral_cilindro(altura, radio)
cat("El area lateral del cilindro es = ", round(area_lateral, 2), "\n")

volumen_cilindro <- function(altura, radio) {
  volumen <- pi * radio^2 * altura
  return(volumen)
}

volumen <- volumen_cilindro(altura, radio)
cat("El volumen del cilindro es = ", round(volumen, 2), "\n")


# Ejercicio 3 - Esfera

radio <- 3

area_esfera <- function(radio) {
  area <- 4 * pi * radio^2
  return(area)
}

area <- area_esfera(radio)
cat("El area de la esfera es = ", area, "\n")

volumen_esfera <- function(radio) {
  volumen <- (4 / 3) * pi * radio^3
  return(volumen)
}

volumen <- volumen_esfera(radio)
cat("El volumen de la esfera es = ", volumen, "\n")


# ******************** GRAFICOS ********************

# Ejercicio 4
x <- -5:5
y <- 2 * x^2 - x - 4

grafico <- function(x, y) {
  plot(x, y)
}

grafico(x, y)

# Ejercicio 5
x <- -5:5
y <- (3 * x + 2) / (4 * x)

grafico(x, y)

# Ejercicio 6
x <- -5:5
y <- x^(1 / 2) + 2

grafico(x, y)
