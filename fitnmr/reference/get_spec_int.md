# Get arrays of spectral intensities for input, starting parameters, and fit peaks

Get arrays of spectral intensities for input, starting parameters, and
fit peaks

## Usage

``` r
get_spec_int(
  fit_data,
  spec_type = c("input", "start", "fit"),
  spec_idx = seq_along(fit_data$spec_data),
  peak_idx = seq_len(dim(fit_data$start_list$omega0)[2])
)
```

## Arguments

- fit_data:

  fit_input or fit_output structure

- spec_type:

  character indicating which spectra to return

- spec_idx:

  indices of spectra to return

- peak_idx:

  indices of peaks to include (for start/fit)

## Value

A \`list\` of numeric arrays, one per selected spectrum. Each array is
on contiguous ppm axes and contains either observed (\`input\`) or
modeled (\`start\`/\`fit\`) intensities.

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
input_int <- get_spec_int(fit_input, "input")
start_int <- get_spec_int(fit_input, "start")
```
