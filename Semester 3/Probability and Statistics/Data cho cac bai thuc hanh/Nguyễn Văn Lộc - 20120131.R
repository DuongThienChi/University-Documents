#Nguyen Van Loc - 20120131 - 20CTT1TN2 - Chieu T4 - Ca 2
points <- sample(1:10, 40, replace = TRUE) 
points

cntMean <- function(x) {
	n = length(x)
	sum <- 0
	for (i in 1:n) {
		sum = sum + x[i]
	}
	return (round((sum / n), digits = 2))
}

m <- cntMean(points)
m
#kiem tra ket qua
#mean(points) 

cntVar <- function(x, m) {
	n = length(x)
	sum <- 0
	for (i in 1:n) {
		sum = sum + (x[i] - m)^2
	}
	return (round((sum/(n - 1)), digits = 2))
}

v <- cntVar(points, m)
v
#kiem tra ket qua
#var(points)