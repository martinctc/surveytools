% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/superspread_count.R
\name{superspread_count}
\alias{superspread_count}
\title{Convert single-code column(s) into "multiple choice" formats, filling data with sum of counts.}
\usage{
superspread_count(df, select_helpers = everything())
}
\arguments{
\item{df}{Data frame to apply function to.}

\item{select_helpers}{Use dplyr select helpers to apply function only to required columns.
Leave blank to include everything}
}
\value{
n number of new binary / multiple-choice columns / variables, with values representing the count of
row-occurrences in the original set of input categorical/single-code variables.
n represents the number of unique values found in the input variables.
}
\description{
This function counts the number of occurrences per row in a number of categorical / single-code variables.
}
\examples{
\dontrun{
library(data.table)
library(dplyr)
dt <- data.table(id = 1:10000,
                 cat1 = sample(letters[1:3],10000,replace = TRUE),
                 cat2 = sample(letters[1:4],10000,replace = TRUE),
                 cat3 = sample(letters[1:5],10000,replace = TRUE))
dt <- as.data.table(dt)
superspread_count(df = dt, select_helpers = contains("cat"))
}

}
\seealso{
Other superspread functions: 
\code{\link{superspread}()}
}
\concept{superspread functions}
