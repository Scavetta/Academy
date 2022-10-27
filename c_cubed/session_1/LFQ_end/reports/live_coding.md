

```r
# Session 1 in-class notes

# How to make sure we install the right version of the packages?

# 1 - Check what we have and install specifically those versions.
Sys.info()
```

```
##                                                                                                  sysname 
##                                                                                                 "Darwin" 
##                                                                                                  release 
##                                                                                                 "21.6.0" 
##                                                                                                  version 
## "Darwin Kernel Version 21.6.0: Mon Aug 22 20:19:52 PDT 2022; root:xnu-8020.140.49~2/RELEASE_ARM64_T6000" 
##                                                                                                 nodename 
##                                                                                            "MacBook-Pro" 
##                                                                                                  machine 
##                                                                                                  "arm64" 
##                                                                                                    login 
##                                                                                                   "root" 
##                                                                                                     user 
##                                                                                                  "milou" 
##                                                                                           effective_user 
##                                                                                                  "milou"
```

```r
sessionInfo()
```

```
## R version 4.2.1 (2022-06-23)
## Platform: aarch64-apple-darwin20 (64-bit)
## Running under: macOS Monterey 12.6
## 
## Matrix products: default
## LAPACK: /Library/Frameworks/R.framework/Versions/4.2-arm64/Resources/lib/libRlapack.dylib
## 
## locale:
## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
## [1] glue_1.6.2 rio_0.5.29
## 
## loaded via a namespace (and not attached):
##  [1] zip_2.2.0         Rcpp_1.0.9        highr_0.9         cellranger_1.1.0 
##  [5] pillar_1.8.0      compiler_4.2.1    prettyunits_1.1.1 forcats_0.5.1    
##  [9] remotes_2.4.2     tools_4.2.1       bit_4.0.4         digest_0.6.29    
## [13] pkgbuild_1.3.1    pkgload_1.3.0     evaluate_0.15     memoise_2.0.1    
## [17] lifecycle_1.0.1   tibble_3.1.7      pkgconfig_2.0.3   rlang_1.0.4      
## [21] openxlsx_4.2.5    cli_3.3.0         rstudioapi_0.13   curl_4.3.2       
## [25] yaml_2.3.5        haven_2.5.0       xfun_0.31         fastmap_1.1.0    
## [29] stringr_1.4.0     knitr_1.39        fs_1.5.2          vctrs_0.4.1      
## [33] devtools_2.4.3    hms_1.1.1         bit64_4.0.5       data.table_1.14.2
## [37] R6_2.5.1          processx_3.7.0    fansi_1.0.3       readxl_1.4.0     
## [41] foreign_0.8-82    rmarkdown_2.14    sessioninfo_1.2.2 callr_3.7.1      
## [45] purrr_0.3.4       magrittr_2.0.3    ps_1.7.1          ellipsis_0.3.2   
## [49] htmltools_0.5.3   usethis_2.1.6     utf8_1.2.2        stringi_1.7.8    
## [53] cachem_1.0.6      markdown_1.1      crayon_1.5.1
```

```r
R.Version()
```

```
## $platform
## [1] "aarch64-apple-darwin20"
## 
## $arch
## [1] "aarch64"
## 
## $os
## [1] "darwin20"
## 
## $system
## [1] "aarch64, darwin20"
## 
## $status
## [1] ""
## 
## $major
## [1] "4"
## 
## $minor
## [1] "2.1"
## 
## $year
## [1] "2022"
## 
## $month
## [1] "06"
## 
## $day
## [1] "23"
## 
## $`svn rev`
## [1] "82513"
## 
## $language
## [1] "R"
## 
## $version.string
## [1] "R version 4.2.1 (2022-06-23)"
## 
## $nickname
## [1] "Funny-Looking Kid"
```

```r
# 2 - Make a virtual environment

# See this [site](https://rstudio.github.io/renv/articles/renv.html)
# How to get only those files I want?


# Get the names of folders in the data dir ----
# ls() # list objects in my env
# getwd() # show where my working directory is pointing 

# list files in the working directory
# dir()
# list.files() 

data_folder <- "data/raw/"
p_avail <- list.files(path = data_folder)

# Choose files ----
# Uncomment one of the lines below
# protein <- "protein_x" # As an example
# protein <- select.list(sort(p_avail), multiple = F)

# Import the data ----
library(rio)
library(glue)
raw_data <- import(glue("{data_folder}{protein}/proteinGroups.txt"))
```

```
## Error in import(glue("{data_folder}{protein}/proteinGroups.txt")): No such file
```

```r
legend <- import(glue("{data_folder}{protein}/SampleTable.xlsx"))
```

```
## Error in import(glue("{data_folder}{protein}/SampleTable.xlsx")): No such file
```

