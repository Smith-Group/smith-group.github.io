# Calculate g value restraint energy from atomic coordinates

Calculate g value restraint energy from atomic coordinates

## Usage

``` r
coord_array_to_g_energy_refactored(
  coord_array,
  atom_pairs,
  grouping_mat,
  g0,
  loss_func = power_scaled_loss,
  ...,
  gradient = FALSE
)
```

## Arguments

- coord_array:

  3D array (atoms, xyz, models) with atomic coordinates

- atom_pairs:

  matrix with each row having the names or indices of an atom pair
  (first dimension in `coord_array`)

- grouping_mat:

  integer matrix (groups, models) giving groupings of models to average
  interaction tensors

- g0:

  target group norm squared values

- loss_func:

  loss function to use to calculate energy

- ...:

  additional parameters passed to `loss_func`

- gradient:

  a logical value indicating whether to calculate the derivative

## Value

total restraint energy calculated using `loss_func`

The optional derivative is contained in the `"gradient"` attribute. It
is a 3D array (atoms, xyz, models).
