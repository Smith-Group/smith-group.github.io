# Calculate cross relaxation rates from atomic coordinates

Calculate cross relaxation rates from atomic coordinates

## Usage

``` r
coord_array_to_sigma(coord_array, rates, spec_den_data_list, proton_mhz)
```

## Arguments

- coord_array:

  3D array (atoms, xyz, models) with atomic coordinates

- rates:

  named numeric vector with rates

- spec_den_data_list:

  list of data for calculating spectral density functions

- proton_mhz:

  spectrometer proton field strength in MHz
