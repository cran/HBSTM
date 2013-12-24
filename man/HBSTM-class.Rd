\name{HBSTM-class}
\Rdversion{1.1}
\docType{class}
\alias{HBSTM-class}
\alias{[,HBSTM,character,missing,missing-method}
\alias{[<-,HBSTM,character,missing-method}

\title{Class \code{"HBSTM"}}
\description{
	\code{"HBSTM"} contains all the information of the fitted Hierarchical Bayesian Space-Time model.
}


\section{Slots}{
  \describe{
    \item{\code{Parameters}:}{ An object of \code{"Parameters"} containing all the parameters of the fitted model. }
    \item{\code{Hyperpriors}:}{An object of class \code{"Hyperpriors"} containing all the hyperpiors used in the fitted model. }
    \item{\code{seed}:}{ The seed used to fit the model.  }
    \item{\code{mse}:}{ A vector containing the MSE of each iteration of the algorithm.  }
    \item{\code{iterations}:}{ The total number of iterations that the algorithm has executed. }
    \item{\code{newGrid}:}{ An Sx2 \code{"matrix"} (S is the number of spatial points of the predicted grid) containing the Longitude (1rst col.) and the Latitudes (2nd col.) of the new grid.}
    \item{\code{K}:}{An MxS \code{"matrix"} (M = observed spatial points) that relates the observations to the new grid. }
	\item{\code{Zt}:}{A MxT \code{"matrix"} (T is the temporal points) containing the data. }
    \item{\code{fitted}:}{ An \code{"array"} which contains the estimation of the fitted values of 'Yt'. The dimension of the array is SxTx2 when the algorithm estimates the mean and the standard deviation and is SxTx3 when the algorithm estimates the median and its 95 percent credibility intervals.}
    \item{\code{residuals}:}{A MxT \code{"matrix"} with the obtained model residuals. }
    \item{\code{MCMCsamp}:}{ A \code{"list"} of length: the number of executed iterations containing the MCMC samples of the objects of class \code{"Parameters"}, \code{"Mu"}, \code{"Mt"} or \code{"Xt"}, for each iteration.}
    \item{\code{MCMCclass}:}{ A \code{"character"} that specifies which type of object is stored in \code{MCMCsamp}. The options are \code{"Parameters"}, \code{"Mu"}, \code{"Mt"} or \code{"Xt"} }

   }
}


\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "HBSTM", i = "character", j = "missing", drop = "missing")}: extract the components of the model. }
    \item{[<-}{\code{signature(x = "HBSTM", i = "character", j = "missing")}: assign values to the components of the model. }
    \item{hbstm.fit}{\code{signature(HBSTM = "HBSTM", niter = "numeric")}: ... }
    \item{hbstm.save}{\code{signature(HBSTM = "HBSTM", name = "character")}: ... }
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