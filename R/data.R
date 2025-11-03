#' Red Bull ads
#'
#' Contains the daily views of Red Bull ads.
#'
#' @format A data frame with 171 rows and 2 variables:
#' \describe{
#' \item{time}{Each day}
#' \item{no_of_adoptions}{The daily number of adoptions (views))}
#' }
#'
#' @source {Compiled by Xi Chen}
#'
#' @examples data(red_bull_ads)
"red_bull_ads"


#' iPhone data
#'
#' Contains the units of sales of iPhone at each quarter of the year.
#'
#' @format A data frame with 37 rows and 2 variables:
#' \describe{
#' \item{time}{Each quarter of the year}
#' \item{no_of_adoptions}{The number of adoptions (units sold)}
#' }
#'
#' @source {Compiled by Xi Chen}
#'
#' @examples data(iphone)
"iphone"

#' Sticky Notes
#'
#' Contains the no. of installations on each day.
#'
#' @format A data frame with 170 rows and 2 variables:
#' \describe{
#' \item{time}{Each day}
#' \item{no_of_adoptions}{The number of adoptions (installations)}
#' }
#'
#' @source {Compiled by Xi Chen}
#'
#' @examples data(sticky_notes)
"sticky_notes"


#' Marks Spencer
#'
#' Contains Marks Spencer data used in the Market Response Model sessions.
#'
#' @format A data frame with 100 rows and 6 variables:
#' \describe{
#' \item{Week}{Indicates the no. of weeks, in total 100 weeks}
#' \item{Advertising}{The advertising intensity}
#' \item{Promotion}{a factor of two-levels - “Yes” or “No”; the baseline is already set to “No”}
#' \item{Price}{the price index}
#' \item{Brand_Equity}{a measure of weekly brand equity of Marks & Spencer}
#' \item{Sales}{the weekly sales}
#' }
#'
#' @source {Compiled by Xi Chen}
#'
#' @examples data(marks_spencer)
"marks_spencer"


#' camera
#'
#' Contains camera data used in this course.
#'
#' @format A data frame with 612 rows and 5 variables:
#' \describe{
#' \item{id}{Indicates ID of respondent}
#' \item{memory_format}{Indicates type of memory format: "Memory Stick", "SD Card", or "Compact Flash Card"}
#' \item{lens}{Indicates type of camera lens: "Glass Lens 8x Zoom", "Plastic Lens 8x Zoom", or "Plastic Lens 4x Zoom"}
#' \item{price}{Indicates price of camera: "300 euro", "100 euro", "200 euro"}
#' \item{ratings}{Indicates the rating of the camera, value from 1-100}
#' }
#'
#' @source {Compiled by Xi Chen}
#'
#' @examples data(camera)
"camera"


#' dim toothpaste
#'
#' Contains a matrix with the number of dimensions for toothpaste data used in this course.
#'
#' @format A matrix with 10 rows and 3 variables:
#' \describe{
#' \item{V1}{The first dimension or underlying attribute of the toothpaste brands}
#' \item{V2}{The second dimension or underlying attribute of the toothpaste brands}
#' \item{V3}{The third dimension or underlying attribute of the toothpaste brands}
#' }
#'
#' @source {Compiled by Xi Chen}
#'
#' @examples data(dim_toothpaste)
"dim_toothpaste"


#' dist toothpaste
#'
#' Contains a data frame that is a distance matrix between the 10 toothpaste brands discussed in this course.
#'
#' @format A data frame with 10 row and 10 variables, with each row and column corresponding to a brand:
#' \describe{
#' \item{AquaFresh}{Distances of other brands to AquaFresh}
#' \item{Crest}{Distances of other brands to Crest}
#' \item{Colgate}{Distances of other brands to Colgate}
#' \item{Aim}{Distances of other brands to Aim}
#' \item{Gleem}{Distances of other brands to Gleem}
#' \item{PlusWhite}{Distances of other brands to PlusWhite}
#' \item{UltraBrite}{Distances of other brands to UltraBite}
#' \item{CloseUp}{Distances of other brands to CloseUp}
#' \item{Pepsodent}{Distances of other brands to Pepsodent}
#' \item{Sensodyne}{Distances of other brands to Sensodyne}
#' }
#'
#' @source {Compiled by Xi Chen}
#'
#' @examples data(dist_toothpaste)
"dist_toothpaste"


#' osn
#'
#' Contains a data frame used for the Cluster Analysis session.
#'
#' @format A data frame with 120 rows and 6 variables of users from an online social network (OSN):
#' \describe{
#' \item{intrinsic}{The intrinsic preferences of users towards the OSN}
#' \item{habit}{To what extent users form a persistent habit of using the OSN}
#' \item{si_followers}{How susceptible users are to the influence of their followers}
#' \item{si_friends}{How susceptible users are to the influence of their friends}
#' \item{n_followers}{The (normalized) no. of followers of users}
#' \item{n_friends}{The (normalized) no. of friends of users}
#' }
#'
#' @source {Compiled by Xi Chen}
#'
#' @examples data(osn)
"osn"
