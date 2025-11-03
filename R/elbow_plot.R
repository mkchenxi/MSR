#' elbow plot
#'
#' This function produces an elbow plot based the hierarchical clustering results (an R "hclust" object).
#'
#' @param height the "height" from the hclust object. height is a vector of within-cluster variation at different stage of the agglomeration procedure. It starts with the initial stage that each and every consumer is in its own cluster, and gradually combine users and clusters to the end stage that all consumers are in 1 cluster. Note that the values in height is always in an ascending order.
#' @param nclust the max number of clusters that you want to check. The default value is 10. You can change to other integer values if you want.
#'
#' @return An elbow plot which plots the within cluster variation (height) against the no. of clusters.
#' @export
#'
#' @examples NA
elbow_plot <- function(height,nclust = 10)
{
  y <- utils::tail(height,nclust)
  x <- nclust:1

  graphics::plot(x,y,type = "b",
                 xlab = "No. of Clusters",
                 ylab = "Within Cluster Variation")
  graphics::axis(1, at = 1:nclust)
}
