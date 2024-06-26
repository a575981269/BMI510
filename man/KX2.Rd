
\name{KX2}
\alias{KX2}
\title{KX2}
\usage{
KX2(X1, X2, kernel = "AG", sigma = 2, center = TRUE)
}
\arguments{
\item{X1, X2}{data matrixs}

\item{kernel}{kernelfunction, "AG" means \code{\link{AGKernel}}, "G" means \code{\link{GKernel}}, "P" means \code{\link{PKernel}}}

\item{sigma}{bandwidth}

\item{center}{logic value, centralize or not}
}
\value{
a kernel matrix
\item{K}{Gram matrix of the raw data}
}
\description{
Compute kernel matrix of X1 with X2
}
\examples{
\dontrun{
X1 <- matrix(1:20, 4, 5)
X2 <- matrix(1:10, 2, 5)
KX2(X1, X2)
}
}
