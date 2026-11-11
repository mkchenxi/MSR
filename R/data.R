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


#' Product Diffusion Data for Bass Model Estimation
#'
#' Adoption, download, or unit-sales counts for five products and services.
#' The data can be used to estimate and compare Bass diffusion models.
#'
#' @format A data frame (tibble) with 175 rows and 3 variables:
#' \describe{
#'   \item{product}{Product or service name.}
#'   \item{time}{Observation period, recorded as a label such as
#'     `week_1`, `month_1`, or `quarter_1` depending on the product.}
#'   \item{no_of_adoptions}{Number of adoptions, downloads, or units sold
#'     in the indicated period.}
#' }
#'
#' @details The product series are:
#' \itemize{
#'   \item Angry birds: 7 weekly observations of game downloads.
#'   \item Music app downloads: 30 monthly observations of app downloads.
#'   \item Caller tunes: 51 monthly observations of mobile-service adopters.
#'   \item iPad / tablets: 76 quarterly observations of unit sales.
#'   \item Smartphones: 11 quarterly observations of unit sales.
#' }
#' Time labels index successive periods for each product; they are not calendar dates.
#'
#' @source MSR course-provided data; original collection sources not specified.
#' @examples
#' data(diffusion_data)
#' head(diffusion_data)
#' subset(diffusion_data, product == "Angry birds")
"diffusion_data"

#' Super Bock Beer Conjoint Ratings
#'
#' Ratings of beer product profiles, with four attributes (price, brand,
#' capacity, and bottle shape) for a rating-based conjoint analysis.
#'
#' @format A data frame (tibble) with 936 rows and 8 variables:
#' \describe{
#'   \item{obs_id}{Observation identifier.}
#'   \item{ratings}{Rating given to the beer product profile.}
#'   \item{respondent_id}{Respondent identifier.}
#'   \item{profile_id}{Product-profile identifier.}
#'   \item{price}{Factor with levels `30ct`, `50ct`, `60ct`, `70ct`.}
#'   \item{brand}{Factor with levels `Cristal`, `Sagres`, `Super Bock`.}
#'   \item{capacity}{Factor with levels `200ml`, `250ml`, `330ml`.}
#'   \item{shape}{Factor with levels `Long Neck`, `Rocket`, `Spanish`.}
#' }
#'
#' @details The four product attributes have three or four levels each.
#' This dataset is stored in the package as `super_bock` (the supplied source
#' file was named `super_bock_mini.RData`).
#'
#' @source MSR course-provided data; original collection sources not specified.
#' @examples
#' data(super_bock)
#' head(super_bock)
#' levels(super_bock$price)
#' levels(super_bock$brand)
"super_bock"

#' TiVo Consumer Survey Data
#'
#' Consumer demographics, purchasing characteristics, viewing habits, and
#' favorite TiVo features, represented as numeric variables and indicator columns.
#'
#' @format A data frame with 1,000 observations and 23 variables:
#' \describe{
#'   \item{Gender: Females}{0/1 indicator of female gender.}
#'   \item{Gender: Males}{0/1 indicator of male gender.}
#'   \item{Education: none}{0/1 indicator of education category 'none'.}
#'   \item{Education: BA}{0/1 indicator of bachelor's-degree category.}
#'   \item{Education: MA}{0/1 indicator of master's-degree category.}
#'   \item{Education: PhD}{0/1 indicator of PhD category.}
#'   \item{Annual Income (x1000 $)}{Annual income in thousands of dollars.}
#'   \item{Age}{Respondent age.}
#'   \item{Purchasing Decision-maker: single}{0/1 indicator for an
#'     individual purchasing decision-maker.}
#'   \item{Purchasing Decision-maker: family}{0/1 indicator for a
#'     family purchasing decision.}
#'   \item{Purchasing Location: discount}{0/1 indicator for discount retailer.}
#'   \item{Purchasing Location: web (ebay)}{0/1 indicator for web (eBay).}
#'   \item{Purchasing Location: retail}{0/1 indicator for retail.}
#'   \item{Purchasing Location: mass-consumer electronics}{0/1 indicator
#'     for a mass-consumer electronics store.}
#'   \item{Purchasing Location: specialty stores}{0/1 indicator
#'     for specialty stores.}
#'   \item{Monthly Electronics Spend}{Monthly electronics spending.}
#'   \item{Purchasing Frequency (every x months)}{Typical purchase interval,
#'     expressed in months.}
#'   \item{TV Viewing (hours/day)}{Hours of TV viewing per day.}
#'   \item{Favorite Feature: cool gadget}{0/1 indicator of favorite feature.}
#'   \item{Favorite Feature: programming/interactive features}{0/1
#'     indicator of favorite feature.}
#'   \item{Favorite Feature: saving favorite shows to watch as a family}{0/1
#'     indicator of favorite feature.}
#'   \item{Favorite Feature: schedule control}{0/1 indicator of favorite feature.}
#'   \item{Favorite Feature: time shifting}{0/1 indicator of favorite feature.}
#' }
#'
#' @details Indicator columns are numeric, with 1 denoting the named category
#' and 0 denoting its absence. Several column names contain spaces and
#' punctuation; use double brackets to refer to them (e.g.,
#' `tivo_data[["TV Viewing (hours/day)"]]`).
#'
#' @source MSR course-provided data; original collection sources not specified.
#' @examples
#' data(tivo_data)
#' str(tivo_data)
#' head(tivo_data[["Annual Income (x1000 $)"]])
"tivo_data"
