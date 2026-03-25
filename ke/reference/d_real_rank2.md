# Construct the real rank-2 rotation matrix

Return the `5 x 5` real rotation matrix acting on the rank-2 tesseral
basis used by
[`r_array_to_d_array()`](https://smith-group.github.io/ke/reference/r_array_to_d_array.md)
with `unit = TRUE`.

## Usage

``` r
d_real_rank2(alpha, beta, gamma)
```

## Arguments

- alpha:

  first rotation angle in radians about the `z` axis

- beta:

  second rotation angle in radians about the `y` axis

- gamma:

  third rotation angle in radians about the `z` axis

## Value

`5 x 5` numeric rotation matrix

## Details

The basis ordering is `(Y20, Y22c, Y21c, Y21s, Y22s)`, equivalent to the
five components `(d1, d2, d3, d4, d5)` returned by
[`r_array_to_d_array()`](https://smith-group.github.io/ke/reference/r_array_to_d_array.md).

The matrix is constructed by rotating the corresponding orthonormal
Cartesian rank-2 basis tensors with the `3 x 3` rotation matrix from
[`euler_zyz_matrix()`](https://smith-group.github.io/ke/reference/euler_zyz_matrix.md).
This produces a real orthogonal representation of the same rotation
described by the complex Wigner matrix `D^(2)(alpha, beta, gamma)`.

## Examples

``` r
d_real_rank2(0, 0, 0)
#>      [,1] [,2] [,3] [,4] [,5]
#> [1,]    1    0    0    0    0
#> [2,]    0    1    0    0    0
#> [3,]    0    0    1    0    0
#> [4,]    0    0    0    1    0
#> [5,]    0    0    0    0    1

x <- c(1, 0, 0)
d_x <- drop(r_array_to_d_array(matrix(x, nrow = 1), dist = FALSE, unit = TRUE))
y <- drop(euler_zyz_matrix(pi / 2, 0, 0) %*% x)
d_y <- drop(r_array_to_d_array(matrix(y, nrow = 1), dist = FALSE, unit = TRUE))
all.equal(drop(d_real_rank2(pi / 2, 0, 0) %*% d_x), d_y, tolerance = 1e-12)
#> [1] "names for current but not for target"
```
