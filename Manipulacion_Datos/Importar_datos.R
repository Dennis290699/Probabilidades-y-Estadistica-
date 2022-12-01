# IMPORTE DE LIBRERIAS
library(readxl)

# SETEAR O DIRECCIONAR A MI DIRECTORIO DE TRABAJO
repositorio_datos <- "C:\\Users\\fing.labcom\\Documents\\Probabilidad"


setwd(repositorio_datos)

# LEER DATOS
# sheet lee el nombre de la hoja de archivo excel
datos <- read_xlsx("datos_normales.xlsx", sheet = "Datos")

# ESTADISTICA TOTAL DATOS
summary(datos)

# PARTE DE LOS DATOS
summary(datos$X3)

str(datos)

# SIMETRIA DE LOS DATOS
  hist(datos$X2)

# DIAGRAMA DE CAJAS Y BIGOTES GENERAL
boxplot(datos,main="ESTADISTICA", col = "pink", horizontal =FALSE)

# DIAGRAMA DE CAJAS Y BIGOTES PARTE
boxplot(datos$X1)
