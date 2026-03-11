# Perform a fit with an input data structure

Perform a fit with an input data structure

## Usage

``` r
perform_fit(
  fit_input,
  method = c("minpack.lm", "gslnls", "sparseLM", "L-BFGS-B"),
  ...
)
```

## Arguments

- fit_input:

  fit_input structure

- method:

  fitting method

- ...:

  additional arguments passed to the fitting routine

## Value

The input \`fit_input\` list, augmented with fitted parameters in
\`fit_list\` and fit diagnostics in \`fit_rsstrace\`, \`fit_counts\`,
and \`fit_time\`.

## Examples

``` r
spec_file <- system.file("extdata", "t1", "1.ft2", package = "fitnmr")
spec <- read_nmrpipe(spec_file, dim_order = "hx")
fit_input <- make_fit_input(
  list(spec),
  omega0_start = matrix(c(8.5400, 119.76), nrow = 2),
  omega0_plus = c(0.075, 0.75),
  r2_start = 4,
  m0_start = 1e9
)
fit_output <- perform_fit(fit_input)
fit_output$start_list[1:3]
#> $omega0
#> , , 1
#> 
#>        [,1]
#> [1,]   8.54
#> [2,] 119.76
#> 
#> 
#> $r2
#> , , 1
#> 
#>      [,1]
#> [1,]    4
#> [2,]    4
#> 
#> 
#> $m0
#>       [,1]
#> [1,] 1e+09
#> 
fit_output$fit_list[1:3]
#> $omega0
#> , , 1
#> 
#>            [,1]
#> [1,]   8.539491
#> [2,] 119.759793
#> 
#> 
#> $r2
#> , , 1
#> 
#>          [,1]
#> [1,] 5.730700
#> [2,] 2.090681
#> 
#> 
#> $m0
#>            [,1]
#> [1,] 1120941322
#> 
```
