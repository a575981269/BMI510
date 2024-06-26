
\name{KX}
\alias{KX}
\title{KX}
\usage{
KX(X, kernel = "AG", sigma = 2, center = TRUE)
}
\arguments{
\item{X}{data matrix}

\item{kernel}{kernelfunction, "AG" means \code{\link{AGKernel}}, "G" means \code{\link{GKernel}}, "P" means \code{\link{PKernel}}}

\item{sigma}{bandwidth}

\item{center}{logic value, centralize or not}
}
\value{
a \code{n} times \code{n} matrix
\item{K}{Gram matrix of the raw data}
}
\description{
Compute kernel matrix
}
\examples{
\dontrun{
X <- matrix(1:10, 2, 5)
KX(X)
}
}
