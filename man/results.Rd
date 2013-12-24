\name{results}
\alias{results}
\alias{results-methods}
\alias{results,HBSTM-method}


\title{
	Results summary
}
\description{
	It shows the results of fitting an object of class \code{HBSTM}.
}
\usage{
	results(object,spatTemp,inter,digits,component,plots,file)
}

\arguments{
  \item{object}{ An object of class \code{"HBSTM"}.}
  \item{spatTemp}{ A list of vectors containing the spatial and the temporal points to show. See details.}
  \item{inter}{ An optional numeric value for the interval credibility level. Default is 0.95}
  \item{digits}{ Integer indicating the number of decimal places to \code{round} the values.}
  \item{component}{ An optional \code{"character"} indicating which component have to be shown ("Parameters", "Mu", "Mt" or "Xt").}
   \item{plots}{ Plot the medians and the credibility intervals of the parameters.}
   \item{file}{ An optional "character" containing the name of the .tex file where the results are stored (in the current work directory). By default the function does not store the results.}
 }

\details{
 Each position in the \code{spaTemp} list contains a numerical vector, in which the first position refers to a spatial point of the data and the second position to a temporal point of the data.
}
\value{
	null
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