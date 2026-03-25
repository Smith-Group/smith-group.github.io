# Calculate dipole-dipole interaction tensors from internuclear vectors

Calculate dipole-dipole interaction tensors from internuclear vectors

## Usage

``` r
r_array_to_d_array(r_array, dist = TRUE, unit = FALSE, gradient = FALSE)
```

## Arguments

- r_array:

  3D array (pairs, models, xyz) with internuclear vectors

- dist:

  logical indicating whether to return distance-dependent form

- unit:

  logical indicating whether to return unit (distance-independent) form

- gradient:

  a logical value indicating whether to calculate the derivative

## Value

3D array (pairs, models, tensor elements) with interaction tensors

The optional derivative is contained in the `"gradient"` attribute. It
is a 4D array (pairs, models, tensor elements, xyz).

## Details

Given an internuclear vector with components (`x`, `y`, `z`) and
distance (`r`), the vector form (`d`) of the dipole-dipole interaction
tensor is defined:

\\d = 1/r^5 \[ z^2 - 1/2 (x^2+y^2), \sqrt{3}/2 (x^2-y^2), \sqrt{3} xz,
\sqrt{3} yz, \sqrt{3} xy) \]\\

Note that the coefficients of the last four elements are different than
what was given in Smith 2020
([doi:10.1007/s10858-019-00288-8](https://doi.org/10.1007/s10858-019-00288-8)
). Those published coefficients do not account for the 3/2 factor in the
cartesian tensor.
