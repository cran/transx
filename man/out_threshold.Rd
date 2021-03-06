% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/04-outliers.R
\name{out_threshold}
\alias{out_threshold}
\title{Detect outliers with upper and lower threshold}
\usage{
out_threshold(x, tlow = NULL, thigh = NULL, fill = NA)
}
\arguments{
\item{x}{\verb{[univariate vector]}

Univariate vector, numeric or ts object with only one dimension.}

\item{tlow}{\verb{[numeric(1): NULL]}

The lower threshold.}

\item{thigh}{\verb{[numeric(1): NULL]}

The upper threshold.}

\item{fill}{\verb{[numeric or function: NA]}

Numeric value(s) or function used to fill observations.}
}
\value{
Returns a vector with the same class and attributes as the input vector.
}
\description{
\ifelse{html}{\out{<a href='https://www.tidyverse.org/lifecycle/#maturing'><img src='figures/lifecycle-maturing.svg' alt='Maturing lifecycle'></a>}}{\strong{Maturing}}
}
\examples{
x <- c(1, 3, -1, 5, 10, 100)
out_threshold(x, tlow = 0, fill = 0)
out_threshold(x, thigh = 9, fill = function(x) quantile(x, 0.9))

}
