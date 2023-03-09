n <- 100   # tamaño de la muestra
m <- 1000  # número de repeticiones
p <- 0.5   # probabilidad de éxito en la población

proporcion <- vector("numeric", length = m)

for(i in 1:m){
  proporcion[i] <- sum(rhyper(n, m*p, m*(1-p), n)) / n
}



hist(proporcion, xlab = "PROPORCIÓN DE ÉXITOS", ylab = "Repeticiones", 
     col = "#B4E4FF", main ="TLC - Hipergeométrica")

q <- rnorm(m, mean(proporcion), sd(proporcion))
hist(q, xlab = "proporción de éxitos", ylab = "Repeticiones", 
     col = "#F7C8E0", main = "Normalidad")
