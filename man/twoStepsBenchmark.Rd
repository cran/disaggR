% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/twoStepsBenchmark.R
\name{twoStepsBenchmark}
\alias{twoStepsBenchmark}
\alias{annualBenchmark}
\title{Regress and bends a time series with a lower frequency one}
\usage{
twoStepsBenchmark(hfserie,lfserie,include.differenciation=FALSE,include.rho=FALSE,
                  set.coeff=NULL,set.const=NULL,
                  start.coeff.calc=NULL,end.coeff.calc=NULL,
                  start.benchmark=NULL,end.benchmark=NULL,
                  start.domain=NULL,end.domain=NULL,outliers=NULL,
                  ...)


annualBenchmark(hfserie,lfserie,
                include.differenciation=FALSE,include.rho=FALSE,
                set.coeff=NULL,set.const=NULL,
                start.coeff.calc=start(lfserie)[1L],
                end.coeff.calc=end(lfserie)[1L],
                start.benchmark=start(lfserie)[1L],
                end.benchmark=end.coeff.calc[1L]+1L,
                start.domain=start(hfserie),
                end.domain=c(end.benchmark[1L]+2L,frequency(hfserie)),
                outliers=NULL)
}
\arguments{
\item{hfserie}{the bended time series. It can be a matrix time series.}

\item{lfserie}{a time series whose frequency divides the frequency of \code{hfserie}.}

\item{include.differenciation}{a boolean of length 1. If \code{TRUE}, \code{lfserie} and
\code{hfserie} are differentiated before the estimation of the regression.}

\item{include.rho}{a boolean of length 1. If \code{TRUE}, the regression includes
an autocorrelation parameter for the residuals. The applied procedure is a
Prais-Winsten estimation.}

\item{set.coeff}{an optional numeric, that allows the user to set the
regression coefficients instead of evaluating them.
If hfserie is not a matrix, set.coeff can be an unnamed numeric of length 1.
Otherwise, \code{set.coeff} has to be a named numeric, which will set the
corresponding coefficients instead of evaluating them.
Each column name of hfserie and each outlier set with the \code{outlier} arg
initialize a coefficient with the same name, that can be set through set.coeff.
The default name for a non-matrix time series is then \code{"hfserie"},
By example, a LS2003 and the time series can be set using
\code{set.coeff=c(hfserie=3,LS2003=1)}.}

\item{set.const}{an optional numeric of length 1, that sets the regression
constant.
The constant is actually an automatically added column to \code{hfserie}. Using
\code{set.constant=3} is equivalent to using \code{set.coeff=c(constant=3)}.}

\item{start.coeff.calc}{an optional start for the estimation of the
coefficients of the regression.
Should be a numeric of length 1 or 2, like a window for \code{lfserie}. If NULL,
the start is defined by lfserie's window.}

\item{end.coeff.calc}{an optional end for the estimation of the coefficients
of the regression.
Should be a numeric of length 1 or 2, like a window for \code{lfserie}. If NULL,
the end is defined by lfserie's window.}

\item{start.benchmark}{an optional start for \code{lfserie} to bend \code{hfserie}.
Should be a numeric of length 1 or 2, like a window for \code{lfserie}. If NULL,
the start is defined by lfserie's window.}

\item{end.benchmark}{an optional end for \code{lfserie} to bend \code{hfserie}.
Should be a numeric of length 1 or 2, like a window for \code{lfserie}. If NULL,
the start is defined by lfserie's window.}

\item{start.domain}{an optional for the output high-frequency series. It also
defines the smoothing window :
The low-frequency residuals will be extrapolated until they contain the
smallest low-frequency window that is around the high-frequency domain
window.
Should be a numeric of length 1 or 2, like a window for \code{hfserie}. If NULL,
the start is defined by hfserie's window.}

\item{end.domain}{an optional end for the output high-frequency series. It
also defines the smoothing window :
The low-frequency residuals will be extrapolated until they contain the
smallest low-frequency window that is around the high-frequency domain
window.
Should be a numeric of length 1 or 2, like a window for \code{hfserie}. If NULL,
the start is defined by hfserie's window.}

\item{outliers}{an optional named list of numeric vectors, whose pattern is
like \code{list(AO2008T2=c(0,0,3,2),LS2002=c(0.1,0.1,0.1,0.1))} where :
\itemize{
\item \code{"AO"} stands for additive outlier or \code{"LS"} for level shift
\item The integer that follows stands for the outlier starting year
\item an optional integer, preceded by the letter T, stands for the low-frequency
cycle of the outlier start.
\item The numeric vector values stands for the disaggregated value of the outlier
and its length must be a multiple of hf / lf
}

The outliers coefficients are evaluated though the regression process, like
any coefficient. Therefore, if any outlier is outside of the coefficient
calculation window, it should be fixed using \code{set.coeff}.}

\item{\dots}{if the dots contain a cl item, its value overwrites the value of
the returned call. This feature allows to build wrappers.}
}
\value{
twoStepsBenchark returns an object of class "\code{twoStepsBenchmark}".

The function \code{summary} can be used to obtain and print a summary of the
regression used by the benchmark.
The functions \code{plot} and \code{autoplot} (the generic from \pkg{ggplot2}) produce
graphics of the benchmarked serie and the bending serie.
The functions \link{in_disaggr}, \link{in_revisions}, \link{in_scatter}
produce comparisons on which plot and autoplot can also be used.

The generic accessor functions \code{as.ts}, \code{prais}, \code{coefficients}, \code{residuals},
\code{fitted.values}, \code{model.list}, \code{se}, \code{rho} extract various useful features of
the returned value.

An object of class "\code{twoStepsBenchmark}" is a list containing the following
components :
\item{benchmarked.serie}{a time series, that is the result of the
benchmark. It is equal to \code{fitted.values + smoothed.part}.}
\item{fitted.values}{a time series, that is the high-frequency series as it
is after having applied the regression coefficients. Compared to the fitted
values of the regression, which can be retrieved inside the regression
component, it has a high-frequency time series and can eventually be
integrated if \code{include.differenciation} is \code{TRUE}.}
\item{regression}{an object of class praislm, it is the regression on which
relies the benchmark. It can be extracted with the function \link{prais}}
\item{smoothed.part}{the smoothed part of the two-steps benchmark. It is
the smoothed difference between the \code{fitted.values} and lfserie.}
\item{model.list}{a list containing all the arguments submitted to the
function.}
\item{call}{the matched call (either of twoStepsBenchmark or
annualBenchmark)}
}
\description{
twoStepsBenchmark bends a time series with a time series of a lower frequency.
The procedure involved is a Prais-Winsten regression, then an additive
Denton benchmark.

Therefore, the resulting time series is the sum of a regression fit and of a
smoothed part. The smoothed part minimizes the sum of squares of its
differences.

The resulting time series is equal to the low-frequency series after aggregation
within the benchmark window.
}
\details{
annualBenchmark is a wrapper of the main function, that applies more specifically
to annual series, and changes the default window parameters to the ones
that are commonly used by quarterly national accounts.
}
\examples{

## How to use annualBenchmark or twoStepsBenchark

benchmark <- twoStepsBenchmark(hfserie = turnover,
                               lfserie = construction,
                               include.differenciation = TRUE)
as.ts(benchmark)
coef(benchmark)
summary(benchmark)
library(ggplot2)
autoplot(in_sample(benchmark))

## How to manually set the coefficient

benchmark2 <- twoStepsBenchmark(hfserie = turnover,
                                lfserie = construction,
                                include.differenciation = TRUE,
                                set.coeff = 0.1)
coef(benchmark2)

}
