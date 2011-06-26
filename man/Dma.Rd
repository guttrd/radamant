\name{Dma}
\alias{dma}

\title{Derivative Moving Averages}

\description{Compute multiple Derivative Moving Averages on the input data, one for each column of X[, i] and window size win.size[j].}

\usage{dma(X, fast.win = 5, slow.win = 28, plot = FALSE, ...) }

\arguments{ \item{X}{ Matrix of data series (one column per variable).}
\item{fast.win}{ size of the fast moving average (fast lag) to be applied on the data X. (DEFAULT = 5). }
\item{slow.win}{ size of the slow moving average (fast lag) to be applied on the data X. (DEFAULT = 28). }
\item{plot}{ LOGICAL. Return plot.}
\item{...}{ }
}

\details{For financial time series (class = 'fs'), only 'Close' column is processed. \cr
Formula: 100 * ( movMax(SMA(X, fast.win), slow.win) - movMin(SMA(X, fast.win), slow.win)) / X.
}

\value{A object of class 'ma' with attributes type = "DMA" and 'win.size' as from the corresponding input parameters [fast.win,slow.win]: \cr
	- matrix of size NROW(X) by NCOL(X) where each column is the moving average of the corresponding column of X.
}

\references{}

\author{RAdamant Development Team \email{team@r-adamant.org} }

\note{}

\seealso{\code{\link{sma}}}

\examples{}

\keyword{ ~kwd1 }
\keyword{ ~kwd2 }
