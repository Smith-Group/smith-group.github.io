# Calculate group norm squared values from atomic coordinates

Calculate group norm squared values from atomic coordinates

## Usage

``` r
coord_array_to_g_matrix(coord_array, atom_pairs, grouping_list)
```

## Arguments

- coord_array:

  3D array (atoms, xyz, models) with atomic coordinates

- atom_pairs:

  matrix with each row having the names or indices of an atom pair
  (first dimension in `coord_array`)

- grouping_list:

  list of lists of integer vectors giving groupings of models to average
  interaction tensors

## Value

matrix (pairs, groupings) with group norm squared values
