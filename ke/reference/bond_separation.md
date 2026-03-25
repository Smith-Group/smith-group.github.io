# Calculate bond distances between a set of atoms

Calculate bond distances between a set of atoms

## Usage

``` r
bond_separation(coord_mat, depth = 4)
```

## Arguments

- coord_mat:

  3xN matrix with a column for every atom

- depth:

  maximum bond distance to calculate

## Value

NxN matrix with bond distances between atoms (or NA if not calculated)
