# Update bounds on fitting parameters

Update bounds on fitting parameters

## Usage

``` r
update_fit_bounds(
  fit_input,
  omega0_r2_factor = NULL,
  r2_bounds = NULL,
  sc_bounds = NULL
)
```

## Arguments

- fit_input:

  fit_input structure

- omega0_r2_factor:

  optional factor for omega0 bounds based on r2

- r2_bounds:

  optional numeric vector of length 2

- sc_bounds:

  optional numeric vector of length 2

## Value

A modified \`fit_input\` list with updated parameter bounds.

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
fit_input <- update_fit_bounds(fit_input, omega0_r2_factor=1.5, r2_bounds=c(0.5, 20))
```
