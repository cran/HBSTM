\name{estimation}
\alias{estimation}
\alias{estimation-methods}
\alias{estimation,HBSTM-method}


\title{
	Estimation of the median parameters 
}
\description{
	Estimates the median parameters of an object of class \code{HBSTM}.
}
\usage{
	estimation(object,digits)
}

\arguments{
  \item{object}{ an object of class \code{"HBSTM"}.}
  \item{digits}{ integer indicating the number of decimal places to \code{round} the median values.}
}

\details{
In caste the MCMC samples of the object parameter are a specific component of the model, the others components have value -9999999.
}
\value{
	Returns an object of class \code{Parameters} with the median estimation of the parameters MCMC samples. 
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