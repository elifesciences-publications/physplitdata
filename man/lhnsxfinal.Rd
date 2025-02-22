% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/physplitdata.R
\docType{data}
\name{lhnsxfinal}
\alias{lhnsxfinal}
\title{Well registered tracings of LHNs (and accompanying metadata)}
\format{An object of class \code{neuronlist} (inherits from \code{list}) of length 147.}
\usage{
lhnsxfinal
}
\description{
This is initally created by \code{data-raw/lhnsxfinal.R} which in turn 
depends on \code{LHNTracing/R/lhnsxfinal.R}. Note that metadata is always
updated from PhySplitDB when this object is updated in this package.
}
\examples{
\dontrun{
library(nat)
plot3d(lhnsxfinal)

# Try morphological clustering
lhnsxfinal.dps=dotprops(lhnsxfinal, resample=1, k=5)
library(nat.nblast)
lhnsxfinal.aba=nblast_allbyall(lhnsxfinal.dps)
hc=nhclust(scoremat = lhnsxfinal.aba)
plot(hc)
}
}
\seealso{
\code{\link{PhySplitDB}}
}
\keyword{datasets}
