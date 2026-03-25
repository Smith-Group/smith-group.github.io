# Convert rate data into a format more easily serializable to set of tables

Convert rate data into a format more easily serializable to set of
tables

## Usage

``` r
rate_data_to_mat_list(rate_data, rate_count_mat, rates_named = NULL)
```

## Arguments

- rate_data:

  list returned by
  [`get_rate_data()`](https://smith-group.github.io/ke/reference/get_rate_data.md)

- rate_count_mat:

  matrix returned by
  [`get_rate_count_mat()`](https://smith-group.github.io/ke/reference/get_rate_count_mat.md)
  including methyl and aromatic rates

- rates_named:

  numeric vector whose names give the rates to be used

## Value

a list with elements: `groupings`, `a_coef`, and `lambda_coef`
