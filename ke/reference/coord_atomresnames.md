# Get or set atom/residue name pairs

Get or set atom/residue name pairs

## Usage

``` r
coord_atomresnames(coord)

coord_atomresnames(coord) <- value
```

## Arguments

- coord:

  matrix or array with second dimension having columns 13 to 27 of the
  PDB ATOM records

- value:

  character vector with eight characters per element (1-4: atom name,
  6-8: residue name)
