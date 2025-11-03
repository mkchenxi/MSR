#' Simulated Store-Week Retail Sales Panel
#'
#' A simulated dataset representing weekly sales for 100 stores across 12 weeks.
#' This dataset can be used to illustrate concepts such as the variance–bias tradeoff,
#' endogeneity, and confounding in predictive and causal modeling.
#'
#' @format A data frame with 1,200 rows and 11 variables:
#' \describe{
#'   \item{store_id}{Store identifier (1–100).}
#'   \item{week}{Week number (1–12).}
#'   \item{fold}{Integer indicator (1 or 2) for 2-fold cross-validation grouping.}#'
#'   \item{log_sales}{Natural log of sales (used in regressions).}
#'   \item{price}{Product price index(at store-week level).}
#'   \item{promo}{Binary indicator for promotional activity.}
#'   \item{comp_price}{Competitor price index.}
#'   \item{rain}{Binary indicator (1 = rainy week).}
#'   \item{holiday}{Binary indicator (1 = holiday week).}
#'   \item{assortment}{Store assortment breadth (number of SKUs - stock keeping units).}
#'   \item{size}{Store size (in square meters).}
#' }
#'
#' @details
#' The dataset is constructed to illustrate a clear variance–bias tradeoff between two models:
#' \itemize{
#'   \item A **full model** including all predictors (\code{price, promo, comp_price, rain, holiday, assortment, size})
#'   \item A **benchmark model** excluding \code{size} and \code{assortment}
#' }
#' In each fold of cross-validation, the full model overfits spurious correlations between
#' \code{size}, \code{assortment}, and the latent demand shock, resulting in better in-sample fit but
#' worse out-of-sample predictive accuracy.
#'
#' @source Simulated by the package author.
#'
#' @examples
#' data(retail_panel)
#' str(retail_panel)
#' summary(retail_panel)
"retail_panel"
