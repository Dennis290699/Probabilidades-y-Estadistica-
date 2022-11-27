#TAREA EN CLASE

# CONJUNTO S
S <- c(1, -5)

# CONJUNTO Q
Q <- c(2, 3)

#(S U Q)
union(S,Q)

#(S ∩ Q)
intersect(S,Q)

#(S - Q)
setdiff(S,Q)

#A△B=(A-B)U(B-A)
union(setdiff(S,Q),setdiff(Q,S))
