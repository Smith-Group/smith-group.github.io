# Fit a cluster of nearby peaks starting from a seed table of chemical shifts

Fit a cluster of nearby peaks starting from a seed table of chemical
shifts

## Usage

``` r
fit_peak_cluster(
  spec_list,
  cs_start,
  spec_ord,
  f_alpha_thresh = 0.001,
  omega0_plus = c(0.075, 0.75),
  r2_start = 5,
  r2_bounds = c(0.5, 20),
  sc_start = NULL,
  sc_bounds = c(0, Inf),
  plot_main_prefix = NULL,
  peak_num_offset = 0,
  plot_fit_stages = FALSE,
  verbose = TRUE
)
```

## Arguments

- spec_list:

  list of spectra

- cs_start:

  matrix of starting chemical shifts

- spec_ord:

  order of spectral dimensions

- f_alpha_thresh:

  alpha threshold for F-test

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

- plot_main_prefix:

  optional prefix for plot titles

- peak_num_offset:

  offset added to peak numbers in plots

- plot_fit_stages:

  logical indicating whether to plot intermediate fits

- verbose:

  logical indicating whether to print progress updates

## Value

Usually a fit-output \`list\` (including \`fit_list\`) for the accepted
peak cluster. In edge cases where no acceptable fit is retained, returns
modeled intensity matrix/matrices used for subtraction.
