# Expand subset matrix consistent with applying Kronecker product to original rate matrix

Expand subset matrix consistent with applying Kronecker product to
original rate matrix

## Usage

``` r
expand_subset_mat(rate_subset_mat, permutation_counts)
```

## Arguments

- rate_subset_mat:

  matrix (ensemble members, rates) giving the subset each ensemble
  member belongs to

- permutation_counts:

  vector with counts of states and names giving the rate

## Examples

``` r
rate_mat_fast <- rate_mat_simple(10, c("f1", "f2"))
rate_mat_fast <- rate_mat_diag(rate_mat_fast)
subset_mat <- calc_subset_mat(eigen(rate_mat_fast))
expand_subset_mat(subset_mat, list("4"=2))
#>      4 10
#> [1,] 1  1
#> [2,] 2  1
#> [3,] 1  2
#> [4,] 2  2
```
