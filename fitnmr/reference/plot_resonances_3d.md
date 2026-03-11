# Plot resonances from 3D fit

Plot resonances from 3D fit

## Usage

``` r
plot_resonances_3d(
  fit_data,
  omega0_plus,
  resonances = unique(fit_data$resonance_names)
)
```

## Arguments

- fit_data:

  fit_input or fit_output structure

- omega0_plus:

  length 3 vector giving ppm range for each dimension

- resonances:

  character vector with resonances to plot

## Value

No return value, called for side effects (draws one set of projections
per resonance).
