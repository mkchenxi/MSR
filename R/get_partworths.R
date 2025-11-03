#' get partworths
#'
#' This function returns the partworths of levels from a rating-based conjoint analysis. The returned value is a list containing the partworths values of various levels.
#'
#' @param mdl The R linear regression ( lm(.) ) object, i.e., the result of a dummy variable regression of ratings on the level dummies for a conjoint analysis
#'
#' @return a list that contains partworths values; each member of the list corresponds to an attribute; each member is a vector that contains the partworths of the levels of an attribute.
#' @export
#'
#' @examples NA
get_partworths <- function(mdl) {

  # get the list of levels and create partworths list
  xlevel <- mdl$xlevels
  partworths <- lapply(xlevel,function(x){rep(0,length(x))})

  # rename the partworth elements
  nk <- length(xlevel)
  for (i in 1:nk){
    names(partworths[[i]]) <- xlevel[[i]]
  }

  # get the partworths
  coeffs <- summary(mdl)$coefficients
  coeffs <- coeffs[-1,1]*(coeffs[-1,4]<0.05)

  # pack into partworths
  nlevel <- cumsum(unlist(lapply(xlevel,length))-1)
  nlevel <- cbind(c(1,nlevel[-nk]+1),nlevel)
  for (i in 1:nk){
    partworths[[i]][-1] <- coeffs[nlevel[i,1]:nlevel[i,2]]
  }

  return(partworths)
}
