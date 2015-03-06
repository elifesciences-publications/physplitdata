#' Packaged and versioned spikes and metadata for Shahar's cells
#' 
#' The main objects are \code{\link{Spikes}}, \code{\link{smSpikes}} and \code{\link{PhySplitDB}}
#' 
#' This is initally created by make_physplitdata.R
#' @docType package
#' @name physplitdata
NULL


#' A dump of key cell metadata from the PhySplit Filemaker database
#' 
#' This is initally created by DumpDatabase.R
#' @docType data 
#' @name PhySplitDB
NULL

#' All spikes from Shahar's cells
#' 
#' This is initally created by CollectSpikes.R. The object is of
#' class \code{\link[gphys]{spiketimes}}
#' @docType data 
#' @name Spikes
#' @seealso \code{\link{smSpikes}}
NULL

#' Smoothed PSTH for all spikes from Shahar's cells
#' 
#' This is initally created by CollectSpikes.R
#' 
#' The psth is calculated for a window 0-3 seconds using a bandwidth of 0.5s and
#' a time step of 0.05
#' @docType data
#' @name smSpikes
#' @seealso \code{\link{Spikes}}, \code{\link[gphys]{smpsth}},
#'   \code{\link[STAR]{psth}}
NULL
