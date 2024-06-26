
\name{Ei}
\alias{Ei}
\title{Ei}
\usage{
Ei(Kx, J, s)
}
\arguments{
\item{Kx}{kernel matrix, better be the result of \code{\link{KX}}}

\item{J}{slice matrix, better be the result of \code{\link{Jy}}}

\item{s}{regularization parameter}
}
\value{
a eigen analysis result
\item{ei}{the eigensystem of RKSIR}
}
\description{
Compute the eigensystem of RKSIR
}
\examples{
\dontrun{
X <- matrix(rnorm(30), 15, 2)
Kx <- KX(X)
y <- sample(1:15, 15)
J <- Jy(y, h = 5)
Ei(Kx, J, s = 0.1)
}
}
