# Calculate relaxation rate restraint energy from atomic coordinates

Calculate relaxation rate restraint energy from atomic coordinates

## Usage

``` r
coord_array_to_relax_energy(
  coord_array,
  rates,
  relax_data_list,
  d_rot = 1/(6 * tau_c),
  tau_c,
  loss_func = power_scaled_loss,
  ...,
  gradient = FALSE
)
```

## Arguments

- coord_array:

  3D array (atoms, xyz, models) with atomic coordinates

- rates:

  named numeric vector with ensemble rates

- relax_data_list:

  list of data for calculating relaxation rates

- d_rot:

  rotational diffusion constants: c(Diso), c(Dperp, Dpara), or c(Dx, Dy,
  Dz)

- tau_c:

  isotropic rotational diffusion time

- loss_func:

  loss function to use

- ...:

  additional parameters passed to `loss_func`

- gradient:

  a logical value indicating whether to calculate the derivative

## Value

total restraint energy calculated using `loss_func`

The optional derivative is contained in the `"gradient"` attribute. It
is a 3D array (atoms, xyz, models).

Testing with `deriv_check` showed a slight systematic (~0.2%
underestimation) of the gradient between two methyl groups. Perhaps
there's some unaccounted correlation in the purely additive derivative
calculation?
