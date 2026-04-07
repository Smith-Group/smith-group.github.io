# Convert one rate block of atom-relax columns into a spectral-density term array

Reconstruct a per-rate spectral-density term array from columns in an
`*_atom_relax.csv`-style data frame.

## Usage

``` r
atom_relax_columns_to_spec_den_term_array(atom_relax_df, rate_name)
```

## Arguments

- atom_relax_df:

  data frame containing one or more rate blocks encoded as atom-relax
  columns

- rate_name:

  character scalar giving the rate block to extract

## Value

A list with elements:

- `value`:

  numeric vector from the `"<rate_name>_value"` column, or `NULL` if
  that column is absent

- `k`:

  numeric vector from the `"<rate_name>_k"` column, or `NULL` if that
  column is absent

- `spec_den_term_array`:

  numeric array `(pairs, terms, 2)` with second-dimension names taken
  from `<freq_name>` and third-dimension names `c("coef", "freq")`

## Details

The expected column naming convention is
`"<rate_name>_<freq_name>_<component>"`, where `<component>` is either
`"coef"` or `"freq"`. If present, the special columns
`"<rate_name>_value"` and `"<rate_name>_k"` store the target relaxation
values and optional loss weights associated with that rate block.

Parsing is anchored to the supplied `rate_name`, so the rate name itself
may contain underscores. The `freq_name` portion must not contain
underscores. For each `freq_name`, both `coef` and `freq` columns must
be present.

## Examples

``` r
atom_relax_df <- data.frame(
  r1_value = c(1.0, 2.0),
  r1_k = c(4.0, 9.0),
  r1_0_coef = c(0.1, 0.2),
  r1_0_freq = c(0, 0),
  r1_2wH_coef = c(0.3, 0.4),
  r1_2wH_freq = c(100, 100),
  check.names = FALSE
)

out <- atom_relax_columns_to_spec_den_term_array(atom_relax_df, "r1")
out$value
#> [1] 1 2
dim(out$spec_den_term_array)
#> [1] 2 2 2
dimnames(out$spec_den_term_array)[[2]]
#> [1] "0"   "2wH"
```
