# Get or set residue sequence number

Get or set residue sequence number

## Usage

``` r
coord_resseq(coord)

coord_resseq(coord) <- value
```

## Arguments

- coord:

  matrix or array with second dimension having columns 13 to 27 of the
  PDB ATOM records

- value:

  integer or character vector with no more than four digits

## Value

Getter: integer vector of residue sequence numbers. Setter: modified
`coord` with updated residue sequence numbers.
