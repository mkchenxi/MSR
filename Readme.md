**Installing from Github**
```
# 1) Install helper if needed
install.packages("remotes")  # or install.packages("devtools")

# 2) Install MSR from GitHub
remotes::install_github("mkchenxi/MSR")
# devtools::install_github("mkchenxi/MSR")  # alternative
```
If the installation sucessfully starts, you should see this: 
> Downloading GitHub repo mkchenxi/MSR@HEAD

If the installation is successful, you will see the end message:
```
* installing *source* package 'MSR' ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (MSR)
```
