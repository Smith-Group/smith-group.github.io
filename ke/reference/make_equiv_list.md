# Create list of equivalent atoms

Create list of equivalent atoms

## Usage

``` r
make_equiv_list(atomids, permutations)
```

## Arguments

- atomids:

  character vector of atom IDs (PDB columns 13-27)

- permutations:

  list of permutations from
  [`find_methyl_permutations()`](https://smith-group.github.io/ke/reference/find_methyl_permutations.md)
  and
  [`find_aromatic_permutations()`](https://smith-group.github.io/ke/reference/find_aromatic_permutations.md)

## Value

list of atomid vectors where all atomids in a given vector are
equivalent
