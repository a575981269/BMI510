
\name{Jy}
\alias{Jy}
\title{Jy}
\usage{
Jy(y, numeric = TRUE, h = NULL)
}
\arguments{
\item{y}{response vector}

\item{numeric}{logic value, numeric response or categorial response}

\item{h}{if response is numeric, give the number of slices for \code{y}}
}
\value{
a slice matrix
\item{J}{slice matrix of the response}
}
\description{
Compute the slice matrix J
}
\examples{
\dontrun{
y <- sample(1:15, 15)
Jy(y, h = 5)
}
}
