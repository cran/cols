\name{Lower and upper bound constrained least squares}
\alias{int.cls}
\alias{int.mcls}
\title{
Constrained least squares
}

\description{
Lower and upper bound constrained least squares
}

\usage{
int.cls(y, x, lb, ub)
int.mcls(y, x, lb, ub)
}

\arguments{
\item{y}{
The response variable. For the int.cls() a numerical vector with observations, but for the int.mcls() a numerical matrix .
}
\item{x}{
A matrix with independent variables, the design matrix.
}
\item{lb}{
A vector or a single value with the lower bound(s) in the coefficients.
}
\item{ub}{
A vector or a single value with the upper bound(s) in the coefficients.
}
}

\details{
This function performs least squares under the constraint that the beta coefficients lie within interval(s), i.e. \eqn{min \sum_{i=1}^n(y_i-\bm{x}_i^\top\bm{\beta})^2} such that \eqn{lb_j\leq \beta_j \leq ub_j}.
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
\code{\link{pls}
}
}

\examples{
x <- as.matrix( iris[1:50, 1:4] )
y <- rnorm(50)
int.cls(y, x, -0.2, 0.2)
}
