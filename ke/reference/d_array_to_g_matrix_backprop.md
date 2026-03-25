# Back-propagate energy derivative from g matrix to d array

Back-propagate energy derivative from g matrix to d array

## Usage

``` r
d_array_to_g_matrix_backprop(d_g_matrix_d_d_array, d_energy_d_g_matrix)
```

## Arguments

- d_g_matrix_d_d_array:

  4D array (pairs, models, tensor components, groups) fom `gradient`
  attribute of
  [`d_array_to_g_matrix()`](https://smith-group.github.io/ke/reference/d_array_to_g_matrix.md)

- d_energy_d_g_matrix:

  matrix (pairs, groups)

## Value

3D array (pairs, models, tensor elements) with d_energy_d_d_array
