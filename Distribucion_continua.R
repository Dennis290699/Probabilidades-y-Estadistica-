n = 20000

poblacion <- runif(n, 50, 110)

arr1 <- c()
arr2 <- c()
arr3 <- c()

for(i in 1:n){
  arr1[i] = mean(sample(poblacion, 100, replace = TRUE))
  arr2[i] = mean(sample(poblacion, 250, replace = TRUE))
  arr3[i] = mean(sample(poblacion, 500, replace = TRUE))
}

par(mfrow = c(1, 3))

# Generamos los histogramas para las tres muestras
hist(arr1, main = "Muestra de tamaño 100", xlab = "Media muestral")
hist(arr2, main = "Muestra de tamaño 250", xlab = "Media muestral")
hist(arr3, main = "Muestra de tamaño 500", xlab = "Media muestral")

# media_muestral <- c(m1, m2, m3)
# media <- mean(media_muestral)
# cat("La media de la muestra de tamaño 100 es:", media)
# 
# desviacion_Standart <- sd(media_muestral)
# cat("La SD de la muestra de tamaño 100 es:", desviacion_Standart)

par(mfrow = c(1, 2))

hist(arr3, col = "#E3DFFD", main = "TLC", xlab = "MEDIA")

normal_datos <- rnorm(n, mean(arr3), sd(arr3))
hist(normal_datos, xlab = "MEDIA", ylab = "Repeticiones", col = "#FFF4D2", main = "Distribucion normal")
