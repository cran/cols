int.cls <- function(y, x, lb, ub) {

  dm <- dim(x)
  n <- dm[1]   ;   p <- dm[2]

  A <- diag(p)
  A <- rbind(A, -A)
  if ( length(lb) == 1 )  lb <- rep(lb, p)
  if ( length(ub) == 1 )  ub <- rep(ub, p)
  bvec <- c(lb, -ub)

  dvec <- as.vector( crossprod(x, y) )
  xx <- crossprod(x)

  f <- quadprog::solve.QP(Dmat = xx, dvec = dvec, Amat = t(A), bvec = bvec)
  be <- as.matrix( f$solution )
  rownames(be) <- colnames(x)
  mse <- ( sum(y^2) + 2 * f$value ) / n

  list(be = be, mse = mse)

}
