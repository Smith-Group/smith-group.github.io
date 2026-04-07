# Read data for calculating spectral-density-based relaxation rates

Read data for calculating spectral-density-based relaxation rates

## Usage

``` r
read_spec_den_relax_data(prefix_path)
```

## Arguments

- prefix_path:

  to prefix of four CSV files

## Value

A list with elements:

- `atom_pairs`:

  data frame of atom-pair metadata and target value columns, excluding
  flattened spectral-density term columns ending in `_coef` or `_freq`

- `unit`:

  logical flag indicating whether the first interaction is encoded by
  unit-vector identifiers rather than atom identifiers. The current
  implementation returns a length-one logical. It is intended to
  generalize to one flag per interaction when cross-correlation support
  is added.

- `relax_data_list`:

  named list of per-rate entries returned by
  [`atom_relax_df_to_spec_den_term_array_list()`](https://smith-group.github.io/ke/reference/atom_relax_df_to_spec_den_term_array_list.md)

- `groupings`:

  grouping matrix

- `a_int_coef`:

  matrix of amplitudes used to construct internal-motion coefficients

- `lambda_int_coef`:

  matrix of rate coefficients used to construct internal-motion
  eigenvalues
