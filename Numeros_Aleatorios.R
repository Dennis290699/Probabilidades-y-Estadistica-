# GENERACION DE NUMEROS ALEATORIOS
# Aproximar el valor de pi mediante simulacion a partir de P(x^2+y^2 <= 1)

set.seed(1)
n <- 10000
x <- runif(n, -1, 1)
y <- runif(n, -1, 1)
indice <- (x^2+y^2 <= 1)
mean(indice)
pi/4

pi_aprox <- 4*mean(indice)
pi_aprox
hist(y)

# GENERAMOS EL GRAFICO
# Colores y simbolos dependiendo de si el indice correspondiente es verdadero
color <- ifelse(indice, "black", "red")
simbolo <- ifelse(indice, 1, 4)
plot(x, y, pch = simbolo, col = color, xlim = c(-1, 1), xlab = "x", ylab = "Y", asp = 1)

# asp = 1 para dibujar circulo
symbols(0,0,circles = 1, inches = FALSE, add = TRUE)
symbols(0,0,squares = 2, inches = FALSE, add = TRUE)
