\name{hbstm.fit}
\alias{hbstm.fit}
\alias{hbstm.fit-methods}
\alias{hbstm.fit,HBSTM-method}


\title{
	Fitted function for Hierarchical Bayesian Space Time models
}
\description{
	This is the basic computing engine that \code{hbstm} uses to fit Hierarchical Bayesian Space Time models. In general, this should not be used directly, unless by experienced users.
}
\usage{
	hbstm.fit(HBSTM,nIter,nBurn,time,timerem,plots,posterior,save)
}


\arguments{
  \item{HBSTM}{ An object of class \code{"HBSTM"}.}
  \item{nIter}{ Number of Gibbs Sampling iterations. Default value is 1000.}
  \item{nBurn}{ Number of burn-in samples. This number of samples will be discarded before making any inference. Default value is the 20 percent of nIter.}
  \item{time}{ A \code{"logical"} indicating whether the method shows the estimated time of execution.}
  \item{timerem}{A \code{"logical"} indicating whether the method shows the estimated remaining time of execution.}
  \item{plots}{ A \code{"logical"} indicating whether the method shows the plots of the execution (the mse, Zt vs K*Yt and the ACF/PACF of the residuals}.
  \item{posterior}{ A \code{"character"} indicating whether the function returns the mean and the standard deviation of the fitted values of Yt or returns the median with its 95 percent credibility intervals.}
  \item{save}{ A \code{"character"} indicating if, for each iteration, the algorithm save the estimation of certain parameters. See "Details" for more information.}
}

\details{
The \code{save} argument is a \code{"character"} that can have any of the following options:

	-\code{"all"}{: Save an object of class \code{Parameters}.}
	
	-\code{"Mu"}{: Save an object of class \code{Mu}.}
	
	-\code{"Mt"}{: Save an object of class \code{Mt}.}
	
	-\code{"Xt"}{: Save an object of class \code{Xt}.}
	

}
\value{
	\code{hbstm.fit} returns an object of class \code{\linkS4class{HBSTM}}
}


\author{
	Pilar Munyoz and Alberto Lopez Moreno
}


\seealso{
	Overview: \code{\link{HBSTM-package}} \cr
	Classes : \code{\linkS4class{HBSTM},\linkS4class{Parameters},\linkS4class{Mu},\linkS4class{Mt},\linkS4class{Xt},\linkS4class{Autoregressive},\linkS4class{Seas},\linkS4class{SpatParam},\linkS4class{VectSubdiag},
	\linkS4class{Hyperpriors},\linkS4class{Mu0},\linkS4class{Mt0},\linkS4class{Xt0},\linkS4class{Seas0},\linkS4class{Autoregressive0},\linkS4class{SpatParam0},\linkS4class{VectSubdiag0}}\cr
	Methods : \code{\link{hbstm},\link{hbstm.fit},\link{results},\link{estimation},\link{resid},\link{mse}}\cr
	Plot : \code{\link{plotRes},\link{plotFit}}\cr	
	Data: \code{\link{hirlam},\link{coordinates}}\cr	
}

\examples{
## See 'tutorial.pdf', included in the documentation of the package, to see a full example
}

