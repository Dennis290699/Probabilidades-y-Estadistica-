## TAREA 2 OPERACIONES CON CONJUNTOS
#INGRESAMOS LOS CONJUNTOS A TRABAJAR
A<-c(4,6,8,10,12)
B<-c(3,5,7,9)
C<-c(4,7,5,11)

#a) (AUB)
union(A,B)

#B) A INTERSECCION B
intersect(A,B)

#c) AU(BUC)
union(A, union(B,C))
#d) BnC
intersect(B,C)
#E) (AUB)UC
union(union(A,B),C)
#f) (AUB)n(CUB)
intersect(union(A,B),union(C,B))
#G (AnC)UB
union(intersect(A,C),B)
#H A-C
setdiff(A,C)
#I (AUB)-C
setdiff(union(A,B),C)
#PREGUNTA 3
#A) AU(AnB)#A
#se ingresa los conjuntos
U<-c(1,2,3,4)
A<-c(1,3)
B<-c(2,3)
#usamos las funciones union e interseccion en la misma linea
union(A,intersect(A,B))
#B)(A-B)UB=AUB
#PARTE IZQUIERDA
union(setdiff(A,B),B)
#PAETE DERECHA
union(A,B)
#C) (A-B)nB=vacio
intersect(setdiff(A,B),B)

#D (AUB)-(AnB) = A△B=(A-B)U(B-A)
#probar derecha
union(setdiff(A,B),setdiff(B,A))
#PARTE IZQ
setdiff(union(A,B),intersect(A,B))
#DIFERENCIA SIMETRICA ES DEFINIDA POR
#A△B=(A-B)U(B-A)
union(setdiff(A,B),setdiff(B,A))
union(A,B)
#fi nde tarrea 


