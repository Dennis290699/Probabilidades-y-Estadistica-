#install.packages("ggplot2")
library(ggplot2)

#PRIMER EJEMPLO DE CAJA Y BIGOTES

#PARA EJECUTAR EL PROGRAMA CTRL+ENTER


#INGRESO EL PRIMER VECTOR PAIS

pais <- c("RFA" , "Australia", "Austria", "Belgica", "Canada", "Dinamarca", "España",
          "USA", "Findlandia", "Francia", "Grecia", "Holanda", "Irlanda", "Islandia",
          "Italia", "Japon", "Luxemburgo", "Noruega", "N_Zel", "Portugal", "G_Bretania",
          "Suezia", "Suiza", "Turquia")

#INGRESO EL SEGUNDO VECTOR CONSUMO0
#LOS DECIMALES LOS ASIGNAMOS CON PUNTOS

consumo <- c(2.2, 7.6, 2.9, 4.6, 4.1, 3.9, 7.4, 3.2, 5.1, 5.3, 20.1, 2.3, 5.5, 32.7, 9.1,
             1.7, 3.2, 5.8, 16.3, 15.9, 5.9, 6.7, 3.4, 40.5)

summary(consumo)

mean(consumo)

#DESVIACION ESTANDAR
sd(consumo)

#DIAGRAMA DE CAJAS Y BIGOTES
boxplot(consumo,main="Consumo por Pais", COl = "blue", horizontal =TRUE)

#BASE DE DATOS
bd <- cbind(pais,consumo)
bd <- as.data.frame(bd)

#TABLA DINAMICA CON GGPLOT PACKAGE
p <- ggplot(bd, aes(x="", y=consumo))
p+geom_boxplot()
hist(consumo, col="pink",xlab = "Consumo", ylab="Frecuencia", main = "Histograma de Consumo")
