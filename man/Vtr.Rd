
\name{Vtr}
\alias{Vtr}
\title{Vtr}
\usage{
Vtr(Xtrain, Xsple = Xtrain, p, ei, kernel = "AG", sigma = 2)
}
\arguments{
\item{Xtrain}{training data}

\item{Xsple}{if data is too large, can choose some sample of training data}

\item{p}{dimensions of e.d.r. directions}

\item{ei}{eigen analysis result of \code{\link{Ei}}}

\item{kernel}{kernel functions, "AG" means \code{\link{AGKernel}}, "G" means \code{\link{GKernel}}, "P" means \code{\link{PKernel}}}

\item{sigma}{bandwidth}
}
\value{
a matrix with column vector being e.d.r. direction on the training set
\item{Vtr}{column vectors are the e.d.r. directions of training data}
}
\description{
Compute the e.d.r. direction on the training data
}
\examples{
\dontrun{
X <- matrix(rnorm(30), 15, 2)
Kx <- KX(X)
y <- sample(1:15, 15)
J <- Jy(y, h = 5)
ei <- Ei(Kx, J, s = 0.1)
Vtr(X, X, p = 2, ei)
}
}
