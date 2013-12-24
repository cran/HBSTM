\name{Hyperpriors-class}
\Rdversion{1.1}
\docType{class}
\alias{Hyperpriors-class}
\alias{[,Hyperpriors,character,missing,missing-method}
\alias{[<-,Hyperpriors,character,missing-method}

\title{Class \code{"Hyperpriors"}}
\description{
	\code{"Hyperpriors"} contains all the hyperpriors of the fitted HBSTM. It is an internal class and is stored in \code{"HBSTM"}
}

\section{Slots}{
  \describe{
    \item{\code{Mu0}:}{ An object of class \code{"Mu0"} containing all the hyperpriors of the component \code{"Mu"}. }
    \item{\code{Mt0}:}{An object of class \code{"Mt0"} containing all the hyperpriors of the component \code{"Mt"}. }
    \item{\code{Xt0}:}{An object of class \code{"Xt0"} containing all the hyperpriors of the component \code{"Xt"}. }
    \item{\code{sigma2Y0}:}{  A \code{"vector"} of length 2 with the hyperprior values of the parameter \code{sigma2Y}.  }
    \item{\code{sigma2E0}:}{ A \code{"vector"} of length 2 with the hyperprior values of the parameter \code{sigma2E}. }
  }
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "Hyperpriors", i = "character", j = "missing", drop = "missing")}: extract the components of the model. }
    \item{[<-}{\code{signature(x = "Hyperpriors", i = "character", j = "missing")}: assign values to the components of the model. }
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