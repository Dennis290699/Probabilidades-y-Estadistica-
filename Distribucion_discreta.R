# Definimos los parámetros de la distribución de la población
mu <- 165
sigma <- 8

# Generamos una muestra aleatoria de tamaño n=100
set.seed(123) # Fijamos la semilla para reproducibilidad
n <- 100
muestra <- rnorm(n, mean = mu, sd = sigma)

# Calculamos la media muestral y la desviación estándar de la distribución de medias muestrales
x_barra <- mean(muestra)
s <- sd(muestra)/sqrt(n)

# Graficamos la distribución de la muestra y la distribución normal aproximada
library(ggplot2)
library(gridExtra)

p1 <- ggplot(data.frame(x = muestra), aes(x)) +
  geom_histogram(aes(y=..density..), binwidth=2, fill="lightblue", color="black") +
  geom_density(color="red") +
  labs(title = "Distribución de la muestra", x = "Altura (cm)", y = "Densidad")

p2 <- ggplot(data.frame(x = muestra), aes(x)) +
  stat_function(fun = dnorm, args = list(mean = mu, sd = sigma), color = "black") +
  stat_function(fun = dnorm, args = list(mean = x_barra, sd = s), color = "red") +
  labs(title = "Distribución normal aproximada", x = "Altura (cm)", y = "Densidad") +
  theme(legend.position = "none")

grid.arrange(p1, p2, ncol = 2)
