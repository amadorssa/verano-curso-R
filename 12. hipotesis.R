curve(dchisq(x, df = 2), from = 0, to = 30)

Preferencias <- data.frame(genero = c("Hombre", "Hombre", "Hombre", "Mujer", "Mujer", "Mujer"),
                           producto = c("A", "B", "C", "A", "B", "C"),
                           frecuencia = c(20, 15, 25, 30, 25, 20))

tabla <- xtabs(frecuencia ~ genero + producto, data = Preferencias)
tabla

resultadox2 <- chisq.test(tabla)
resultadox2

resultadox2$parameter
resultadox2$statistic

valor_critico <- qchisq(0.95, df = 2)
valor_critico

curve(dchisq(x, df = 2), from = 0, to = 30, ylab = "Densidad", xlab = "Registros de preferencia")
abline(v = valor_critico, col = "red")
abline(v = resultadox2$statistic, col = "blue")

Alumnos <- c(10, 20, 15, 25, 17.5, 17.5, 17.5, 17.5)
Grupos <- c("Primero", "Segundo", "Tercero", "Cuarto")
Registros <- c("Observados", "Observados", "Observados", "Observados", "Esperados", "Esperados", "Esperados", "Esperados")

tabla_grupos <- data.frame(Grupos, Alumnos, Registros)
tabla_grupos

tabla <- xtabs(Alumnos ~ Grupos + Registros, data = tabla_grupos)
tabla

# Cuando la potencia de la prueba es superior al nivel de significancia no se debe rechazar la hipotésis
resultado <- chisq.test(tabla)
resultado

valor_critico_90 <- qchisq(0.90, df = 3)
valor_critico_95 <- qchisq(0.95, df = 3)


curve(dchisq(x, df = 3), from = 0, to = 30)
abline(v = valor_critico_90, col = "blue", lwd = 2)
abline(v = valor_critico_95, col = "brown", lwd = 2)
abline(v = resultado$statistic, col = "red", lwd = 2)
legend("topright", legend = c("Valor crítico", "Estadistico de prueba"),
       col = c("blue", "red"), lwd = 2)