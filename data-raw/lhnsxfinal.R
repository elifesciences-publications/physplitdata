library(nat)
load("~/projects/Shahar/LHNTracing/data/lhnsxfinal.rda")
cols=intersect(names(lhnsxfinal[,]), colnames(physplitdata::PhySplitDB))
notcols=setdiff(names(lhnsxfinal[,]), cols)
if(!isTRUE(all.equal(physplitdata::PhySplitDB[names(lhnsxfinal), cols],
                    lhnsxfinal[,cols]))){
  message("Updating lhnsxfinal metadata from physplitdata::PhySplitDB")
  lhnsxfinal[,cols]=physplitdata::PhySplitDB[names(lhnsxfinal),cols]
}
use_data(lhnsxfinal)
