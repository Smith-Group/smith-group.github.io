# Back-propagate energy derivative from r array to coordinates

Back-propagate energy derivative from r array to coordinates

## Usage

``` r
coord_array_to_r_array_backprop(
  d_energy_d_coord_array,
  atom_pairs,
  d_energy_d_r_array
)
```

## Arguments

- d_energy_d_coord_array:

  3D array (atoms, xyz, models) to accumulate derivatives into

- atom_pairs:

  matrix with each row having the names or indices of an atom pair
  (first dimension in `coord_array`

- d_energy_d_r_array:

  3D array (pairs, models, xyz)

## Value

3D array (pairs, xyz, models) with d_energy_d_coord_array
