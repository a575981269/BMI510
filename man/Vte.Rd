
\name{Vte}
\alias{Vte}
\title{Vte}
\usage{
Vte(Xtest, Xtrain, Xsple, p, ei, kernel = "AG", sigma = 2)
}
\arguments{
\item{Xtest}{testing data}

\item{Xtrain}{training data}

\item{Xsple}{if data is too large, can choose some sample of training data}

\item{p}{dimensions of e.d.r. directions}

\item{ei}{eigen analysis result of \code{\link{Ei}}}

\item{kernel}{kernel functions, "AG" means \code{\link{AGKernel}}, "G" means \code{\link{GKernel}}, "P" means \code{\link{PKernel}}}

\item{sigma}{bandwidth}
}
\value{
a matrix with column vector being e.d.r. direction on the testing set
\item{Vtr}{column vectors are the e.d.r. directions of testing data}
}
\description{
Compute the e.d.r. direction on the testing data
}
\examples{
\dontrun{
Xtrain <- matrix(rnorm(30), 15, 2)
Xtest <- matrix(rnorm(20), 10, 2)
Kx <- KX(Xtrain)
y <- sample(1:15, 15)
J <- Jy(y, h = 5)
ei <- Ei(Kx, J, s = 0.1)
Vte(Xtest, Xtrain, Xtrain, p = 2, ei)
}
}
