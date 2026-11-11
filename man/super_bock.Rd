\docType{data}
\name{super_bock}
\alias{super_bock}
\title{Super Bock Beer Conjoint Ratings}
\description{Ratings of beer product profiles, with four attributes (price,
brand, capacity, and bottle shape) for a rating-based conjoint analysis.}
\format{A data frame (tibble) with 936 rows and 8 variables:
\describe{
\item{obs_id}{Observation identifier.}
\item{ratings}{Rating given to the beer product profile.}
\item{respondent_id}{Respondent identifier.}
\item{profile_id}{Product-profile identifier.}
\item{price}{Factor with levels \code{30ct}, \code{50ct}, \code{60ct}, \code{70ct}.}
\item{brand}{Factor with levels \code{Cristal}, \code{Sagres}, \code{Super Bock}.}
\item{capacity}{Factor with levels \code{200ml}, \code{250ml}, \code{330ml}.}
\item{shape}{Factor with levels \code{Long Neck}, \code{Rocket}, \code{Spanish}.}
}}
\usage{super_bock}
\details{The four product attributes have three or four levels each.
This dataset is stored in the package as \code{super_bock} (the supplied source
file was named \file{super_bock_mini.RData}).}
\source{MSR course-provided data; original collection sources not specified.}
\examples{
data(super_bock)
head(super_bock)
levels(super_bock$price)
levels(super_bock$brand)
}
\keyword{datasets}
