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

#' A dump of Primary neurite Clusters and Neuroblast lineages from JFRCSH db
#' 
#' @details This is initally created by DumpDatabase.R and then added using 
#'   data-raw/db.R
#'   
#' @return This data.frame includes the following fields: \itemize{
#'   
#'   \item \code{jfrcsh.celltype} the JFRCSH celltype or cluster number (i.e. as
#'   defined during annotation of FlyLight GAL4 lines). Cell Types will usually 
#'   have a letter.
#'   
#'   \item \code{finalcluster} - the primary neurite cluster (see PhySplitDB)
#'   
#'   \item \code{SomaLocation} - the location of the somata for these neurons 
#'   with respect to the lateral horn neuropil.
#'   
#'   \item \code{NB-NB5} identity of NB associated with these neurons in 
#'   decreasing order of likelihood.
#'   
#'   }
#'   
#' @docType data
#' @name ClustersDB
NULL

#' A dump of passive cell properties
#'
#' This is initally created by CollectCellProperties
#' @docType data
#' @name ravc
NULL

#' A dump of the final passive cell properties dataframe
#' This is initally created by CollectCellProperties
#' @docType data
#' @name cpdf.summ
NULL


#' A dump of the final IV and passive cell properties dataframe
#' This is initally created by CollectCellProperties
#' @docType data
#' @name allparams
NULL

#' A dump of the final IV cell properties dataframe 3 points/cell
#' This is initally created by CollectCellProperties
#' @docType data
#' @name IVInpResbig
NULL

#' A dump of the final IV cell properties dataframe
#' This is initally created by CollectCellProperties
#' @docType data
#' @name IVfinalDF
NULL

#' All spikes from Shahar's cells
#'
#' This is initally created by CollectSpikes.R. The object is of
#' class \code{\link[gphys]{spiketimes}}.
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

#' Smoothed average membrane potential for Shahar's cells
#'
#' This is initally created by make_vm.R. Each individual object in the list was
#' created by the smooth_decimate function.
#' @docType data
#' @name Vm
#' @seealso \code{\link{Spikes}}
#' @examples
#' \dontrun{
#' library(gphys)
#' plot(Spikes[[1]][[1]])
#' AddLinesToRasterPlot(Vm[[1]], ylim=c(-65,-35), col='darkgreen')
#' }
NULL

#' Well registered tracings of LHNs (and accompanying metadata)
#' 
#' This is initally created by \code{data-raw/lhnsxfinal.R} which in turn 
#' depends on \code{LHNTracing/R/lhnsxfinal.R}. Note that metadata is always
#' updated from PhySplitDB when this object is updated in this package.
#' @docType data
#' @name lhnsxfinal
#' @seealso \code{\link{PhySplitDB}}
#' @examples 
#' \dontrun{
#' library(nat)
#' plot3d(lhnsxfinal)
#' 
#' # Try morphological clustering
#' lhnsxfinal.dps=dotprops(lhnsxfinal, resample=1, k=5)
#' library(nat.nblast)
#' lhnsxfinal.aba=nblast_allbyall(lhnsxfinal.dps)
#' hc=nhclust(scoremat = lhnsxfinal.aba)
#' plot(hc)
#' }
NULL

#' Primary neurite tracts (and accompanying metadata)
#' 
#' @description \code{primary_neurites.is2} is in the IS2 template brain space
#'   (Jefferis Lab).
#'   
#' @details This is initally created by \code{data-raw/pct.R} which in turn
#'   depends on \code{LHNTracing/R/MakeParentClusters.R}.
#'   
#' @docType data
#' @name primary_neurites.is2
#' @aliases primary_neurites
#' @seealso \code{\link{lhnsxfinal}}
#' @examples
#' head(primary_neurites.is2)
#' \dontrun{
#' library(nat.flybrains)
#' plot3d(primary_neurites.is2, col=factor(finalcluster))
#' plot3d(IS2)
#' }
NULL

#' @description \code{primary_neurites.jfrc2} is in the JFRC2 template brain
#'   space (Janelia / Virtual Fly Brain).
#' @docType data
#' @name primary_neurites.jfrc2
#' @rdname primary_neurites.is2
NULL
