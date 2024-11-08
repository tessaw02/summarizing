
<!-- README.md is generated from README.Rmd. Please edit that file -->

# summarizing

<!-- badges: start -->
<!-- badges: end -->

The goal of summarizing is to help summarize large data sets, and
returning an output. This package specifically contains the
data_summary() function, which allows for quick and efficient
summarization of numeric data sets.

## Installation

You can install the development version of summarizing like so:

``` r
# install.packages("devtools")
devtools::install_github("tessaw02/summarizing", ref = "0.1.0")
```

## Example

This is a basic example which shows you how to summarize a numerical
data set:

``` r
library(summarizing)
df <- data.frame(
 category = c("A", "B", "C"),
 value1 = c(10, 17, 28),
 value2 = c(15, 12, 20))
data_summary(df)
#>   value1_mean value2_mean value1_median value2_median value1_sd value2_sd
#> 1    18.33333    15.66667            17            15  9.073772  4.041452
#>   value1_IQR value2_IQR
#> 1          9          4
```
