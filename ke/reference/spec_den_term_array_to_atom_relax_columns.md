# Convert a spectral-density term array into one rate block of atom-relax columns

Flatten a per-rate spectral-density term array into columns suitable for
an `*_atom_relax.csv`-style data frame.

## Usage

``` r
spec_den_term_array_to_atom_relax_columns(
  spec_den_term_array,
  rate_name,
  value = NULL,
  k = NULL
)
```

## Arguments

- spec_den_term_array:

  numeric array `(pairs, terms, 2)`

- rate_name:

  character scalar giving the rate block name

- value:

  optional numeric vector of length `dim(spec_den_term_array)[1]` to
  store in the `"<rate_name>_value"` column. If `NULL`, the value column
  is omitted.

- k:

  optional numeric vector of length `1` or `dim(spec_den_term_array)[1]`
  to store in the `"<rate_name>_k"` column. If `NULL`, the k column is
  omitted.

## Value

A data frame containing optional `"<rate_name>_value"` and
`"<rate_name>_k"` columns, plus one `coef` and one `freq` column for
each term in `spec_den_term_array`.

## Details

Output columns follow the naming convention
`"<rate_name>_<freq_name>_<component>"`, where `<component>` is either
`"coef"` or `"freq"`. If `value` or `k` is supplied, the additional
`"<rate_name>_value"` and `"<rate_name>_k"` columns store the target
relaxation values and optional loss weights.

The second dimension of `spec_den_term_array` supplies `<freq_name>`
through its dimnames. The third dimension must have length two and
corresponds to the `coef` and `freq` components. If third-dimension
names are missing, they are assumed to be ordered as
`c("coef", "freq")`.

## Examples

``` r
spec_den_term_array <- array(
  c(0.1, 0.2, 0, 0, 0.3, 0.4, 100, 100),
  dim = c(2, 2, 2),
  dimnames = list(NULL, c("0", "2wH"), c("coef", "freq"))
)

spec_den_term_array_to_atom_relax_columns(
  spec_den_term_array = spec_den_term_array,
  rate_name = "r1",
  value = c(1.0, 2.0),
  k = c(4.0, 9.0)
)
#>   r1_value r1_k r1_0_coef r1_0_freq r1_2wH_coef r1_2wH_freq
#> 1        1    4       0.1       0.3           0         100
#> 2        2    9       0.2       0.4           0         100
```
