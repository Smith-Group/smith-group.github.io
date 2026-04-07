# Convert a named list of spectral-density term arrays into atom-relax columns

Flatten a named list of per-rate spectral-density term arrays into a
single data frame suitable for an `*_atom_relax.csv`-style file.

## Usage

``` r
spec_den_term_array_list_to_atom_relax_df(spec_den_term_array_list)
```

## Arguments

- spec_den_term_array_list:

  named list of per-rate spectral-density term arrays, or named list of
  lists containing `spec_den_term_array` and optional `value` and `k`

## Value

Data frame combining all rate blocks side by side using the atom- relax
column naming convention

## Details

Each element of `spec_den_term_array_list` must be named by the desired
rate name and must either be:

- a spectral-density term array `(pairs, terms, 2)`, or

- a list with elements `spec_den_term_array` and optional `value` and
  `k`

In the second form, `value` and `k` are written to the corresponding
`"<rate_name>_value"` and `"<rate_name>_k"` columns.

## Examples

``` r
spec_den_term_array_list <- list(
  r1 = list(
    value = c(1.0, 2.0),
    k = c(4.0, 9.0),
    spec_den_term_array = array(
      c(0.1, 0.2, 0, 0),
      dim = c(2, 1, 2),
      dimnames = list(NULL, "0", c("coef", "freq"))
    )
  ),
  r2 = list(
    spec_den_term_array = array(
      c(0.3, 0.4, 10, 10),
      dim = c(2, 1, 2),
      dimnames = list(NULL, "0", c("coef", "freq"))
    )
  )
)

spec_den_term_array_list_to_atom_relax_df(spec_den_term_array_list)
#>   r1_value r1_k r1_0_coef r1_0_freq r2_0_coef r2_0_freq
#> 1        1    4       0.1         0       0.3        10
#> 2        2    9       0.2         0       0.4        10
```
