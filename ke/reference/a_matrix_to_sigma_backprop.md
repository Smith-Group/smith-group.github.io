# Back-propagate energy derivative from sigma to a matrix

Back-propagate energy derivative from sigma to a matrix

## Usage

``` r
a_matrix_to_sigma_backprop(d_sigma_d_a_matrix, d_energy_d_sigma)
```

## Arguments

- d_sigma_d_a_matrix:

  matrix (pairs, eigenvalues) fom `gradient` attribute of
  [`a_matrix_to_sigma()`](https://smith-group.github.io/ke/reference/a_matrix_to_sigma.md)

- d_energy_d_sigma:

  vector (pairs)

## Value

matrix (pairs, eigenvalues) with d_energy_d_a_matrix
