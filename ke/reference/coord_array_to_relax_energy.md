# Calculate relaxation rate restraint energy from atomic coordinates

Calculate relaxation rate restraint energy from atomic coordinates

## Usage

``` r
coord_array_to_relax_energy(
  coord_array,
  rates,
  spec_den_relax_data_list,
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

- spec_den_relax_data_list:

  list of data for calculating relaxation rates

- loss_func:

  loss function to use

- ...:

  additional parameters passed to `loss_func`. If a `k` argument is not
  supplied here, `coord_array_to_relax_energy()` looks for an optional
  numeric `k` field in each `relax_data_list` entry and uses those
  values as per-relaxation-rate force constants. Each such `k` may have
  length 1 or the number of relaxation rates in that entry.

- gradient:

  a logical value indicating whether to calculate the derivative

## Value

total restraint energy calculated using `loss_func`

The optional derivative is contained in the `"gradient"` attribute. It
is a 3D array (atoms, xyz, models).
