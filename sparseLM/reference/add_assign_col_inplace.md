# Add values to an existing sparse column in place

Adds `value` to the existing nonzero entries of column `j` at rows `i`.
Only existing nonzeros are updated; no new nonzeros are created.
`add_assign_col_inplace_unsafe` skips the input validation performed by
`add_assign_col_inplace`. When `validate = TRUE`, the function checks
that `i` is strictly increasing, in range, and contains no NA; that
`value` contains no NA/NaN; and that the column pointer `p` is
nondecreasing.

## Usage

``` r
add_assign_col_inplace(x, i, j, value, validate = TRUE)

add_assign_col_inplace_unsafe(x, i, j, value)
```

## Arguments

- x:

  dgCMatrix to be assigned

- i:

  rows to be assigned in strictly increasing order

- j:

  single integer giving column to assign

- value:

  numeric vector (same length as `i`) to increment rows i of column j of
  x

- validate:

  logical scalar; if TRUE, validates that i is strictly increasing and
  within bounds

## Value

value passed to x

## Examples

``` r
if (requireNamespace("Matrix", quietly = TRUE)) {
  x <- Matrix::Matrix(0, nrow = 4, ncol = 2, sparse = TRUE)
  x[1, 1] <- 1
  x[3, 1] <- 2
  # value is the same length as i
  add_assign_col_inplace(x, i = c(1L, 3L), j = 1L, value = c(10, -5))
}
#> 4 x 2 sparse Matrix of class "dgCMatrix"
#>          
#> [1,] 11 .
#> [2,]  . .
#> [3,] -3 .
#> [4,]  . .
```
