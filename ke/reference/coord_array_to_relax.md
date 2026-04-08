# Calculate relaxation rates from atomic coordinates

Calculate relaxation rates from atomic coordinates

## Usage

``` r
coord_array_to_relax(coord_array, rates, spec_den_relax_data_list)
```

## Arguments

- coord_array:

  3D array (atoms, xyz, models) with atomic coordinates

- rates:

  named numeric vector with rates

- spec_den_relax_data_list:

  list of data for calculating relaxation rates

## Value

Named list of numeric matrices of relaxation rates, one per block in
`spec_den_relax_data_list`, with columns corresponding to
relaxation-rate types.
