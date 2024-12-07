\name{Positive and unit sum constrained least squares}
\alias{pcls}
\alias{mpcls}
\title{
Positive and unit sum constrained least squares
}

\description{
Positive and unit sum constrained least squares.
}

\usage{
pcls(y, x)
mpcls(y, x)
}

\arguments{
\item{y}{
The response variable. For the pcls() a numerical vector with observations, but for the mpcls() a numerical matrix.
}
\item{x}{
A matrix with independent variables, the design matrix.
}
}

\details{
The constraint is that all beta coefficients are positive and sum to 1. The pcls() function performs a single regression model, whereas the mpcls() function performs a regression for each column of y. Each regression is independent of the others.
}

\value{
A list including:
\item{be}{
A numerical matrix with the positively constrained beta coefficients.
}
\item{mse}{
A numerical vector with the mean squared error.
}
}

\author{
Michail Tsagris.

R implementation and documentation: Michail Tsagris \email{mtsagris@uoc.gr}.
}

%\note{
%%  ~~further notes~~
%}

\seealso{
\code{\link{pls}, \link{cls}, \link{mvpls}
}
}

\examples{
x <- as.matrix( iris[1:50, 1:4] )
y <- rnorm(50)
pcls(y, x)
}
