% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/superspread_fill.R
\name{superspread_fill}
\alias{superspread_fill}
\title{Convert single-code column(s) into "multiple choice" formats, filling data from a target column}
\usage{
superspread_fill(df, tcol, select_helpers = everything(), target_col)
}
\arguments{
\item{df}{Data frame to apply function to.}

\item{tcol}{Number of columns to create}

\item{select_helpers}{Use dplyr select helpers to apply function only to required columns.}

\item{target_col}{Target column to take values from, in order to fill the new columns
Leave blank to include everything}
}
\description{
Convert single-code column(s) into "multiple choice" formats, filling data from a target column
}
\examples{
library(dplyr)
library(magrittr)
data.frame(a=c(1,2,4,5,6,7,8),b=c(244,333,434,453,123,123,435)) \%>\%
 superspread_fill(8,"a","b")

}
