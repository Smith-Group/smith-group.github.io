# Create transition rate matrix with single rate

Create transition rate matrix with single rate

## Usage

``` r
rate_mat_simple(k, n_names)
```

## Arguments

- k:

  desired eigenvalue for the rate matrix

- n_names:

  character vector with row and columns

## Value

Square transition rate matrix with off-diagonal rates filled and the
diagonal left as `NA` until
[`rate_mat_diag()`](https://smith-group.github.io/ke/reference/rate_mat_diag.md)
is applied.

## Examples

``` r
rate_mat <- rate_mat_simple(4, c("a", "b", "c", "d"))
rate_mat <- rate_mat_diag(rate_mat)
eigen(rate_mat)
#> eigen() decomposition
#> $values
#> [1] -1.14662e-16 -4.00000e+00 -4.00000e+00 -4.00000e+00
#> 
#> $vectors
#>      [,1]       [,2]       [,3]          [,4]
#> [1,] -0.5  0.0000000  0.8660254  0.000000e+00
#> [2,] -0.5  0.8164966 -0.2886751 -8.756053e-17
#> [3,] -0.5 -0.4082483 -0.2886751 -7.071068e-01
#> [4,] -0.5 -0.4082483 -0.2886751  7.071068e-01
#> 
```
