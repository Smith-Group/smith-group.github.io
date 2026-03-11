# Plot resonances from 2D fit

Plot resonances from 2D fit

## Usage

``` r
plot_resonances_2d(
  fit_data,
  omega0_plus,
  resonances = unique(fit_data$resonance_names),
  low_frac = 0.05,
  field = TRUE,
  proj_frac = 0.2
)
```

## Arguments

- fit_data:

  fit_input or fit_output structure

- omega0_plus:

  length 2 vector giving ppm range for each dimension

- resonances:

  character vector with resonances to plot

- low_frac:

  minimum absolute value (as a fraction of maximum intensity) at which
  to show contours

- field:

  logical indicating whether to show modeling of field inhomogeneity as
  separate peaks

- proj_frac:

  fraction of plot area reserved for 1D projections

## Value

No return value, called for side effects (draws one plot layout per
resonance).
