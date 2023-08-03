
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->
<!-- badges: end -->

The goal of libminer is to help users see how many packages they’ve
downloaded, and optionally how large these library folders are.

## Installation

You can install the development version of libminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("chrispmad/libminer")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(libminer)
## basic example code

lib_summary()
#>                                                                  library
#> 1                                     C:/Program Files/R/R-4.3.1/library
#> 2                       C:/Users/CMADSEN/AppData/Local/R/win-library/4.3
#> 3 C:/Users/CMADSEN/AppData/Local/Temp/Rtmp6nGyFX/temp_libpath32f04855432
#>   n_packages
#> 1         30
#> 2        194
#> 3          1

# You can also ask for file size(s)
lib_summary(sizes = TRUE)
#>                                                                  library
#> 1                                     C:/Program Files/R/R-4.3.1/library
#> 2                       C:/Users/CMADSEN/AppData/Local/R/win-library/4.3
#> 3 C:/Users/CMADSEN/AppData/Local/Temp/Rtmp6nGyFX/temp_libpath32f04855432
#>   n_packages file_size file_size_mb
#> 1         30  68858812     68.86 MB
#> 2        194 572961490    572.96 MB
#> 3          1     17093      0.02 MB
```
