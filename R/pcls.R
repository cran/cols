pcls <- function(y, x) {

  dm <- dim(x)
  n <- dm[1]   ;   p <- dm[2]

  dvec <- as.vector( crossprod(x, y) )
  xx <- crossprod(x)
  A <- cbind(1, diag(p) )
  bvec <- c(1, rep(0, p) )
  f <- quadprog::solve.QP(Dmat = xx, dvec = dvec, Amat = A, meq = 1, bvec = bvec)
  be <- as.matrix( f$solution )
  rownames(be) <- colnames(x)
  mse <- ( sum(y^2) + 2 * f$value ) / n

  list(be = be, mse = mse)
}
