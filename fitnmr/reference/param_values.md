# Get/set a subset of fitting parameters specified by a list of logical vectors

Get/set a subset of fitting parameters specified by a list of logical
vectors

## Usage

``` r
param_values(params, idx_list)

param_values(params, idx_list) <- value
```

## Arguments

- params:

  a list of fitting parameters

- idx_list:

  a list with the same structure as `params` but with logical vectors
  indicating which values should be return/set

- value:

  replacement values (for setter)

## Value

a vector of parameter values or the modified parameter list
