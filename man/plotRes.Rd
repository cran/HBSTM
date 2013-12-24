\name{plotRes}
\alias{plotRes}
\alias{plotRes-methods}
\alias{plotRes,HBSTM-method}


\title{
	Residual Plots
}
\description{
	Plot the residuals of the fitted values of an object of class \code{HBSTM}.
}
\usage{
	plotRes(object,point,ARlags,ARperiod)
}

\arguments{
  \item{object}{ An object of class \code{"HBSTM"}.}
  \item{point}{ A integer indicating the spatial point to show the results. By default a random spatial point is selected. }
  \item{ARlags}{ Maximum lag at which the ACF and the PACF are calculated. Default is \code{10*log10(N/m)}, where \code{N} is the number of observations and \code{m} the number of series. It will be automatically limited to one less than the number of observations in the series}
  \item{ARperiod}{ The period of the data. Prints in red the lag in the period.}
}


\value{
	null
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

