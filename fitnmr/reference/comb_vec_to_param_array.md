# Determine array of destination parameters from a source vector

Determine array of destination parameters from a source vector

## Usage

``` r
comb_vec_to_param_array(
  comb_vec,
  comb_array,
  param_array = NULL,
  na_only = FALSE
)
```

## Arguments

- comb_vec:

  vector of source parameters

- comb_array:

  array of 2xN data frames with mapping between vector and array

- param_array:

  starting array of destination parameters

- na_only:

  only overwrite values in param_array if they are NA
