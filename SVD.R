A = as.matrix(data.frame(c(4,7,-1,8), c(-5,-2,4,2), c(-1,3,-3,6)))
A

A.svd <- svd(A)
A.svd


######### S B S ############


ATA <- t(A) %*% A
ATA

ATA.e <- eigen(ATA)
v.mat <- ATA.e$vectors
v.mat

v.mat[,1:2] <- v.mat[,1:2] * -1
v.mat

AAT <- A %*% t(A)
AAT

AAT.e <- eigen(AAT)
u.mat <- AAT.e$vectors
u.mat
u.mat <- u.mat[,1:3]

r <- sqrt(ATA.e$values)
r <- r * diag(length(r))[,1:3]
r

svd.matrix <- u.mat %*% r %*% t(v.mat)
svd.matrix
