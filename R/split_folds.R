#' Randomly Split Data into K Folds for Cross-Validation
#'
#' This function randomly splits the input data into \code{K} folds for
#' cross-validation. Each observation is assigned to exactly one fold.
#'
#' @param data A data frame, matrix, or vector to be split.
#' @param K Integer. Number of folds. Default is \code{2}.
#' @param seed Integer. Random seed for reproducibility. Default is \code{123}.
#'
#' @return A list of length \code{K}, where each element contains the subset
#'         of the data corresponding to that fold.
#'
#' @examples
#' # Example with a numeric vector
#' folds <- split_folds(1:10, K = 3)
#' str(folds)
#'
#' # Example with a data frame
#' folds_df <- split_folds(iris, K = 5)
#' lapply(folds_df, nrow)
#'
#' @export
split_folds <- function(data, K = 2, seed = 123) {
  # Input validation
  if (!is.numeric(K) || K < 2 || K != as.integer(K)) {
    stop("K must be an integer greater than or equal to 2.")
  }

  if (!is.numeric(seed) || length(seed) != 1) {
    stop("seed must be a single numeric value.")
  }

  # Set seed for reproducibility
  set.seed(seed)

  # Determine sample size
  n <- if (is.data.frame(data) || is.matrix(data)) nrow(data) else length(data)

  # Randomly assign observations to folds
  fold_ids <- sample(rep(1:K, length.out = n))

  # Split the data by fold IDs
  folds <- lapply(1:K, function(k) {
    if (is.data.frame(data) || is.matrix(data)) {
      data[fold_ids == k, , drop = FALSE]
    } else {
      data[fold_ids == k]
    }
  })

  names(folds) <- paste0("Fold_", seq_len(K))

  return(folds)
}
