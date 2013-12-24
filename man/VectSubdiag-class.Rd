\name{VectSubdiag-class}
\Rdversion{1.1}
\docType{class}
\alias{VectSubdiag-class}
\alias{[,VectSubdiag,character,missing,missing-method}
\alias{[<-,VectSubdiag,character,missing-method}

\title{Class \code{"VectSubdiag"}}
\description{
	\code{"VectSubdiag"} contains all the values of the space-time parameters and it is an internal class stored in \code{"Autorregressive"}.
}

\section{Slots}{
  \describe{
    \item{\code{east}:}{ A \code{"vector"} of length: the number of east spatial lags. It contains the fitted values of the east spatial-temporal parameters. }
    \item{\code{west}:}{  A \code{"vector"} of length: the number of west spatial lags. It contains the fitted values of the west spatial-temporal parameters. }
    \item{\code{north}:}{ A \code{"vector"} of length: the number of north spatial lags. It contains the fitted values of the north spatial-temporal parameters. }
    \item{\code{south}:}{ A \code{"vector"} of length: the number of south spatial lags. It contains the fitted values of the south spatial-temporal parameters. }
    \item{\code{southeast}:}{ A \code{"vector"} of length: the number of southeast spatial. It and contains the fitted values of the southeast spatial-temporal parameters. }
    \item{\code{northwest}:}{ A \code{"vector"} of length: the number of northwest spatial. It and contains the fitted values of the northwest spatial-temporal parameters. }
    \item{\code{southwest}:}{ A \code{"vector"} of length: the number of southwest spatial. It and contains the fitted values of the southwest spatial-temporal parameters. }
    \item{\code{northeast}:}{ A \code{"vector"} of length: the number of northeast spatial. It and contains the fitted values of the northeast spatial-temporal parameters. }
    \item{\code{lags}:}{ A \code{"vector"} containing the spatial lags for each direction. Each position of the vector is related to the lags of east, weast, north, south, southeast, northwest, southwest and northeast, respectively. }
    \item{\code{dirs}:}{ A \code{"vector"} containing all the space-time directions included in the model. }
  }
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "VectSubdiag", i = "character", j = "missing", drop = "missing")}: extract the components of the model. }
    \item{[<-}{\code{signature(x = "VectSubdiag", i = "character", j = "missing")}: assign values to the components of the model. }
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