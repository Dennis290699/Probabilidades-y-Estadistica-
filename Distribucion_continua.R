# Definir la población
poblacion <- rnorm(10000, mean = 70, sd = 5)

# Tomar una muestra aleatoria de tamaño 100
muestra <- sample(poblacion, 100)

# Calcular la media muestral y la desviación estándar muestral
media_muestral <- mean(muestra)
desviacion_estandar_muestral <- sd(muestra)

# Calcular la desviación estándar de la distribución muestral
desviacion_estandar_distribucion_muestral <- desviacion_estandar_muestral / sqrt(100)

# Generar 1000 muestras de tamaño 100 y calcular su media muestral
medias_muestrales <- replicate(1000, mean(sample(poblacion, 100)))

# Crear una gráfica con dos paneles
par(mfrow = c(1, 2))

# Primer panel: distribución de la muestra
hist(muestra, main = "Distribución de la muestra", xlab = "Peso")

# Segundo panel: distribución normal aproximada utilizando el teorema del límite central
hist(medias_muestrales, main = "Distribución de la media muestral", xlab = "Media muestral", prob = TRUE)
curve(dnorm(x, mean = 70, sd = desviacion_estandar_distribucion_muestral), add = TRUE, col = "red")

