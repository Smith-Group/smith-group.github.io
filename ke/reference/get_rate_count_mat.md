# Get counts enabling calculation of eigenvalues from individual rates

Get counts enabling calculation of eigenvalues from individual rates

## Usage

``` r
get_rate_count_mat(trans_rate, all_permutations, eps_factor = 0.5)
```

## Arguments

- trans_rate:

  transition rate matrix

- all_permutations:

  all possible permutations (i.e. methyl, aromatic) applied

- eps_factor:

  rates must differ by this amount times the lowest rate

## Value

Integer matrix whose rows count how often each base or permutation rate
contributes to each combined eigenvalue.

## Examples

``` r
rate_mat <- rate_mat_intra_inter(c(0,0,1,1), 10, 4)
get_rate_count_mat(rate_mat, NULL)
#>                  0 3.99999999999999 10
#> 3.99999999999999 0                1  0
#> 10               0                0  1
```
