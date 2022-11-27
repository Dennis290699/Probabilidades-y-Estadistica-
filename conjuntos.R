# TAREA 2 OPERACIONES CON CONJUNTOS
#INGRESAMOS LOS CONJUNTOS A TRABAJAR
A<-c(4,6,8,10,12)
B<-c(3,5,7,9)
C<-c(4,7,5,11)

#A) (AUB)
union(A,B)

#B) (A∩B)
intersect(A,B)

#C) AU(BUC)
union(A, union(B,C))

#D) (B∩C)
intersect(B,C)

#E) (AUB)UC
union(union(A,B),C)

#F) (AUB)∩(CUB)
intersect(union(A,B),union(C,B))

#G) (A∩C)UB
union(intersect(A,C),B)

#H) (A-C)
setdiff(A,C)

#I) (AUB)-C
setdiff(union(A,B),C)

# PREGUNTA 3
# SE INGRESA LOS CONJUNTOS
U<-c(1,2,3,4)
A<-c(1,3)
B<-c(2,3)

#A) AU(A∩B)=A
# USAMOS LAS FUNCIONES UNION E INTERSECCION EN LA MISMA LINEA
union(A,intersect(A,B))

#B)(A-B)UB=AUB
#PARTE IZQUIERDA
union(setdiff(A,B),B)
#PARTE DERECHA
union(A,B)

#C) (A-B)nB=vacio
intersect(setdiff(A,B),B)

#D (AUB)-(A∩B) = A△B=(A-B)U(B-A)
#PARTE DERECHA
union(setdiff(A,B),setdiff(B,A))
#PARTE IZQUIERDA
setdiff(union(A,B),intersect(A,B))
#DIFERENCIA SIMETRICA ES DEFINIDA POR
#A△B=(A-B)U(B-A)
union(setdiff(A,B),setdiff(B,A))
union(A,B)

#FIN DE TAREA


