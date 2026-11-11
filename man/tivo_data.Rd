\docType{data}
\name{tivo_data}
\alias{tivo_data}
\title{TiVo Consumer Survey Data}
\description{Consumer demographics, purchasing characteristics, viewing habits,
and favorite TiVo features, represented as numeric variables and indicator columns.}
\format{A data frame with 1,000 observations and 23 variables:
\describe{
\item{Gender: Females}{0/1 indicator of female gender.}
\item{Gender: Males}{0/1 indicator of male gender.}
\item{Education: none}{0/1 indicator of education category 'none'.}
\item{Education: BA}{0/1 indicator of bachelor's-degree category.}
\item{Education: MA}{0/1 indicator of master's-degree category.}
\item{Education: PhD}{0/1 indicator of PhD category.}
\item{Annual Income (x1000 $)}{Annual income in thousands of dollars.}
\item{Age}{Respondent age.}
\item{Purchasing Decision-maker: single}{0/1 indicator for an individual purchasing decision-maker.}
\item{Purchasing Decision-maker: family}{0/1 indicator for a family purchasing decision.}
\item{Purchasing Location: discount}{0/1 indicator for discount retailer.}
\item{Purchasing Location: web (ebay)}{0/1 indicator for web (eBay).}
\item{Purchasing Location: retail}{0/1 indicator for retail.}
\item{Purchasing Location: mass-consumer electronics}{0/1 indicator for a mass-consumer electronics store.}
\item{Purchasing Location: specialty stores}{0/1 indicator for specialty stores.}
\item{Monthly Electronics Spend}{Monthly electronics spending.}
\item{Purchasing Frequency (every x months)}{Typical purchase interval, expressed in months.}
\item{TV Viewing (hours/day)}{Hours of TV viewing per day.}
\item{Favorite Feature: cool gadget}{0/1 indicator of favorite feature.}
\item{Favorite Feature: programming/interactive features}{0/1 indicator of favorite feature.}
\item{Favorite Feature: saving favorite shows to watch as a family}{0/1 indicator of favorite feature.}
\item{Favorite Feature: schedule control}{0/1 indicator of favorite feature.}
\item{Favorite Feature: time shifting}{0/1 indicator of favorite feature.}
}}
\usage{tivo_data}
\details{Indicator columns are numeric, with 1 denoting the named category
and 0 denoting its absence. Several column names contain spaces and
punctuation; use double brackets to refer to them (e.g.,
\code{tivo_data[["TV Viewing (hours/day)"]]}).}
\source{MSR course-provided data; original collection sources not specified.}
\examples{
data(tivo_data)
str(tivo_data)
head(tivo_data[["Annual Income (x1000 $)"]])
}
\keyword{datasets}
