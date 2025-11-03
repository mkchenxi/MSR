#' estimate_bass
#'
#' This function estimates the bass parameters, given the no. of adoptions (n) at each time period.
#'
#' @param x the no. of adoptions at each time period in a chronological order. For example, x can be the no. of iPhones sold at each quarter of the year.
#'
#' @return The function returns a vector of bass parameters in the order of p, q, M, i.e., the innovation parameter p, the imitation parameter q and the market potential M.
#' @export
#'
#' @examples NA
estimate_bass <- function(x) {

  # create a new variable of cumulative adoptions
  cum_x <- cumsum(x)

  # run a regression with sales as DV and cum_x and cum_x^2 as IVs
  mdl <- stats::lm(x ~ 1 + cum_x + I(cum_x^2))

  # get the coefficients
  # a: the intercept
  # b: the coefficient of cumulative adoptions
  # c: the coefficient of squared cumulative adoptions
  a <- mdl$coefficients[1]
  b <- mdl$coefficients[2]
  c <- mdl$coefficients[3]

  # solving for p, q and M with a, b and c
  M1 <- (-b-sqrt(b^2-4*a*c))/(2*c)
  M2 <- (-b+sqrt(b^2-4*a*c))/(2*c)
  M <- max(M1,M2) # M is set to the larger of M1 and M2

  p <- a/M
  q <- -c*M

  # output a named vector
  bass.par <- c(p,q,M)
  names(bass.par) <- c("p","q","M")

  return(bass.par)
}
