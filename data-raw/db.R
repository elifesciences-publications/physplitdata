# note that other data objects are added directly by the update db script tha
load("~/projects/Shahar/LHNTracing/db/ClustersDB.rda")

colnames(ClustersDB)[match(
  c("Cluster", "cluste_neurite_final", 'cluste_neurite_comment'),
  colnames(ClustersDB)
)] =
  c("jfrcsh.celltype", "finalcluster", "finalcluster_comment")

# remove blank entries
ClustersDB=subset(ClustersDB, !is.na(jfrcsh.celltype))
# clean up carriage returns and any other funny chars
ClustersDB$jfrcsh.celltype=gsub("[^0-9A-Z]","",ClustersDB$jfrcsh.celltype)
# remove dupes
ClustersDB=subset(ClustersDB, !duplicated(jfrcsh.celltype))

library(devtools)
use_data(ClustersDB, overwrite = T)

# this does not need any further action
load("~/projects/Shahar/LHNTracing/db/classATAGDB.rda")
use_data(classATAGDB, overwrite = T)
