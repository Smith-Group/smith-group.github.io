# Convert atom-relax columns into a named list of spectral-density term arrays

Reconstruct all rate blocks in an `*_atom_relax.csv`-style data frame as
a named list. Each list element contains both the optional target
relaxation values and the corresponding spectral-density term array for
one rate.

## Usage

``` r
atom_relax_df_to_spec_den_term_array_list(atom_relax_df)
```

## Arguments

- atom_relax_df:

  data frame containing one or more atom-relax rate blocks

## Value

Named list whose elements are the return values of
[`atom_relax_columns_to_spec_den_term_array()`](https://smith-group.github.io/ke/reference/atom_relax_columns_to_spec_den_term_array.md).
Each element is itself a list with entries `value`, optional `k`, and
`spec_den_term_array`.

## Details

Rate names are discovered automatically from columns ending in `_value`,
`_k`, `_coef`, or `_freq`. Parsing proceeds from the right, so rate
names may contain underscores. Term-frequency names must not contain
underscores and must be paired as `<freq_name>_coef` and
`<freq_name>_freq`.

## Examples

``` r
atom_relax_df <- data.frame(
  r1_value = c(1.0, 2.0),
  r1_k = c(4.0, 9.0),
  r1_0_coef = c(0.1, 0.2),
  r1_0_freq = c(0, 0),
  r2_0_coef = c(0.3, 0.4),
  r2_0_freq = c(10, 10),
  check.names = FALSE
)

atom_relax_df_to_spec_den_term_array_list(atom_relax_df)
#> $r1
#> $r1$value
#> [1] 1 2
#> 
#> $r1$k
#> [1] 4 9
#> 
#> $r1$spec_den_term_array
#> , , coef
#> 
#>        0
#> [1,] 0.1
#> [2,] 0.2
#> 
#> , , freq
#> 
#>      0
#> [1,] 0
#> [2,] 0
#> 
#> 
#> 
#> $r2
#> $r2$value
#> NULL
#> 
#> $r2$k
#> NULL
#> 
#> $r2$spec_den_term_array
#> , , coef
#> 
#>        0
#> [1,] 0.3
#> [2,] 0.4
#> 
#> , , freq
#> 
#>       0
#> [1,] 10
#> [2,] 10
#> 
#> 
#> 
```
