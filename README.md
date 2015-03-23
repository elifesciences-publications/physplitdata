# physplitdata

## Install
### Straight from bitbucket
```r
if(!require("devtools")) install.packages("devtools")
# nb you will have to replace XXXX with your bitbucket credentials
devtools::install_bitbucket("jefferislab/physplitdata.git", auth_user='XXXX', password='XXXX')
```
### Clone repo then install
You can also clone the repository to create a local checkout of the source tree of the physplitdata package. It is strongly recommended to [upload your public key to bitbucket](https://confluence.atlassian.com/display/BITBUCKET/How+to+install+a+public+key+on+your+Bitbucket+account).

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