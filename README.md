# physplitdata

## Install
Installation is slightly complicated because this is a private repo. You therefore need some
form of authentication. The recommended way is to set up a github Personal Access Token (PAT)
and use that with install_github. You can generate that at https://github.com/settings/applications.
You could then put something like this in your `~/.Rprofile` (don't worry that's not my PAT!).
```R
Sys.setenv(GITHUB_PAT='0a98ec3dda8b45e229da9bedc338e27d00c42383')
```

### Straight from github
```r
if(!require("devtools")) install.packages("devtools")
devtools::install_github("jefferislab/physplitdata")
```

### Straight from bitbucket (deprecated, use github)
```r
if(!require("devtools")) install.packages("devtools")
# nb you will have to replace XXXX with your bitbucket credentials
devtools::install_bitbucket("jefferislab/physplitdata.git", auth_user='XXXX', password='XXXX')
```
### Clone repo then install
Alternatively, you can also clone the repository to create a local checkout of the source tree of the physplitdata package. It is strongly recommended to [upload your public key to bitbucket](https://confluence.atlassian.com/display/BITBUCKET/How+to+install+a+public+key+on+your+Bitbucket+account).

In the shell/terminal
```sh
# or wherever
cd ~/mycode
git clone git@bitbucket.org:jefferislab/physplitdata.git
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
