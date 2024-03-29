\name{Positively constrained least squares}
\alias{pls}
\title{
Positively constrained least squares
}

\description{
Positively constrained least squares.
}

\usage{
pls(y, x)
}

\arguments{
\item{y}{
The response variables, a numerical vector with observations.
}
\item{x}{
A matrix with independent variables, the design matrix.
}
}

\details{
The constraint is that all beta coefficients (including the constant) are positive.
}

\value{
A list including:
\item{be}{
The positively constrained beta coefficients.
}
\item{mse}{
The mean squared error.
}
}

%\references{
%Hansen, B. E. (2022). Econometrics, Princeton University Press.
%}

\author{
Michail Tsagris.

R implementation and documentation: Michail Tsagris \email{mtsagris@uoc.gr}.
}

%\note{
%%  ~~further notes~~
%}

\seealso{
\code{\link{cls}
}
}

\examples{
x <- as.matrix( iris[1:50, 1:4] )
y <- rnorm(50)
pls(y, x)
}
