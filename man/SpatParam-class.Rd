\name{SpatParam-class}
\Rdversion{1.1}
\docType{class}
\alias{SpatParam-class}
\alias{[,SpatParam,character,missing,missing-method}
\alias{[<-,SpatParam,character,missing-method}

\title{Class \code{"SpatParam"}}
\description{
	\code{"SpatParam"} contains the values of the spatial parameters and is an internal class stored in the classes \code{"Mu"} and \code{"Autorregressive"}.
}


\section{Slots}{
  \describe{
    \item{\code{alpha}:}{ A \code{"vector"} of length: the number of horizontal (east-west) spatial lags. It contains the fitted values of the horizontal spatial parameters. }
    \item{\code{beta}:}{ A \code{"vector"} of length: the number of vertical (north-south) spatial lags. It contains the fitted values of the vertical spatial parameters. }
    \item{\code{phi}:}{ A \code{"vector"} of length: the number of diagonal (southeast-northwest) spatial lags. It contains the fitted values of the diagonal spatial parameters.  }
    \item{\code{theta}:}{A \code{"vector"} of length: the number of inverse-diagonal (southwest-northeast) spatial lags. It contains the fitted values of the inverse-diagonal spatial parameters.  }
    \item{\code{Cmat}:}{ An SxS \code{"matrix"} (S is the number of spatial points of the predicted grid) containing all the spatial parameters. }
    \item{\code{lags}:}{A \code{"vector"} containing the spatial lags for each direction. Each position of the vector is related to the lags of alpha, beta, phi and theta, respectively. }
    \item{\code{dirs}:}{A \code{"vector"} containing the considered spatial directions of the model. }
  }
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "SpatParam", i = "character", j = "missing", drop = "missing")}: extract the components of the model. }
    \item{[<-}{\code{signature(x = "SpatParam", i = "character", j = "missing")}: assign values to the components of the model. }
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
