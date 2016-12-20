load("~/projects/Shahar/LHNTracing/data/pct.rda")
primary_neurites.jfrc2=pct
devtools::use_data(primary_neurites.jfrc2, overwrite = T)

library(nat.flybrains)
primary_neurites.is2=xform_brain(primary_neurites.jfrc2, reference = IS2)
devtools::use_data(primary_neurites.is2, overwrite = T)
