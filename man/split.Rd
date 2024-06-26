
\name{split}
\alias{split}
\title{split}
\usage{
split(y, ns = NULL)
}
\arguments{
\item{y}{response vector, must be 1,2,...}

\item{ns}{a vector which contains the length of each class in the training data}
}
\value{
a vector
\item{train}{a vector which contains the number of data in the training set}
}
\description{
Split data randomly into training set and testing set
}
\examples{
\dontrun{
y <- c(rep(1, 7), rep(2, 10), rep(3, 12))
ns <- c(3, 4, 5)
split(y, ns)
}
}
