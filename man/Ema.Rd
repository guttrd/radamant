\name{Ema}
\alias{ema}

\title{Exponential Moving Average}

\description{Compute multiple Exponential Moving Averages on the input data, one for each column of X[, i] and window size win.size[j].}

\usage{ema(X, win.size = NROW(X), plot = FALSE, ...) }

\arguments{ 
\item{X}{ Matrix of data series (one column per variable). }
\item{win.size}{ vector of moving average window sizes (lags) to be applied on the data X. (DEFAULT = 10). }
\item{plot}{LOGICAL. Return plot. }
\item{...}{ Additional parameters accepted by the function Mmovav.}
}

\details{For financial time series (class = 'fs'), only 'Close' column is processed. \cr
Smoothing factor: lambda = 2/(win.size+1). }

\value{A object of class 'ma' with attributes type = "EMA" and 'win.size' as given by the corresponding input parameter: \cr
 - matrix of size NROW(X) by NCOL(X)*length(win.size) where each column is the moving average of length win.size[i] of the corresponding column of X.}

\references{}

\author{ RAdamant Development Team \email{team@r-adamant.org} }


\note{}

\seealso{}

\examples{}

\keyword{ ~kwd1 }
\keyword{ ~kwd2 }


