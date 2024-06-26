\name{SC19017-package}
\alias{SC19017-package}
\alias{SC19017}
\docType{package}
\title{
  R package for BMI course
}
\description{
  Some R or Rcpp functions for RKSIR
}
\details{
  With this R package, we can perform Regularized Kernel Sliced Inverse Regression.  
}
\author{
WeiWang

Maintainer: WeiWang
}
\references{
  Wu, Qiang and Liang, Feng and Mukherjee, Sayan (2013) \emph{Kernel Sliced Inverse Regression: Regularization and Consistency} Abstract and Applied Analysis
}
\keyword{ Statistical Computing; RKSIR }
\seealso{
  
}
\examples{
  \dontrun{
data(wine)
y <- wine[, 1]
X <- scale(wine[, -1], center = TRUE, scale = TRUE)
n <- nrow(X)
## split data into training set and testing set
ns <- c(17, 20, 13)
train <- SC19017::split(y, ns)
test <- (1:n)[-train]
Xtrain <- X[train, ]
Xtest <- X[test, ]
ytrain <- y[train]
ytest <- y[test]
# bandwidth select
distance <- matrix(NA, nrow = n, ncol = n-1)
for(i in 1:n) {
  distance[i, ] <- c(apply(X[-i, ], 1, function(o) {
    sqrt(sum((o - X[i, ])^2))
  }))
}
sigma <- median(distance)
# estimate e.d.r. directions
Kx <- KX(Xtrain, "AG", sigma, center = TRUE)
J <- Jy(ytrain, numeric = FALSE)
ei2 <- Ei(Kx, J, s = 0.01)
vtrain <- Vtr(Xtrain, Xtrain, 2, ei2, "AG", sigma)
vtest <- Vte(Xtest, Xtrain, Xtrain, 2, ei2, "AG", sigma)
# knn
library(class)
knn.pred <- knn(vtrain, vtest, ytrain, k = 5)
knn.result <- rep(NA, 3)
for(i in 1:3) {
  knn.result[i] <- sum(table(knn.pred, ytest)[-i, i])/sum(table(knn.pred, ytest)[, i])
}
mean(knn.result)
table(knn.pred, ytest)
#svm
library(e1071)
svm.model <- svm(vtrain, factor(ytrain))
svm.pred <- predict(svm.model, vtest)
svm.result <- rep(NA, 3)
for(i in 1:3) {
  svm.result[i] <- sum(table(svm.pred, ytest)[-i, i])/sum(table(svm.pred, ytest)[, i])
}
mean(svm.result)
table(svm.pred, ytest)
# plot figure
library(ggplot2)
Test <- data.frame(v1 = vtest[, 1], v2 = vtest[, 2], classes = as.factor(ytest))
ggplot(Test, aes(x = v1, y = v2, col = classes)) + 
  geom_point() + 
  xlab("first e.d.r. direction") + 
  ylab("second e.d.r. direction")
  }
}
