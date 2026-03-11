# Plot spectrum from 2D fit

Plot spectrum from 2D fit

## Usage

``` r
plot_sparse_2d(
  fit_data,
  tables = NULL,
  spec_idx = 1,
  spec_int = NULL,
  col_model = 2,
  col_nucleus = NULL,
  lwd = 1,
  tick_spacing = 0.02,
  coupling_spacing = 0.01,
  coupling_marks = 0.009,
  xaxs = "i",
  yaxs = "i",
  low_frac = 0.05,
  bty = "n",
  always_show_start = FALSE,
  add = FALSE,
  ppm_map_list = NULL
)
```

## Arguments

- fit_data:

  fit_input or fit_output structure

- tables:

  list with resonances, nuclei, and couplings tables

- spec_idx:

  index of spectrum to plot

- spec_int:

  optional matrix to replace the input spectrum intensities

- col_model:

  color for modeled peak shapes

- col_nucleus:

  colors for nuclei

- lwd:

  line width

- tick_spacing:

  spacing between axis ticks (ppm)

- coupling_spacing:

  spacing between coupling annotations (fraction of plot)

- coupling_marks:

  size of coupling tick marks (fraction of plot)

- xaxs:

  x-axis style passed to
  [`plot`](https://rdrr.io/r/graphics/plot.default.html)

- yaxs:

  y-axis style passed to
  [`plot`](https://rdrr.io/r/graphics/plot.default.html)

- low_frac:

  minimum absolute value (as a fraction of maximum intensity) at which
  to show contours

- bty:

  box type passed to
  [`plot`](https://rdrr.io/r/graphics/plot.default.html)

- always_show_start:

  logical indicating whether to show starting model when fit is present

- add:

  logical indicating whether to add to existing plot

- ppm_map_list:

  optional list of sparse axis maps created by
  [`make_map`](https://smith-group.github.io/fitnmr/reference/make_map.md)

## Value

No return value, called for side effects (draws a plot).
