\name{Mu-class}
\Rdversion{1.1}
\docType{class}
\alias{Mu-class}
\alias{[,Mu,character,missing,missing-method}
\alias{[<-,Mu,character,missing-method}

\title{Class \code{"Mu"}}
\description{
	\code{"Mu"} contains the parameter values of the mean component and is an internal class stored in \code{"Parameters"}.
}


\section{Slots}{
  \describe{
    \item{\code{muvect}:}{ An Sx1 \code{"matrix"} (S is the number of spatial points of the predicted grid) containing the temporal autoregressive parameter \code{muvect} }
    \item{\code{mu0vect}:}{ An Sx1 \code{"matrix"} containing the temporal autoregressive parameter \code{mu0vect} }
    \item{\code{mu0L}:}{ A 3x1 \code{"matrix"} containing the temporal autoregressive parameter \code{a0L} }
    \item{\code{sigma2Mu}:}{ Contains the fitted value of the variance \code{sigma2Mu}.}
    \item{\code{spatialMu}:}{An object of class \code{"SpatParam"} containing the fitted values of the spatial parameters of \code{muvect}. }
  }
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "Mu", i = "character", j = "missing", drop = "missing")}: extract the components of the model. }
    \item{[<-}{\code{signature(x = "Mu", i = "character", j = "missing")}: assign values to the components of the model. }
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