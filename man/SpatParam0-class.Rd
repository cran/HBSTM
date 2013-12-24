\name{SpatParam0-class}
\Rdversion{1.1}
\docType{class}
\alias{SpatParam0-class}
\alias{[,SpatParam0,character,missing,missing-method}
\alias{[<-,SpatParam0,character,missing-method}

\title{Class \code{"SpatParam0"}}
\description{
	\code{"SpatParam0"} contains the hyperprior values of the specified spatial parameters and is an internal class stored in the classes \code{"Mu0"} and \code{"Autorregressive0"}.
}

\section{Slots}{
  \describe{
    \item{\code{alpha0}:}{ A \code{"matrix"} of dimension 2X(Length of alpha vector) with the means in the first row and the variance in the second row. }
    \item{\code{beta0}:}{A \code{"matrix"} of dimension 2X(Length of beta vector) with the means in the first row and the variance in the second row.  }
    \item{\code{phi0}:}{ A \code{"matrix"} of dimension 2X(Length of phi vector) with the means in the first row and the variance in the second row.  }
    \item{\code{theta0}:}{ A \code{"matrix"} of dimension 2X(Length of theta vector) with the means in the first row and the variance in the second row. }
  }
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "SpatParam0", i = "character", j = "missing", drop = "missing")}: extract the components of the model. }
    \item{[<-}{\code{signature(x = "SpatParam0", i = "character", j = "missing")}: assign values to the components of the model. }
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
