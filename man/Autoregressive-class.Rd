\name{Autoregressive-class}
\Rdversion{1.1}
\docType{class}
\alias{Autoregressive-class}
\alias{[,Autoregressive,character,missing,missing-method}
\alias{[<-,Autoregressive,character,missing-method}

\title{Class \code{"Autoregressive"}}
\description{
	\code{"Autoregressive"} contains the parameter values of the autoregressive component, and it is an internal class stored in the class \code{"Xt"}.
}

\section{Slots}{
  \describe{
    \item{\code{avect}:}{ An Sx1 \code{"matrix"} (S is the number of spatial points on the predicted grid) containing the temporal autoregressive parameter \code{avect} }
    \item{\code{a0vect}:}{ An Sx1 \code{"matrix"} containing the temporal autoregressive parameter \code{a0vect} }
    \item{\code{a0L}:}{ A 3x1 \code{"matrix"} containing the temporal autoregressive parameter \code{a0L} }
    \item{\code{spatialA}:}{ An object of class \code{"SpatParam"} containing the fitted values of the spatial parameters of \code{avect}. }
    \item{\code{sigma2A}:}{ Contains the fitted value of the variance \code{sigma2A}. }
    \item{\code{H}:}{ An SxS \code{"matrix"} containing all the autoregressive space-time parameters. }
    \item{\code{subdiag}:}{ An object of class \code{"VectSubdiag"} containing the fitted values of the space-time parameters.  }
  }
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "Autoregressive", i = "character", j = "missing", drop = "missing")}: extract the components of the model. }
    \item{[<-}{\code{signature(x = "Autoregressive", i = "character", j = "missing")}: assign values to the components of the model. }
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