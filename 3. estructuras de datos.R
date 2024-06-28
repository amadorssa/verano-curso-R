# Vectores creados mediante concatenacion

vector1 <- c(1, 2, 3)

# Vectores creados mediante la función seq

vector2 <- seq(1, 10, by = 2)

# Vectores creados mediante la función rep

vector3 <- rep(1, 10)

# Vectores creados mediante la función paste

vector4 <- paste("a", 1:10, sep = "")

# Vectores con etiquetas

regiones_pobreza <- c(golfo = 20, sierra = 50, selva = 30)
regiones_pobreza

# Acceso a elementos
regiones_pobreza["golfo"]
regiones_pobreza["sierra"]

# Acceso a elementos por índice
regiones_pobreza[1]
regiones_pobreza[2]
