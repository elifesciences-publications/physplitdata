# physplitdata
[![Docs](https://img.shields.io/badge/docs-100%25-brightgreen.svg)](http://jefferislab.github.io/physplitdata/reference/)
[![Release Version](https://img.shields.io/github/release/jefferislab/physplitdata.svg)](https://github.com/jefferislab/physplitdata/releases/latest)
[![DOI](https://zenodo.org/badge/34528081.svg)](https://zenodo.org/badge/latestdoi/34528081)

physplitdata is an R package containing all spike data and metadata for 

Functional and anatomical specificity in a higher olfactory centre
Shahar Frechter, Alexander Shakeel Bates, Sina Tootoonian, Michael-John Dolan,
James Manton, Arian Rokkum Jamasb, Johannes Kohl, Davi Bock, Gregory Jefferis
https://doi.org/10.7554/eLife.44590

To analyse these data, see the
[physplit.analysis](https://jefferislab.github.io/physplit.analysis) package documentation.

## Install
### Straight from github
If you already have physplitdata (or physplit.analysis) loaded then you need to restart R before (or after) installing.

```r
if(!requireNamespace('devtools')) install.packages("devtools")
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
if(!requireNamespace('devtools')) install.packages("devtools")
devtools::install("~/mycode/physplitdata")
```

## Use the data
You will probably want to install the https://github.com/jefferislab/physplit.analysis
package, even if you just want to export the data

```r
if(!requireNamespace('devtools')) install.packages("devtools")
devtools::install_github("jefferislab/physplit.analysis")
```
then
```r
library(physplit.analysis)
# try
?physplit.analysis
?heatmap_cor_dist
?create_raw_summary_array
```
