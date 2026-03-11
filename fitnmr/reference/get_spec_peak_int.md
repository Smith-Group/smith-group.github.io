# Get spectra for individual peaks

Get spectra for individual peaks

## Usage

``` r
get_spec_peak_int(
  fit_data,
  spec_type = c("start", "fit"),
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

  indices of peaks to include
