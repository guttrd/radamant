\name{lrbtree}

\alias{LR.BinTree}

\title{LR Binomial Tree}

\description{Option evaluation with Leinsen and Reimer Binomial Tree}

\usage{LR.BinTree(Nsteps, under, strike, rfr, 
sigma, maty, yield, life, ret.steps = FALSE) }

\arguments{
\item{Nsteps}{ Nsteps}
\item{under}{ Underlying asset price.}
\item{strike}{ Strike/Exercise price.}
\item{rfr}{ Risk free rate (continuos).}
\item{sigma}{ Assets standard deviation - annualised volatility.}
\item{maty}{ Period of maturity.}
\item{yield}{ Dividend yield (continuos).}
\item{life}{ Option life.}
\item{ret.steps}{ Logical. If TRUE the calculated steps (step matrix) are returned.}
}

\value{List of results containing the following elements:
\item{Price_eval}{: Estimated option value at each step.}
\item{Moments}{: Moments of the distribution of the share returns (both Black & Scholes and CRR values are displayed).}
\item{Values}{: Option estimated values (both Black & Scholes and LR values are displayed).}
\item{Price_Path}{: Step matrix containing the expected share price at each step.}
}

\author{RAdamant Development Team \email{team@r-adamant.org}}

\seealso{ \code{\link{BS.price}}, \code{\link{StepMat}}, \code{\link{JR.BinTree}}, \code{\link{CRR.BinTree}}  }

\examples{
    # set option parameters
    under = 105
    strike = 95
    rfr = 0.08
    sigma = 0.2
    maty = 0.5
    yield = 0.03
    life = 0.5

    # estimate option price using Leinsen and Reimer Binomial Tree
    lr = LR.BinTree(Nsteps=10
                        , under
                        , strike
                        , rfr
                        , sigma
                        , maty
                        , yield
                        , life
                        , ret.steps=TRUE)
    lr$Values
    # ... confront results with B&S method 
    BS.price(under, strike, rfr, sigma, maty, yield)
    # get step matrix
    lr = LR.BinTree(Nsteps=10
                        , under
                        , strike
                        , rfr
                        , sigma
                        , maty
                        , yield
                        , life
                        , ret.steps=TRUE)
    lr$Price_Path
}

