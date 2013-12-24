\name{mse}
\alias{mse.HBSTM}
\alias{mse}
\alias{mse-methods}
\alias{mse,HBSTM-method}


\title{
	Mean Square Error
}
\description{
	Calculate the mean square error of an object of class \code{HBSTM}.
}
\usage{
	mse(object)
}


\arguments{
  \item{object}{ An object of class \code{"HBSTM"}.}
}


\value{
	Returns a \code{"numeric"} with the mean square error value.
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



