\name{hbstm}
\alias{hbstm}
\alias{hbstm-methods}
\alias{hbstm,data.frame,matrix,data.frame,vector,vector,vector,ANY,ANY,ANY,ANY,logical-method}




\title{
	Fitting Hierarchical Bayesian Space Time models
}
\description{
	\code{hbstm} is used to fit Hierarchical Bayesian Space Time models.
}
\usage{
	hbstm(Zt,K,newGrid,reglag,seas,spatlags,hyperpriors,initialvalues,
	nIter,nBurn,fit,plots,posterior,save,control)
}

\arguments{
  \item{Zt}{: MxT \code{"data.frame"} containing the data. The rows contains the "M" spatial points and the columns the "T" temporal observations.}
  \item{K}{: MxS \code{"matrix"} that relates the observed spatial points with the new Grid. S is the number of predicted spatial points.}
  \item{newGrid}{ An Sx2 \code{"data.frame"} containing the "Longitude" and the "Latitude" of the new Grid.}
  \item{reglag}{ A vector containing the temporal autoregressive lags of the model.}
  \item{seas}{ A vector containing the seasonal coefficients of the model.}
  \item{spatlags}{ A vector of length 4 containing the spatial lags of the model. See details for more information.}
  \item{hyperpriors}{ An object of class \code{Hyperpriors} containing all the values of the model hyperpriors.}
  \item{initialvalues}{ An object of class \code{Parameters} containing all the initial values of the model parameters.}
  \item{nIter}{ Number of Gibbs Sampling iterations. Default value is 1000.}
  \item{nBurn}{ Number of burn-in samples. This number of samples will be discarded before making any inference. Default value is the 20 percent of nIter.}
  \item{fit}{ A \code{"logical"} indicating whether the HBSTM is fitted. }
  \item{plots}{ A \code{"logical"} indicating whether the method shows the plots of the execution (The mse, Zt vs X*Yt and the ACF/PACF of the residuals.}
  \item{posterior}{ A \code{"character"} indicating whether the function returns the 'mean' and 'sd' the fitted values of Yt or returns the 'median' with its 95 percent credibility intervals.}
  \item{save}{ A \code{"character"} indicating if, for each iteration, the algorithm saves the estimation of certain parameters. See "Details"s for more information.}
  \item{control}{a list of control parameters. See "Details".}
}

\details{
Each position of the argument \code{spatlags} refers to the spatial lags of a specified direction. These four directions are "east-west", "north-south", "northwest-southeast" and "northeast-southwest".

The \code{save} argument is a \code{"character"} that can have any of the following options:

	-\code{"all"}{: Save an object of class \code{Parameters}.}
	
	-\code{"Mu"}{: Save an object of class \code{Mu}.}
	
	-\code{"Mt"}{: Save an object of class \code{Mt}.}
	
	-\code{"Xt"}{: Save an object of class \code{Xt}.}

The \code{control} argument is a list that can supply any of the following components:

	-\code{time}{: A \code{"logical"} indicating whether the method shows the estimated time of execution.}
	
	-\code{timerem}{: A \code{"logical"} indicating whether the method shows the estimated remaining time of execution}
	
	-\code{seed}{: The seed to use in the function \code{"set.seed"} and set it to fit the model.}
	
}
\value{
 \code{hbstm} returns an object of class \code{\linkS4class{HBSTM}}
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

\examples{
## See 'tutorial.pdf', included in the documentation of the package, to see a full example
}