# Encapsulate kinetic ensemble data into a list data structure

Encapsulate kinetic ensemble data into a list data structure

## Usage

``` r
make_ke_data(
  coord_array,
  base_rate_mat,
  base_rates,
  kc,
  kmethyl = 1/1e-12,
  karo = 1/1e-04,
  proton_mhz,
  mix_times
)
```

## Arguments

- coord_array:

  3D array (xyz, atoms, models) with atomic coordinates

- base_rate_mat:

  rate matrix for transitions between ensemble members

- base_rates:

  named vector of rates

- kc:

  reciprocal of molecular tumbling time

- kmethyl:

  methyl rotation eigenvalue

- karo:

  phenylalanine/tyrosine flip eigenvalue

- proton_mhz:

  proton frequency in MHz

- mix_times:

  mixing times to calculate
