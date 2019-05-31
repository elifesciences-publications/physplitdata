# physplitdata

## Install
### Straight from github
If you already have physplitdata (or physplit.analysis) loaded then you need to restart R before (or after) installing.

```r
if(!require("devtools")) install.packages("devtools")
devtools::install_github("jefferislab/physplitdata")
```

### Clone repo then install
Alternatively, you can also clone the repository to create a local checkout of the source tree of the physplitdata package. 

In the shell/terminal
```sh
# or wherever
cd ~/mycode
git clone git@github.com:jefferislab/physplitdata.git
```

In R
```r
if(!require("devtools")) install.packages("devtools")
devtools::install("~/mycode/physplitdata")
```

## Use the data
You will probably want to install the https://github.com/sfrechter/physplit.analysis package, even if you just want to export the data

```r
devtools::install_github("jefferis/gphys")
devtools::install_github("sfrechter/physplit.analysis")
```
then
```r
library(physplit.analysis)
# try
?physplit.analysis
?heatmap_cor_dist
?create_raw_summary_array
```
