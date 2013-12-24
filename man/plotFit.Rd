\name{plotFit}
\alias{plotFit}
\alias{plotFit-methods}
\alias{plotFit,HBSTM-method}


\title{
	Plot the spatial data, estimation and residuals of an object of class \code{HBSTM}
}
\description{
	Fits an object of class \code{HBSTM}
}
\usage{
	plotFit(object,time,values)
}

\arguments{
  \item{object}{ An object of class \code{"HBSTM"}.}
  \item{time}{ A integer indicating the time data to show in the spatial grid. By default, it is the last temporal observation. }
  \item{values}{ A \code{"logical"} indicating whether the function returns the values shown in the plot. }
}



\value{
	By default, \code{plotFit} returns an object of class \code{"NULL"}. If the attribute matrices is \code{TRUE}, \code{plotFit} returns a \code{"data.frame"} with three variables:\cr
	\item{"Zt"}{: The data in a fixed temporal observation specified by the attribute code{time}.}
	\item{"EstZt"}{: The data estimation in a fixed temporal observation specified by the attribute code{time}.}
	\item{"Et"}{: The residuals extracted from \code{"Zt"} and \code{"EstZt"}.}
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
## See 'tutorial.pdf', included in the documentation of the package, to see a full example}

