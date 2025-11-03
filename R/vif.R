#' vif
#'
#' The vif function calculates the Variance-Inflation-Factor of a set of independent variables. The rule-of-thumb is that the vif of an IV should be smaller than 10. The function takes two inputs: "vnames" and "data". Note that "vnames" must be consistent with the variable names in "data". Or else, you get an error.
#'
#' @param vnames a character vector of variable names of the variables whose VIFs you want to calculate.
#' @param data a data frame containing the actual variables.
#'
#' @return  This function returns the variance-inflation-factor of a set of independent variables.
#' @export
#'
#' @examples NA
vif <- function(vnames,data) {
  # get the IVs into a data frame
  iv <- data[,vnames]

  # check for factors
  ckf <- which(unlist(lapply(iv,is.factor)))

  # if fators exist
  if (length(ckf)>0) {

    # build formula
    eq <- "~1"
    for (i in 1:length(ckf)){
      eq <- paste(eq,"+",vnames[ckf[i]],sep = "")
    }

    # create dummies
    ivf <- as.data.frame(
     stats::model.matrix(stats::as.formula(eq),data = iv))

    # bind into a data frame
    ivc <- as.data.frame(iv[,-ckf])
    colnames(ivc) <- vnames[-ckf]
    iv <- cbind(ivf,ivc)
    iv <- iv[,-1]

  }

  cor_iv <- stats::cor(iv)
  vif <- diag(solve(cor_iv))

  return(vif)
}
