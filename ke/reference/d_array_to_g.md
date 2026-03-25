# Calculate group norm squared from dipole-dipole interaction tensors

Calculate group norm squared from dipole-dipole interaction tensors

## Usage

``` r
d_array_to_g(d_array, grouping, gradient = FALSE)
```

## Arguments

- d_array:

  3D array (pairs, models, tensor elements) with interaction tensors

- grouping:

  list of integer vectors giving groupings of models to average
  interaction tensors

- gradient:

  a logical value indicating whether to calculate the derivative

## Value

vector with norm squared for each atom pair.

The optional derivative is contained in the `"gradient"` attribute. It
is a 3D array (pairs, models, tensor elements).
