# Create hierarchical transition rate matrix

Create hierarchical transition rate matrix

## Usage

``` r
rate_mat_intra_inter(group_vec, k_intra, k_inter)
```

## Arguments

- group_vec:

  integer vector giving group membership of each state

- k_intra:

  desired eigenvalue for intra-group transitions

- k_inter:

  desired eigenvalue for inter-group transitions

## Value

Square transition rate matrix with group-specific off-diagonal rates and
diagonal entries left as `NA`.

## Examples

``` r
rate_mat <- rate_mat_intra_inter(c(0,0,1,1), 10, 4)
rate_mat <- rate_mat_diag(rate_mat)
eigen(rate_mat)
#> eigen() decomposition
#> $values
#> [1]  2.287266e-16 -4.000000e+00 -1.000000e+01 -1.000000e+01
#> 
#> $vectors
#>      [,1] [,2]          [,3]          [,4]
#> [1,] -0.5  0.5  7.071068e-01  0.000000e+00
#> [2,] -0.5  0.5 -7.071068e-01  2.696189e-17
#> [3,] -0.5 -0.5 -3.567828e-16 -7.071068e-01
#> [4,] -0.5 -0.5 -3.290272e-16  7.071068e-01
#> 
```
