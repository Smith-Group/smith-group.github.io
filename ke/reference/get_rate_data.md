# Construct `k` coefficients in a recursive manner

Construct `k` coefficients in a recursive manner

## Usage

``` r
get_rate_data(
  trans_rate,
  parent_data = NULL,
  all_rates = NULL,
  validate = FALSE
)
```

## Arguments

- trans_rate:

  transition rate matrix

- parent_data:

  previous data to modify assuming application of Kronecker product

- all_rates:

  vector of all rates

- validate:

  passed onto
  [`get_eigen_groups()`](https://smith-group.github.io/ke/reference/get_eigen_groups.md)

## Value

List containing the combined transition matrix and the grouping data
returned by
[`get_eigen_groups()`](https://smith-group.github.io/ke/reference/get_eigen_groups.md).

## Examples

``` r
rate_mat_fast <- rate_mat_simple(10, c("f1", "f2"))
rate_mat_slow <- rate_mat_simple(4, c("s1", "s2"))
rate_data_base <- get_rate_data(rate_mat_fast)
rate_data <- get_rate_data(rate_mat_slow, rate_data_base)
```
