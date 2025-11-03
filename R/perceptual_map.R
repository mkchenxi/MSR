#' Creating a perceptual map
#'
#' This function creates a perceptual map by plotting any two dimensions of the multi-dimensional scaling.
#'
#' @param mds the result from the classic multi-dimensional scaling (cmdscale). It should be a matrix of dimensions N (no. of brands) by K (the no. of dimensions).
#' @param dims a vector that indicates which two dimensions that you want to plot. For example, dims = c(1,2) means you want to plot dimension 1 and 2, with Dim 1 as the X-axis and Dim 2 as the Y-axis.
#'
#' @return A perceptual map indicating the positions of brands in the two dimensions specified in dims.
#' @export
#'
#' @examples NA
perceptual_map <- function (mds, dims) {

  mds <- mds[,dims]
  brands <- row.names(mds)

  graphics::plot(mds[,1],mds[,2],type = "p",
                 xlab =  paste("Dimension",as.character(dims[1]),sep = " "),
                 ylab = paste("Dimension",as.character(dims[2]),sep = " "))
  graphics::text(mds[,1],mds[,2],
                 labels = brands,
                 font = 2, cex = 0.8)

}
