\name{hirlam}
\alias{hirlam}
\docType{data}
\title{
  hirlam 
}
\description{

The data store the temperature, which is collected in a grid of 70 points (n=7 x m=10 points in the grid) in the area that extends from 4 degrees 30" W to 6 degrees 30"W longitude, and from 35 degrees 3"N to 36 degrees 5"N. 

The analysed period covers January 1st 2009 to December 31st 2010; the frequency of the data is every 3 hours (temporal reference system is UTC); it starts at 00:00 (daily analysis) and forecasting is at 3:00, 6:00, 9:00, 12:00, 15:00, 18:00 and 21:00. The temperature is recorded every day, eight times a day; so we have a time series for each variable: one for each point on the grid with 5824 time observations. 

}


\format{
  A data frame with 70 x 5824 observations. 
  
  \itemize{
    \item The rows represent the spatial points ordered from up to down and left to right in the \code{hirlam)} coordinates.
    \item The columns represent the time observations.
  }
}


\keyword{datasets}