# Get `k` coefficients for creating linear combinations of `a` values from `g` values

Get `k` coefficients for creating linear combinations of `a` values from
`g` values

## Usage

``` r
get_eigen_groups(
  trans_rate_eigen,
  all_rates = NULL,
  subset_mat = NULL,
  validate = FALSE,
  eps_factor = 0.5
)
```

## Arguments

- trans_rate_eigen:

  list with `values` and `vectors` as returned by
  [`eigen()`](https://rdrr.io/r/base/eigen.html)

- all_rates:

  numeric vector of all rates

- subset_mat:

  created by
  [`calc_subset_mat()`](https://smith-group.github.io/ke/reference/calc_subset_mat.md)
  or
  [`expand_subset_mat()`](https://smith-group.github.io/ke/reference/expand_subset_mat.md)

- validate:

  check to see whether result is correct using another method

- eps_factor:

  epsilon used for heuristically matching rates generated in two ways

## Value

List describing the eigenvalue grouping structure, including state
populations, unique rates, subset assignments, and coefficient matrices
used to reconstruct `a` values from grouped states.

## Examples

``` r
rate_mat <- rate_mat_intra_inter(c(0,0,1,1), 10, 4)
rate_mat <- rate_mat_diag(rate_mat)
get_eigen_groups(eigen(rate_mat))
#> $state_pop
#> [1] 0.25 0.25 0.25 0.25
#> 
#> $unique_rates
#> [1]  4 10
#> 
#> $all_rates
#> NULL
#> 
#> $all_rate_idx
#> NULL
#> 
#> $subset_idx
#> $subset_idx[[1]]
#> $subset_idx[[1]][[1]]
#> [1] 1 2 3 4
#> 
#> 
#> $subset_idx[[2]]
#> $subset_idx[[2]][[1]]
#> [1] 1 2
#> 
#> $subset_idx[[2]][[2]]
#> [1] 3 4
#> 
#> 
#> $subset_idx[[3]]
#> $subset_idx[[3]][[1]]
#> [1] 1
#> 
#> $subset_idx[[3]][[2]]
#> [1] 2
#> 
#> $subset_idx[[3]][[3]]
#> [1] 3
#> 
#> $subset_idx[[3]][[4]]
#> [1] 4
#> 
#> 
#> 
#> $subset_group_invpop
#> $subset_group_invpop[[1]]
#> [1] 1
#> 
#> $subset_group_invpop[[2]]
#> [1] 2 2
#> 
#> $subset_group_invpop[[3]]
#> [1] 4 4 4 4
#> 
#> 
#> $subset_coef
#>   0  4 10
#> 0 1 -1  0
#> 1 0  1 -1
#> 2 0  0  1
#> 
#> $subset_mat
#>      4 10
#> [1,] 1  1
#> [2,] 1  2
#> [3,] 2  3
#> [4,] 2  4
#> 
```
