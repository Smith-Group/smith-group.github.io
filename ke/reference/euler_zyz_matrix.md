# Construct a ZYZ Euler rotation matrix

Return the `3 x 3` rotation matrix corresponding to the active
`Rz(alpha) Ry(beta) Rz(gamma)` Euler-angle convention.

## Usage

``` r
euler_zyz_matrix(alpha, beta, gamma)
```

## Arguments

- alpha:

  first rotation angle in radians about the `z` axis

- beta:

  second rotation angle in radians about the `y` axis

- gamma:

  third rotation angle in radians about the `z` axis

## Value

`3 x 3` numeric rotation matrix

## Details

This convention matches the standard parameterization used for the
rank-2 Wigner rotation matrix `D^(2)(alpha, beta, gamma)`.

## Examples

``` r
euler_zyz_matrix(0, 0, 0)
#>      [,1] [,2] [,3]
#> [1,]    1    0    0
#> [2,]    0    1    0
#> [3,]    0    0    1
euler_zyz_matrix(pi / 2, 0, 0)
#>              [,1]          [,2] [,3]
#> [1,] 6.123234e-17 -1.000000e+00    0
#> [2,] 1.000000e+00  6.123234e-17    0
#> [3,] 0.000000e+00  0.000000e+00    1
```
