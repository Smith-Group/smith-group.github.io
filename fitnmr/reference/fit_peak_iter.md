# Iterative Peak Fitting

Iteratively fit peaks for whole spectra

## Usage

``` r
fit_peak_iter(
  spectra,
  noise_sigma = NULL,
  noise_cutoff = 15,
  f_alpha = 0.001,
  iter_max = 100,
  omega0_plus = c(0.075, 0.75),
  r2_start = 5,
  r2_bounds = c(0.5, 20),
  sc_start = c(6, NA),
  sc_bounds = c(2, 12),
  fit_list = list(),
  plot_fit = FALSE,
  plot_fit_stages = FALSE,
  iter_callback = NULL,
  verbose = TRUE
)
```

## Arguments

- spectra:

  list of spectrum objects read by
  [`read_nmrpipe`](https://smith-group.github.io/fitnmr/reference/read_nmrpipe.md).

- noise_sigma:

  numeric vector of noise levels associated with each spectrum. If
  `NULL`, it is calculated with
  [`noise_estimate`](https://smith-group.github.io/fitnmr/reference/noise_estimate.md).

- noise_cutoff:

  numeric value multiplied by `noise_sigma` to determine cutoffs for
  each spectrum. Peak fitting will terminate if the maximum residuals
  for all spectra fall below these cutoffs.

- f_alpha:

  numeric value giving a F-test p-value threshold above which a peak
  will not be accepted.

- iter_max:

  integer maximum number of iterations to apply.

- omega0_plus:

  numeric vector giving the window size (ppm plus or minus the starting
  `omega0` values) around which to use points from the spectra for
  fitting.

- r2_start:

  numeric vector giving the starting `r2` value(s) for the fit (in Hz).

- r2_bounds:

  numeric vector of length two giving the lower and upper bounds for
  `r2`.

- sc_start:

  numeric vector giving the starting scalar coupling values for
  doublets. It should be the same length as the number of dimensions in
  the spectrum. Set the value to `NA` for a given dimension to make it a
  singlet.

- sc_bounds:

  numeric vector of length two giving the lower and upper bounds for
  scalar couplings.

- fit_list:

  list of previous fits to which the new fits should be appended.

- plot_fit:

  logical indicating whether produce a fit cluster plot for each
  iteration.

- plot_fit_stages:

  logical indicating whether to plot each stage of fitting within the
  iterations.

- iter_callback:

  function called after each iteration with two arguments: `iter` and
  `iter_max`

- verbose:

  logical indicating whether to print progress updates

## Value

List of fit objects returned by
[`fit_peak_cluster`](https://smith-group.github.io/fitnmr/reference/fit_peak_cluster.md),
one for each iteration. They are appended to `fit_list` if supplied.

## Details

This function uses an iterative algorithm to fit all the peaks in a
given list of spectra, assuming identical peak positions and shapes
across the spectra. Each iteration starts by identifying the maximum
value across all spectra, using that position to fit a cluster of
overlapping peaks with the
[`fit_peak_cluster`](https://smith-group.github.io/fitnmr/reference/fit_peak_cluster.md)
function. After the cluster of peaks is fit, the modeled intensity is
subtracted from all spectra and another iteration is performed.
Iterations are terminated if `max_iter` is reached or the residual
intensity in all spectra falls below `noise_sigma*noise_cutoff`.

This function currently only supports fitting of 2D spectra, but will be
generalized to work with spectra of any dimensionality in the near
future. To reduce the number of false positives/negatives, the most
important parameters to adjust are `noise_cutoff`, `f_alpha`, and
`iter_max`. If `iter_max` is reached before all peaks have been
identified, then you can call this function again, setting the
`fit_list` parameter to the return value of the previous invocation. In
that case, `iter_max` new iterations will be performed and appended to
`fit_list`.

For visualizing the iterative algorithm as it progresses, you can enable
either the `plot_fit` or `plot_fit_stages` parameters.

## Examples

``` r
spec_file <- system.file("extdata", "t1", "1.ft2", package = "fitnmr")
spec <- list("1.ft2" = read_nmrpipe(spec_file, dim_order = "hx"))
peak_fits <- fit_peak_iter(spec, iter_max = 2)
#> Fit iteration 1:
#>   0 ->  6 fit parameters: F = 333.8 (p = 4.56642e-10)
#>   6 ->  9 fit parameters: F = 64.6 (p = 1.11899e-05)
#> Warning: lmder: info = -1. Number of iterations has reached `maxiter' == 200.
#>   9 -> 12 fit parameters: F = 1.2 (p = 0.464698)
#>  Terminating search because F-test p-value > 0.001
#> Fit iteration 2:
#>   0 ->  6 fit parameters: F = 734.0 (p = 1.87653e-15)
#>   6 ->  9 fit parameters: F = 14.7 (p = 0.000581712)
#>   9 -> 12 fit parameters: F = 0.1 (p = 0.976358)
#>  Terminating search because F-test p-value > 0.001
```
