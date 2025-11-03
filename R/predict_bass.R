#' predict_bass
#'
#' The function "predict_bass" is to predict the cumulative no. of adoptions ($N$) using the Bass parameters $p$, $q$ and $M$. From the prediction, you can get the adoption curve. 
#'
#' @param bass.par The bass parameters in the order of ($p$,$q$,$M$) it outputs the cumulative no. of adoptions during $T$.
#' @param T The no. of time periods of your predictions.
#'
#' @return The cumulative no. of adoptions ($N$) from time period 1 to time period $T$.
#' @export
#'
#' @examples NA
predict_bass <- function(T,bass.par) {

  # unpack bass parameters
  p <- bass.par[1]
  q <- bass.par[2]
  M <- bass.par[3]

  # making predictions
  N <- M*(1 - (p+q)/(p*exp((p+q)*T)+q))

  # return values
  return(N)

}
