\name{Seas0-class}
\Rdversion{1.1}
\docType{class}
\alias{Seas0-class}
\alias{[,Seas0,character,missing,missing-method}
\alias{[<-,Seas0,character,missing-method}

\title{Class \code{"Seas0"}}
\description{
	\code{"Seas0"} contains the hyperprior values of the seasonal component and is an internal class stored in the class \code{"Mt0"}.
}

\section{Slots}{
  \describe{
    \item{\code{f0L0}:}{ A \code{"vector"} of length 3 with the mean hyperprior values of the parameter \code{f0L}  }
    \item{\code{sigf0L0}:}{ A \code{"matrix"} of dimension 3X3 with the hyperprior variance of the parameter \code{f0L} }
    \item{\code{g0L0}:}{ A \code{"vector"} of length 3 with the mean hyperprior values of the parameter \code{g0L} }
    \item{\code{sigg0L0}:}{ A \code{"matrix"} of dimension 3X3 with the hyperprior variance of the parameter \code{g0L} }
  }
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "Seas0", i = "character", j = "missing", drop = "missing")}: extract the components of the model. }
    \item{[<-}{\code{signature(x = "Seas0", i = "character", j = "missing")}: assign values to the components of the model. }
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