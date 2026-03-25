# Calculate g value restraint energy from atomic coordinates

Calculate g value restraint energy from atomic coordinates

## Usage

``` r
coord_array_to_g_energy(
  coord_array,
  atom_pairs,
  grouping_list,
  g0,
  k,
  gradient = FALSE
)
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

- g0:

  target group norm squared values

- k:

  force constant

- gradient:

  a logical value indicating whether to calculate the derivative

## Value

total restraint energy calculated using \\k\*(g-g0)^2\\

The optional derivative is contained in the `"gradient"` attribute. It
is a 3D array (atoms, xyz, models).
