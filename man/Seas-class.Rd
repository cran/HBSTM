\name{Seas-class}
\Rdversion{1.1}
\docType{class}
\alias{Seas-class}
\alias{[,Seas,character,missing,missing-method}
\alias{[<-,Seas,character,missing-method}

\title{Class \code{"Seas"}}
\description{
	\code{"Seas"} contains the parameter values of the seasonal component and is an internal class stored in \code{"Mt"}.
}


\section{Slots}{
  \describe{
    \item{\code{w}:}{ The period of the seasonality }
    \item{\code{fvect}:}{An Sx1 \code{"matrix"} (S is the number of spatial points of the predicted grid) containing the temporal autoregressive parameter \code{fvect} }
    \item{\code{f0L}:}{ A 3x1 \code{"matrix"} containing the temporal autoregressive parameter \code{f0L} }
    \item{\code{gvect}:}{ A Sx1 \code{"matrix"} containing the temporal autoregressive parameter \code{gvect} }
    \item{\code{g0L}:}{ A 3x1 \code{"matrix"} containing the temporal autoregressive parameter \code{g0L} }
  }
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "Seas", i = "character", j = "missing", drop = "missing")}: extract the components of the model. }
    \item{[<-}{\code{signature(x = "Seas", i = "character", j = "missing")}: assign values to the components of the model. }
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