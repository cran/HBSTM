\name{Xt-class}
\Rdversion{1.1}
\docType{class}
\alias{Xt-class}
\alias{[,Xt,character,missing,missing-method}
\alias{[<-,Xt,character,missing-method}

\title{Class \code{"Xt"}}
\description{
	\code{"Xt"} contains the parameter values of the autoregressive part and is an internal class stored in \code{"Parameters"}.
}


\section{Slots}{
  \describe{
    \item{\code{Xt}:}{ A \code{"matrix"} of dimension SxT (S = predicted spatial points and T = temporal points) containing the fitted values of the parameter \code{Xt}. }
    \item{\code{X0}:}{An Sx1 \code{"matrix"} containing the auxiliary parameter \code{X0}. }
    \item{\code{sigma2N}:}{ Contains the fitted value of the variance \code{sigmaN}. }
    \item{\code{AR}:}{ A \code{"list"} of objects of class \code{Autoregressive}, one for each temporal lag of the model. }
    \item{\code{templags}:}{ A \code{"vector"} containing the temporal lags of the model. }
  }
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "Xt", i = "character", j = "missing", drop = "missing")}: extract the components of the model. }
    \item{[<-}{\code{signature(x = "Xt", i = "character", j = "missing")}: assign values to the components of the model.. }
	 }
}



\author{
	Pilar Munyoz and Alberto Lopez Moreno
}


\seealso{
	Overview: \code{\link{HBSTM-package}} \cr
	Classes : \code{\linkS4class{HBSTM},\linkS4class{Parameters},\linkS4class{Parameters},\linkS4class{Mu},\linkS4class{Mt},\linkS4class{Xt},\linkS4class{Autoregressive},\linkS4class{Seas},\linkS4class{SpatParam},\linkS4class{VectSubdiag},
	\linkS4class{Hyperpriors},\linkS4class{Mu0},\linkS4class{Mt0},\linkS4class{Xt0},\linkS4class{Seas0},\linkS4class{Autoregressive0},\linkS4class{SpatParam0},\linkS4class{VectSubdiag0}}\cr
	Methods : \code{\link{hbstm},\link{hbstm.fit},\link{results},\link{estimation},\link{resid}}\cr
	Plot : \code{\link{plotRes}}\cr	
}
\keyword{classes}