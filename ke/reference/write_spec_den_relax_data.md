# Write data for calculating spectral-density-based relaxation rates

Write a `spec_den_relax_data`-style object to the four CSV files read by
[`read_spec_den_relax_data()`](https://smith-group.github.io/ke/reference/read_spec_den_relax_data.md).

## Usage

``` r
write_spec_den_relax_data(spec_den_relax_data, prefix_path)
```

## Arguments

- spec_den_relax_data:

  list containing at least `atom_pairs`, `unit`, `relax_data_list`,
  `groupings`, `a_int_coef`, and `lambda_int_coef`

- prefix_path:

  character scalar giving the output file prefix

## Value

Invisibly returns `prefix_path`

## Details

The `*_atom_relax.csv` file is assembled by combining `atom_pairs` with
the flattened columns generated from `relax_data_list`. To preserve the
`unit` flag on reread, the first two atom-pair columns are written with
names ending in `"_unit"` when `unit` is `TRUE`, and without that suffix
when `unit` is `FALSE`.
