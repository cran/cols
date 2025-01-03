int.mcls <- function(y, x, lb, ub) {

  dm <- dim(x)
  n <- dm[1]   ;   p <- dm[2]
  d <- dim(y)[2]

  A <- diag(p)
  A <- rbind(A, -A)
  A <- t(A)
  if ( length(lb) == 1 )  lb <- rep(lb, p)
  if ( length(ub) == 1 )  ub <- rep(ub, p)
  bvec <- c(lb, -ub)

  dvec <- crossprod(x, y)
  xx <- crossprod(x)

  mse <- numeric(d)
  be <- matrix(nrow = p, ncol = d)

  for ( j in 1:d ) {
    f <- quadprog::solve.QP(Dmat = xx, dvec = dvec[, j], Amat = A, meq = 1, bvec = bvec)
    be[, j] <- f$solution
    mse[j] <- f$value
  }
  mse <- ( 2 * mse + Rfast::colsums(y^2) ) / n
  rownames(be) <- colnames(x)
  list(be = be, mse = mse)
}
