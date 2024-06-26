
\name{rw_MetropolisC}
\alias{rw_MetropolisC}
\title{MetropolisC}
\usage{
rw_MetropolisC(sigma, x0, N)
}
\arguments{
\item{sigma}{the standard deviation of normal distribution}

\item{x0}{the first element of the sampler}

\item{N}{the number of samples}
}
\value{
a random sample of size \code{n}
\item{x}{random walk samples}
\item{k}{rejections}
}
\description{
A Metropolis sampler using Rcpp
}
\examples{
\dontrun{
rwC <- rw_MetropolisC(1,25,2000)$x
plot(rwC, type="l", xlab=bquote(sigma == 1), ylab="X", ylim=range(rwC))
}
}
