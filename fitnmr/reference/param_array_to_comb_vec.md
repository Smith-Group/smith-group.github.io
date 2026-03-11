# Determine vector of source parameters from destination array via least squares

Determine vector of source parameters from destination array via least
squares

## Usage

``` r
param_array_to_comb_vec(
  param_array,
  comb_array,
  group_vec = NULL,
  resid_thresh = 1e-08
)
```

## Arguments

- param_array:

  array of destination parameters

- comb_array:

  array of 2xN data frames with mapping between vector and array

- group_vec:

  optional vector of group numbers for source parameters

- resid_thresh:

  all residuals from least squares fit must be less than this value
