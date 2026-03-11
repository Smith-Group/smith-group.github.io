# Fit peaks from a table of chemical shifts

Fit peaks from a table of chemical shifts

## Usage

``` r
fit_peaks(
  spec_list,
  cs_mat,
  fit_prev = NULL,
  spec_ord = 1:2,
  omega0_plus = c(0.075, 0.75),
  r2_start = 5,
  r2_bounds = c(0.5, 20),
  sc_start = NULL,
  sc_bounds = c(0, Inf),
  positive_only = TRUE,
  plot_fit_stages = TRUE
)
```

## Arguments

- spec_list:

  list of spectra

- cs_mat:

  matrix of chemical shifts

- fit_prev:

  optional previous fit parameters

- spec_ord:

  order of spectral dimensions

- omega0_plus:

  omega0 bounds for each dimension

- r2_start:

  starting r2 values

- r2_bounds:

  numeric vector of length 2 with r2 bounds

- sc_start:

  starting scalar coupling values

- sc_bounds:

  numeric vector of length 2 with scalar coupling bounds

- positive_only:

  logical indicating whether to constrain m0 to be positive

- plot_fit_stages:

  logical indicating whether to plot intermediate fits

## Value

A fitted parameter \`list\` (fit-output structure) containing fitted
values in \`fit_list\` plus the original fit metadata and bounds.
