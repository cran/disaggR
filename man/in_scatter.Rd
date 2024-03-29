% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/in.R
\name{in_scatter}
\alias{in_scatter}
\title{Comparing the inputs of a praislm regression}
\usage{
in_scatter(
  object,
  type = if (model.list(object)$include.differenciation) "changes" else "levels"
)
}
\arguments{
\item{object}{an object of class \code{"praislm"}, \code{"twoStepsBenchmark"}
or \code{"threeRuleSmooth"}.}

\item{type}{\code{"levels"} or \code{"changes"}.
This defines the type of output. A differencied model can't have a scatterplot
in levels.}
}
\value{
a named matrix time series of two or three columns, one for the low-frequency serie
and the others for the high-frequency series (eventually differentiated if
\code{include.differenciation} is \code{TRUE}).
A \code{tscomparison} class is added to the object.
For a \code{twoStepsBenchmark} object, this matrix has three columns,
for the low-frequency series, the high-frequency on the regression span and
the high-frequency series on the benchmark span.

If outlier effects are estimated, the contributions of the outliers are
substracted from the low-frequency series.
}
\description{
The function \code{in_scatter} returns low-frequency comparisons of the inputs from
a \link{praislm}, a \link{twoStepsBenchmark} or \link{threeRuleSmooth}.
}
\details{
The functions \code{plot} and \code{autoplot} can be used on this object to produce
graphics.
}
\examples{
benchmark <- twoStepsBenchmark(turnover,construction,include.rho = TRUE)
plot(in_scatter(benchmark))
}
\seealso{
\link{in_sample} \link{in_disaggr} \link{in_revisions}
\link{plot.tscomparison}
}
