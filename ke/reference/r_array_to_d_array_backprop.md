# Back-propagate energy derivative from d array to r array

Back-propagate energy derivative from d array to r array

## Usage

``` r
r_array_to_d_array_backprop(d_d_array_d_r_array, d_energy_d_d_array)
```

## Arguments

- d_d_array_d_r_array:

  4D array (pairs, models, tensor elements, xyz) from `gradient`
  attribute of
  [`r_array_to_d_array()`](https://smith-group.github.io/ke/reference/r_array_to_d_array.md)

- d_energy_d_d_array:

  3D array (pairs, models, tensor elements)

## Value

3D array (pairs, models, xyz) with d_energy_d_r_array
