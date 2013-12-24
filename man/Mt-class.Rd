\name{Mt-class}
\Rdversion{1.1}
\docType{class}
\alias{Mt-class}
\alias{[,Mt,character,missing,missing-method}
\alias{[<-,Mt,character,missing-method}

\title{Class \code{"Mt"}}
\description{
	\code{"Mt"} contains the parameter values of the seasonal component and is an internal class stored in \code{"Parameters"}.
}

\section{Slots}{
  \describe{
    \item{\code{Mt}:}{ A \code{"matrix"} of dimension SxT (S = predicted spatial points and T = temporal points) containing the fitted values of the parameter \code{Mt} }
    \item{\code{seas}:}{ A \code{"list"} of objects of class \code{"Seas"}, one for each seasonality of the model.}
  }
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "Mt", i = "character", j = "missing", drop = "missing")}: extract the components of the model. }
    \item{[<-}{\code{signature(x = "Mt", i = "character", j = "missing")}: assign values to the components of the model. }
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