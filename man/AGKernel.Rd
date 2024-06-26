
\name{AGKernel}
\alias{AGKernel}
\title{AGKernel}
\usage{
AGKernel(x, z, sigma = 2)
}
\arguments{
\item{x}{the first vector}

\item{z}{the second vector}

\item{sigma}{bandwidth}
}
\value{
a numeric value
\item{k}{value of k(x, z)}
}
\description{
Additive Gaussian Kernel
}
\examples{
\dontrun{
x = c(1, 0); z = c(0, 1)
AGKernel(x, z)
}
}
