# Convert tables with resonance/nuclei/couplings to a parameter list

Convert tables with resonance/nuclei/couplings to a parameter list

## Usage

``` r
tables_to_param_list(spec_list, tables)
```

## Arguments

- spec_list:

  list of spectra

- tables:

  list with resonance/nuclei/couplings tables

## Value

A parameter \`list\` containing \`start_list\`, \`group_list\`,
\`comb_list\`, and associated naming vectors used by fitting functions.

## Examples

``` r
spec_file <- system.file("extdata", "tyrosine", "proton.ft1", package = "fitnmr")
spec <- read_nmrpipe(spec_file)

start_resonances <- structure(
  list(
    x = c("HA", "HB3", "HB2", "HD1/2", "HE1/2"),
    x_sc = c(
      "HA-HB3 HA-HB2",
      "HA-HB3 HB3-HB2",
      "HA-HB2 HB3-HB2",
      "HD1/2-HE1/2-3 HD1/2-HE1/2-5",
      "HD1/2-HE1/2-3 HD1/2-HE1/2-5"
    )
  ),
  row.names = c("HA", "HB3", "HB2", "HD1/2", "HE1/2"),
  class = "data.frame"
)

start_nuclei <- structure(
  list(
    omega0_ppm = c(3.364, 2.635, 2.799, 6.94, 6.538),
    r2_hz = c(0.7, 0.7, 0.7, 0.7, 0.7)
  ),
  class = "data.frame",
  row.names = c("HA", "HB3", "HB2", "HD1/2", "HE1/2")
)

start_couplings <- structure(
  list(hz = c(7.153, 5.159, -13.941, 7.7, 2)),
  class = "data.frame",
  row.names = c("HA-HB3", "HA-HB2", "HB3-HB2", "HD1/2-HE1/2-3", "HD1/2-HE1/2-5")
)

start_tables <- list(
  resonances = start_resonances,
  nuclei = start_nuclei,
  couplings = start_couplings
)
param_list <- tables_to_param_list(list(spec), start_tables)
param_list$start_list$m0[] <- 1e9
arg_list <- param_list_to_arg_list(param_list)
fit_input <- do.call(make_fit_input, c(list(list(spec), omega0_plus = 0.075), arg_list))
fit_output <- perform_fit(fit_input)
```
