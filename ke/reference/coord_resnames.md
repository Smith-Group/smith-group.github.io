# Get or set three-character residue names

Get or set three-character residue names

## Usage

``` r
coord_resnames(coord)

coord_resnames(coord) <- value
```

## Arguments

- coord:

  matrix or array with second dimension having columns 13 to 27 of the
  PDB res records

- value:

  character vector with three characters per element

## Value

Getter: character vector of three-letter residue names. Setter: modified
`coord` with updated residue names.
