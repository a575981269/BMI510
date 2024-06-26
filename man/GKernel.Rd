
\name{GKernel}
\alias{GKernel}
\title{GKernel}
\usage{
GKernel(x, z, sigma = 2)
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
Radial Gaussian Kernel
}
\examples{
\dontrun{
x = c(1, 0); z = c(0, 1)
GKernel(x, z)
}
}
