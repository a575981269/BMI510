
\name{PKernel}
\alias{PKernel}
\title{PKernel}
\usage{
PKernel(x, z, sigma = 1)
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
Second Order Polynomial Kernel
}
\examples{
\dontrun{
x = c(1, 0); z = c(0, 1)
PKernel(x, z)
}
}
