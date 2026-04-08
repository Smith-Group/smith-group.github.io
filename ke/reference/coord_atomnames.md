# Get or set four-character atom names

Get or set four-character atom names

## Usage

``` r
coord_atomnames(coord)

coord_atomnames(coord) <- value
```

## Arguments

- coord:

  matrix or array with second dimension having columns 13 to 27 of the
  PDB ATOM records

- value:

  character vector with four characters per element

## Value

Getter: character vector of four-character atom names. Setter: modified
`coord` with updated atom names.
