\name{Xt0-class}
\Rdversion{1.1}
\docType{class}
\alias{Xt0-class}
\alias{[,Xt0,character,missing,missing-method}
\alias{[<-,Xt0,character,missing-method}

\title{Class \code{"Xt0"}}
\description{
	\code{"Xt0"} contains the hyperprior values of the autoregressive part and is an internal class and is stored in \code{"Parameters0"}
}

\section{Slots}{
  \describe{
    \item{\code{X00}:}{ A \code{"vector"} of length S (S is the number of spatial points of the predicted grid) with the mean hyperprior values of the parameter \code{X0} }
    \item{\code{sigma2X00}:}{ A \code{"matrix"} of dimension SXS with the hyperprior variance of the parameter \code{X0} }
    \item{\code{AR0}:}{ A \code{"list"} of objects of class \code{"Autorregresive0"}, one for each temporal lag of the model.  }
    \item{\code{sigma2N0}:}{ A \code{"vector"} of length 2 with the hyperprior values of the parameter \code{sigma2N} }
  }
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "Xt0", i = "character", j = "missing", drop = "missing")}: extract the components of the model. }
    \item{[<-}{\code{signature(x = "Xt0", i = "character", j = "missing")}: assign values to the components of the model. }
	 }
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

\keyword{classes}