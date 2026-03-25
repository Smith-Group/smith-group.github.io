# Update names of equivalent atoms

Update names of equivalent atoms

## Usage

``` r
equiv_list_name(
  equiv_list,
  restype = TRUE,
  sep = ":",
  multiatom_format = c("q", "re")
)
```

## Arguments

- equiv_list:

  list of atomid vectors where all atomids in a given vector are
  equivalent

- restype:

  logical indicating whether to prefix with one-letter residue type

- sep:

  character giving separator between residue and atom names

- multiatom_format:

  represent multiatoms with "Q" (`q`) or with regular expression (`re`)
  syntax

## Value

`equiv_list` with updated names
