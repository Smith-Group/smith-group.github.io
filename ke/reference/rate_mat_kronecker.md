# Calculate Kronecker product of two transition rate matrices

Calculate Kronecker product of two transition rate matrices

## Usage

``` r
rate_mat_kronecker(rate_mat_a, rate_mat_b)
```

## Arguments

- rate_mat_a:

  first transition rate matrix

- rate_mat_b:

  second transition rate matrix

## Value

Square transition rate matrix representing the combined process on the
Kronecker-product state space.

## Examples

``` r
rate_mat_fast <- rate_mat_simple(10, c("f1", "f2"))
rate_mat_slow <- rate_mat_simple(4, c("s1", "s2"))
rate_mat <- rate_mat_kronecker(rate_mat_fast, rate_mat_slow)
rate_mat <- rate_mat_diag(rate_mat)
eigen(rate_mat)
#> eigen() decomposition
#> $values
#> [1] -1.203635e-15 -4.000000e+00 -1.000000e+01 -1.400000e+01
#> 
#> $vectors
#>      [,1] [,2] [,3] [,4]
#> [1,] -0.5  0.5 -0.5  0.5
#> [2,] -0.5  0.5  0.5 -0.5
#> [3,] -0.5 -0.5 -0.5 -0.5
#> [4,] -0.5 -0.5  0.5  0.5
#> 
```
