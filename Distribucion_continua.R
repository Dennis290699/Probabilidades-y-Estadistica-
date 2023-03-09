n = 20000

poblacion <- runif(n, 50, 110)

m1 <- c()
m2 <- c()
m3 <- c()

for(i in 1:n){
  m1[i] = mean(sample(poblacion, 100, replace = TRUE))
  m2[i] = mean(sample(poblacion, 250, replace = TRUE))
  m3[i] = mean(sample(poblacion, 500, replace = TRUE))
}

par(mfrow = c(1, 3))

# Generamos los histogramas para las tres muestras
hist(m1, main = "Muestra de tamaño 100", xlab = "Media muestral")
hist(m2, main = "Muestra de tamaño 250", xlab = "Media muestral")
hist(m3, main = "Muestra de tamaño 500", xlab = "Media muestral")

# media_muestral <- c(m1, m2, m3)
# media <- mean(media_muestral)
# cat("La media de la muestra de tamaño 100 es:", media)
# 
# desviacion_Standart <- sd(media_muestral)
# cat("La SD de la muestra de tamaño 100 es:", desviacion_Standart)

par(mfrow = c(1, 2))

hist(m3, col = "#E3DFFD", main = "TLC", xlab = "media")

w <- rnorm(n, mean(m3), sd(m3))
hist(w, xlab = "media", ylab = "Repeticiones", col = "#FFF4D2", main = "Distribucion normal")
