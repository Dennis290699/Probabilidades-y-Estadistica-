library(ggplot2)
library(gridExtra)

# Definir los parámetros de la población
mu <- 165   # media de la población
sigma <- 8  # desviación estándar de la población

# Generar una muestra aleatoria de 100 estudiantes
set.seed(123) # Para que los resultados sean reproducibles
n <- 100
muestra <- rnorm(n, mean = mu, sd = sigma)

# Calcular la media muestral y el error estándar
media_muestral <- mean(muestra)
error_estandar <- sigma/sqrt(n)

# Crear un histograma de la muestra aleatoria
p1 <- ggplot(data.frame(muestra), aes(x = muestra)) +
  geom_histogram(aes(y = ..density..), binwidth = 1,
                 fill = "#69b3a2", color = "black", alpha = 0.8) +
  geom_vline(xintercept = media_muestral, color = "red", size = 1.5) +
  ggtitle("Histograma de la muestra aleatoria") +
  xlab("Altura (cm)") +
  ylab("Densidad") +
  theme_minimal()

# Crear una distribución normal teórica con media y desviación estándar correspondientes a los parámetros de la población
x <- seq(mu - 4*sigma, mu + 4*sigma, length.out = 1000)
y <- dnorm(x, mean = mu, sd = sigma)
datos_normal <- data.frame(x, y)

# Crear un gráfico de la distribución normal teórica
p2 <- ggplot(datos_normal, aes(x = x, y = y)) +
  geom_line(color = "#69b3a2", size = 1.5) +
  geom_vline(xintercept = mu, color = "red", size = 1.5) +
  ggtitle("Distribución normal teórica") +
  xlab("Altura (cm)") +
  ylab("Densidad") +
  theme_minimal()

# Combinar ambos gráficos
grid.arrange(p1, p2, ncol = 2)
