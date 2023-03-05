# DISTRIBUCION CONTINUA
# Supongamos que se quiere conocer el peso promedio de los estudiantes universitarios 
# de una determinada institución. Se toma una muestra aleatoria de 100 estudiantes y 
# se registra su peso. Suponiendo que el peso sigue una distribución normal con una 
# media de 70 kg y una desviación estándar de 5 kg, podemos aplicar el teorema del 
# límite central para calcular la probabilidad de que la media muestral difiera del 
# peso promedio real de la población en una cantidad determinada.

library(ggplot2)
library(gridExtra)

# Definir los parámetros
n <- 100   # Tamaño de la muestra
mu <- 70   # Media de la población
sigma <- 5 # Desviación estándar de la población

# Generar una muestra aleatoria
set.seed(123) # Para reproducibilidad
muestra <- rnorm(n, mean = mu, sd = sigma)

# Calcular la media muestral y su desviación estándar
x_barra <- mean(muestra)
s <- sd(muestra)

# Calcular los valores de la distribución normal estándar
z <- seq(-4, 4, length.out = 100)
dnorm_z <- dnorm(z)
data <- data.frame(z = z, dnorm_z = dnorm_z)

# Calcular el intervalo de confianza al 95%
z_alpha_medios <- qnorm(0.975)
IC <- x_barra + z_alpha_medios * (s / sqrt(n))

# Graficar la distribución de la muestra y la distribución normal estándar
p1 <- ggplot(data.frame(muestra = muestra), aes(x = muestra)) +
  geom_histogram(aes(y = after_stat(density)), binwidth = 2, color = "black", fill = "white") +
  geom_density(alpha = 0.2, fill = "#FF6666") +
  ggtitle("Distribución de la muestra") +
  xlab("Peso (kg)") +
  ylab("Densidad")

p2 <- ggplot(data, aes(x = z, y = dnorm_z)) +
  geom_line(color = "blue") +
  ggtitle("Distribución normal estándar") +
  xlab("Valor z") +
  ylab("Densidad")

grid.arrange(p1, p2, ncol = 2)

