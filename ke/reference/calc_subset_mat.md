# Determine subsets of states within transition rate matrices

Determine subsets of states within transition rate matrices

## Usage

``` r
calc_subset_mat(
  trans_rate_eigen,
  rate_groups = get_rate_groups(-trans_rate_eigen$values[-1])
)
```

## Arguments

- trans_rate_eigen:

  list with `values` and `vectors` as returned by
  [`eigen()`](https://rdrr.io/r/base/eigen.html)

- rate_groups:

  list with numerically equivalent rates organized into groups

  This only works with rate matrices returned by
  [`rate_mat_simple()`](https://smith-group.github.io/ke/reference/rate_mat_simple.md)
  and `rate_mat_intra_inter`. It does not work with
  [`rate_mat_kronecker()`](https://smith-group.github.io/ke/reference/rate_mat_kronecker.md).

## Value

Numeric matrix assigning each state to a subset for each unique rate
group.

## Examples

``` r
rate_mat <- rate_mat_intra_inter(c(0,0,1,1), 10, 4)
rate_mat <- rate_mat_diag(rate_mat)
calc_subset_mat(eigen(rate_mat))
#>      3.99999999999999 10
#> [1,]                1  1
#> [2,]                1  2
#> [3,]                2  3
#> [4,]                2  4
```
