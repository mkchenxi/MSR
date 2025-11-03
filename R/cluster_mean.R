#' cluster mean
#'
#' This function gives you the centers (means) of all the attributes that are used for clustering for each cluster. You will get a table of cluster means.
#'
#' @param anova_cluster an R ANOVA analysis object that uses the clustering outcome from a cluster analysis as the factors and the attributes that are used for the clustering as the dependent variables.
#'
#' @return mean_table a table of cluster means, each value is the mean of an attribute for a cluster.
#' @export
#'
#' @examples NA
cluster_mean <- function(anova_cluster) {

  mean_table <- t(anova_cluster$coefficients)

  if (nrow(mean_table)==1) {
    mean_table <- c(mean_table[,1],
                    mean_table[,-1]+mean_table[,1])
    names(mean_table) <- paste("cluster_",
                               as.character(1:length(mean_table)),
                               sep = "")
  } else if (nrow(mean_table) > 1) {
    mean_table <- cbind(mean_table[,1],
                        mean_table[,-1]+mean_table[,1])
    colnames(mean_table) <- paste("cluster_",
                                  as.character(1:ncol(mean_table)),
                                  sep = "")
  }

  return(mean_table)
}
