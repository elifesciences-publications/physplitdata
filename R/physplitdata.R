#' A dump of key cell metadata from the PhySplit Filemaker database
#'
#' This is initally created by DumpDatabase.R
#' @docType data
#' @name PhySplitDB
"PhySplitDB"

#' Database dump of correspondences between anatomical and functional cell types
#' 
#' This is initally created by DumpDatabase.R
#' @docType data
#' @name classATAGDB
#' @return This data.frame includes the following two important fields: 
#'   \itemize{
#'   
#'   \item \code{class} The cell class defined by its odour response 
#'   profile/driver line
#'   
#'   \item \code{AT} The obsolete Anatomy type (a mid-level classifcation of 
#'   cells by identify)
#'   
#'   \item \code{anatomy.group} The mid-level definition of anatomical type 
#'   within the final hierarchy of i) primary neurite tract ii) anatomy group, 
#'   iii) cell type. The anatomy.group is defined by the primary neurite tract 
#'   and the main tracts taken by the axon and primary dendrite to reach their 
#'   arborisation zones.
#'   
#'   }
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
"ClustersDB"

#' A dump of passive cell properties
#'
#' This is initally created by CollectCellProperties
#' @docType data
#' @name ravc
"ravc"

#' A dump of the final passive cell properties dataframe
#' This is initally created by CollectCellProperties
#' @docType data
#' @name cpdf.summ
"cpdf.summ"


#' A dump of the final IV and passive cell properties dataframe
#' This is initally created by CollectCellProperties
#' @docType data
#' @name allparams
"allparams"

#' A dump of the final IV cell properties dataframe 3 points/cell
#' This is initally created by CollectCellProperties
#' @docType data
#' @name IVInpResbig
"IVInpResbig"

#' A dump of the final IV cell properties dataframe
#' This is initally created by CollectCellProperties
#' @docType data
#' @name IVfinalDF
"IVfinalDF"

#' All spikes from Shahar's cells
#'
#' This is initally created by CollectSpikes.R. The object is of
#' class \code{\link[gphys]{spiketimes}}.
#' @docType data
#' @name Spikes
#' @seealso \code{\link{smSpikes}}, \code{\link{Vm}}
"Spikes"

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
"smSpikes"

#' Smoothed average membrane potential for Shahar's cells
#'
#' This is initally created by make_vm.R. Each individual object in the list was
#' created by the smooth_decimate function.
#' @docType data
#' @name Vm
#' @seealso \code{\link{Spikes}}, \code{\link[gphys]{AddLinesToRasterPlot}}
#' @examples
#' \dontrun{
#' library(gphys)
#' plot(Spikes[['nm20120605c0']][[1]])
#' AddLinesToRasterPlot(Vm[['nm20120605c0']], ylim=c(-65,-35), col='darkgreen')
#' }
"Vm"

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
"lhnsxfinal"

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
"primary_neurites.is2"

#' @description \code{primary_neurites.jfrc2} is in the JFRC2 template brain
#'   space (Janelia / Virtual Fly Brain).
#' @docType data
#' @name primary_neurites.jfrc2
#' @rdname primary_neurites.is2
"primary_neurites.jfrc2"
