\name{Constrained least squares}
\alias{cls}
\alias{mvcls}
\title{
Constrained least squares
}

\description{
Constrained least squares.
}

\usage{
cls(y, x, R, ca)
mvcls(y, x, R, ca)
}

\arguments{
\item{y}{
The response variable. For the cls() a numerical vector with observations, but for the mvcls() a numerical matrix .
}
\item{x}{
A matrix with independent variables, the design matrix.
}
\item{R}{
The R vector that contains the values that will multiply the beta coefficients. See details and examples.
}
\item{ca}{
The value of the constraint, \eqn{R^T \beta = c}. See details and examples.
}
}

\details{
This is described in Chapter 8.2 of Hansen (2019). The idea is to inimise the sum of squares of the residuals under the constraint \eqn{R^\top \bm{\beta} = c}. As mentioned above, be careful with the input you give in the x matrix and the R vector. The cls() function performs a single regression model, whereas the mcls() function performs a regression for each column of y. Each regression is independent of the others.
}

\value{
A list including:
\item{be}{
A numerical matrix with the constrained beta coefficients.
}
\item{mse}{
A numerical vector with the mean squared error.
}
}

\references{
Hansen, B. E. (2022). Econometrics, Princeton University Press.
}

\author{
Michail Tsagris.

R implementation and documentation: Michail Tsagris \email{mtsagris@uoc.gr}.
}

%\note{
%%  ~~further notes~~
%}

\seealso{
\code{\link{pls}, \link{int.cls}
}
}

\examples{
x <- as.matrix( iris[1:50, 1:4] )
y <- rnorm(50)
R <- c(1, 1, 1, 1)
cls(y, x, R, 1)
}
