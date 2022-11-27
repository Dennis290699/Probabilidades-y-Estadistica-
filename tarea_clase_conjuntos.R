
S <- c(1, -5)

Q <- c(2, 3)


union(S,Q)

intersect(S,Q)

setdiff(S,Q)

#A△B=(A-B)U(B-A)
union(setdiff(S,Q),setdiff(Q,S))
