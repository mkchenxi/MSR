#' scree plot
#'
#' The function creates a scree plot for multi-dimensional scaling. A scree plot is a plot that plots the STRESS (standardized residual sum of square) against the no. of dimensions. Using the scree plot, you can apply the elbow criteria to select the no. of dimensions.
#'
#' @param dist a distance matrix with each element as the distance between two brands. The own distance is set to zero. The distance from Brand 1 to Brand 2 is the same as that from Brand 2 to 1. "dist" is a symmetric matrix with diagonal elements equal to zeros.
#' @param ndim the no. of dimensions that you want to plot. The default value is 10. You can set to other integer values. Note that ndim must be smaller that the no. of brands in your distance matrix. 
#'
#' @return A scree plot that can help you decide that no. of dimensions.
#' @export
#'
#' @examples NA
scree_plot <- function(dist,ndim=10) {

  ndim <- min(ndim,dim(dist)[2]-1)
  stress <- rep(0,ndim)

  for (i in 1:ndim) {
    disthat <- stats::dist(suppressWarnings(stats::cmdscale(dist,k=i)))
    stress[i] <- sqrt(sum((disthat-dist)^2)/sum(dist^2))
  }

  graphics::plot(1:ndim,stress,type = "b",
                 xlab = "No. of Dimensions",
                 ylab = "STRESS")
  graphics::axis(1, at = 1:ndim)

}
