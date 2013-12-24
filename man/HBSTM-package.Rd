\name{HBSTM-package}
\alias{HBSTM-package}
\alias{HBSTM}

\alias{[,CosSinMatrix,character,missing,missing-method}
\alias{[<-,CosSinMatrix,character,missing-method}
\alias{[,MtAux,character,missing,missing-method}
\alias{[<-,MtAux,character,missing-method}
\alias{[,SpatC,character,missing,missing-method}
\alias{[<-,SpatC,character,missing-method}
\alias{[,SpatH,character,missing,missing-method}
\alias{[<-,SpatH,character,missing-method}
\docType{package}
\title{
Hierarchical Bayesian Space-Time models for Gaussian space-time data
}
\description{
This package fits Hierarchical Bayesian space-Time models for Gaussian data. Furthermore, its functions have been implemented for analysing the fitting qualities of those models.
}

\details{
\tabular{ll}{
Package: \tab HBSTM\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-12-24\cr
License: \tab GPL (>=2.0) \cr
Depends: \tab methods, MASS, msm, fBasics, maps \cr
}


}
\author{
	Pilar Munyoz and Alberto Lopez Moreno
	Maintainer: Alberto Lopez Moreno <bertolomo@gmail.com>
}



\seealso{
	Overview: \code{\link{HBSTM-package}} \cr
	Classes : \code{\linkS4class{HBSTM},\linkS4class{Parameters},\linkS4class{Mu},\linkS4class{Mt},\linkS4class{Xt},\linkS4class{Autoregressive},\linkS4class{Seas},\linkS4class{SpatParam},\linkS4class{VectSubdiag},
	\linkS4class{Hyperpriors},\linkS4class{Mu0},\linkS4class{Mt0},\linkS4class{Xt0},\linkS4class{Seas0},\linkS4class{Autoregressive0},\linkS4class{SpatParam0},\linkS4class{VectSubdiag0}}\cr
	Methods : \code{\link{hbstm},\link{hbstm.fit},\link{results},\link{estimation},\link{resid},\link{mse}}\cr
	Plot : \code{\link{plotRes},\link{plotFit}}\cr	
	Data: \code{\link{hirlam},\link{coordinates}}\cr	
}
