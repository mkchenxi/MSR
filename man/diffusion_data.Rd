\docType{data}
\name{diffusion_data}
\alias{diffusion_data}
\title{Product Diffusion Data for Bass Model Estimation}
\description{Adoption, download, or unit-sales counts for five products and services.
The data can be used to estimate and compare Bass diffusion models.}
\format{A data frame (tibble) with 175 rows and 3 variables:
\describe{
\item{product}{Product or service name.}
\item{time}{Observation period, recorded as a label such as \code{week_1},
\code{month_1}, or \code{quarter_1}, depending on the product.}
\item{no_of_adoptions}{Number of adoptions, downloads, or units sold
in the indicated period.}
}}
\usage{diffusion_data}
\details{The product series are:
\itemize{
\item Angry birds: 7 weekly observations of game downloads.
\item Music app downloads: 30 monthly observations of app downloads.
\item Caller tunes: 51 monthly observations of mobile-service adopters.
\item iPad / tablets: 76 quarterly observations of unit sales.
\item Smartphones: 11 quarterly observations of unit sales.
}
Time labels index successive periods for each product; they are not calendar dates.}
\source{MSR course-provided data; original collection sources not specified.}
\examples{
data(diffusion_data)
head(diffusion_data)
subset(diffusion_data, product == "Angry birds")
}
\keyword{datasets}
