# Determine whether an atom is rapidly exchangeable at neutral pH

Determine whether an atom is rapidly exchangeable at neutral pH

## Usage

``` r
coord_rapidly_exchangeable(coord, amber = FALSE)
```

## Arguments

- coord:

  matrix or array with second dimension having columns 13 to 27 of the
  PDB ATOM records

- amber:

  logical indicating whether atom names are from AMBER force field

## Value

Logical vector with one value per atom identifier in `coord`, indicating
whether the proton is treated as rapidly exchangeable.
