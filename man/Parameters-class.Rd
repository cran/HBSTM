\name{Parameters-class}
\Rdversion{1.1}
\docType{class}
\alias{Parameters-class}
\alias{[,Parameters,character,missing,missing-method}
\alias{[<-,Parameters,character,missing-method}

\title{Class \code{"Parameters"}}
\description{
	\code{"Parameters"} contains all the values of the fitted HBSTM parameters and it is an internal class stored in \code{"HBSTM"}.
}


\section{Slots}{
  \describe{
    \item{\code{Mu}:}{ An object of class \code{"Mu"} containing the parameters of the mean component. }
    \item{\code{Mt}:}{ An object of class \code{"Mt"} containing the parameters of the seasonal component. }
    \item{\code{Xt}:}{ An object of class \code{"Xt"} containing the parameters of the autoregressive space-time component. }
    \item{\code{Yt}:}{ A \code{"matrix"} of dimension SxT (S = predicted spatial points and T = temporal points) containing the fitted values of the parameter \code{Yt} }
    \item{\code{sigma2Y}:}{ Contains the fitted value of the variance \code{sigma2Y}.  }
    \item{\code{sigma2E}:}{ Contains the fitted value of the variance \code{sigma2E}. }
  }
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "Parameters", i = "character", j = "missing", drop = "missing")}: extract the components of the model. }
    \item{[<-}{\code{signature(x = "Parameters", i = "character", j = "missing")}: assign values to the components of the model. }
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