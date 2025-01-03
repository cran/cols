\name{Positively constrained least squares}
\alias{pls}
\alias{mpls}
\title{
Positively constrained least squares
}

\description{
Positively constrained least squares.
}

\usage{
pls(y, x)
mpls(y, x)
}

\arguments{
\item{y}{
The response variable. For the pls() a numerical vector with observations, but for the mpls() a numerical matrix .
}
\item{x}{
A matrix with independent variables, the design matrix.
}
}

\details{
The constraint is that all beta coefficients (including the constant) are non negative, i.e.
\eqn{min \sum_{i=1}^n(y_i-\bm{x}_i^\top\bm{\beta})^2} such that \eqn{\beta_j \geq 0}. The pls() function performs a single regression model, whereas the mpls() function performs a regression for each column of y. Each regression is independent of the others.
}

\value{
A list including:
\item{be}{
A numerical matrix with the positively constrained beta coefficients.
}
\item{mse}{
A numerical vector with the mean squared error(s).
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
\code{\link{cls}, \link{pcls}, \link{mvpls}
}
}

\examples{
x <- as.matrix( iris[1:50, 1:4] )
y <- rnorm(50)
pls(y, x)
}
