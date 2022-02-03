#Bai tap 1
count <- function(x, i) {
	sum = 0
	for (j in 1:i)
		sum = sum + x[j]
	return (sum)
}

x <- sample(1:100, 50, replace = FALSE)
x

count(x, 29)

#sample(a:b, n, replace = TRUE/FALSE): tao mot vector gom n so nguyen nam giua
# a va b

#Lenh runif(n, a, b): tao ra mot mang gom n phan tu
#la so thuc nam trong khoang [a, b]

#Lenh round(x, n): lam tron x den n chu so thap phan

n <- 100
x1 <- round(runif(n, 0, 10), 2)
x1
count(x1, 79)
sum(x1[1:79])

#Xoa tat ca cac bien
rm(list = ls(all = TRUE))

#Bai tap 2

x <- 1
y <- 100000
calVol <- function(a, b) {
	r <- a:b
	v <- round(4*pi*r^3/3, 10)
	d <- data.frame(Radius = r, Volume = v)
	return (d)
}

ans <- calVol(3, 20)
ans


#Bai tap 3
data01 <- read.csv("data01.csv", header = TRUE)
names(data01)
attach(data01)

n <- length(Age)
Index <- numeric(n)

for (i in 1:n) {
	if (Age[i] <= 60) {Index[i] <- 0}
	else {
		if (Age[i] <= 70) {Index[i] <- 1}
		else {
			if (Age[i] <= 80) {Index[i] <- 2}
			else {Index[i] <- 3}
		}
	} 
}

ans <- data.frame(Age, Index)
ans

#Xoa het cac bien truoc khi chay bai sau
detach(data01)
rm(list = ls(all = TRUE))

#Bai tap 4
#a. Doc du lieu tu file data11.csv vao R
data11 <- read.csv("data11.csv", header = TRUE)
attach(data11)
data11

#Lenh rep(x, n): lap n lan x

#b. Viet ham tinh cac tham so mau cho bang tan so dang khoang
calSample <- function(d) {
#d: data.frame co dang bang tan so dang khoang, cho boi can tren a,
#can duoi b, va tan so n
	t <- (a + b) / 2
	x <- rep(t, n)
	m <- min(x)
	M <- max(x)
	x.bar <- mean(x) #Trung binh mau cua x
	s2 <- var(x) #Phuong sai cua x
	dat <- data.frame(Min = m, Max = M, Mean = x.bar, Var = s2)
	rownames(dat) <- c("")
	return (dat)
}

ans <- calSample(data11)
ans

#Xoa cac bien truoc khi chay bai sau
rm(list = ls(all = TRUE))

#Bai tap 5
#Lenh sort(x, decreasing = FALSE)
#sap xep x tang dan: sort(x)
#sap xep x giam dan: sort(x, decreasing = TRUE)

phanvi <- function(x, p) {
	x <- sort(x)
	i <- (p/100) * length(x)
	if (i - round(i) != 0) #neu i khong nguyen
		quantile <- x[ceiling(x)]
	quantile <- (x[i] + x[i + 1]) / 2
}

#Kiem tra
x <- round(runif(22, 0, 100), 20)
x
q <- phanvi(x, 25)
q

#Xoa cac bien truoc khi chay bai sau
rm(list = ls(all = TRUE))
