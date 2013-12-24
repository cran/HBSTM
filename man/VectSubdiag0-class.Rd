\name{VectSubdiag0-class}
\Rdversion{1.1}
\docType{class}
\alias{VectSubdiag0-class}
\alias{[,VectSubdiag0,character,missing,missing-method}
\alias{[<-,VectSubdiag0,character,missing-method}

\title{Class \code{"VectSubdiag0"}}
\description{
		\code{"VectSubdiag0"} contains the hyperprior values of the specified space-time parameters, and it is an internal class stored in \code{"Autorregressive0"}
}

\section{Slots}{
  \describe{
    \item{\code{east0}:}{ A \code{"matrix"} of dimension 2X(Length of vector east) with the means in the first row and the variance in the second row.  }
    \item{\code{west0}:}{ A \code{"matrix"} of dimension 2X(Length of vector west) with the means in the first row and the variance in the second row. }
    \item{\code{north0}:}{ A \code{"matrix"} of dimension 2X(Length of vector north) with the means in the first row and the variance in the second row. }
    \item{\code{south0}:}{ A \code{"matrix"} of dimension 2X(Length of vector south) with the means in the first row and the variance in the second row. }
    \item{\code{southeast0}:}{ A \code{"matrix"} of dimension 2X(Length of vector southeast) with the means in the first row and the variance in the second row. }
    \item{\code{northwest0}:}{ A \code{"matrix"} of dimension 2X(Length of vector northwest) with the means in the first row and the variance in the second row. }
    \item{\code{southwest0}:}{ A \code{"matrix"} of dimension 2X(Length of vector southwest) with the means in the first row and the variance in the second row. }
    \item{\code{northeast0}:}{ A \code{"matrix"} of dimension 2X(Length of vector northeast) with the means in the first row and the variance in the second row. }
  }
}

\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "VectSubdiag0", i = "character", j = "missing", drop = "missing")}: extract the components of the model. }
    \item{[<-}{\code{signature(x = "VectSubdiag0", i = "character", j = "missing")}: assign values to the components of the model. }
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