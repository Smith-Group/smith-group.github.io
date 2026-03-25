# Convert a matrix of coordinates into PDB formatted atom lines

Make PDB ATOM lines from a 3xN matrix of coordinates

## Usage

``` r
coord_to_atom_lines(coord)
```

## Arguments

- coord:

  3xN matrix with a column for every atom

## Value

a character vector with the PDB ATOM lines

## Details

The names of the columns are expected to correspond to columns 13 to 27
of the PDB atom records.
