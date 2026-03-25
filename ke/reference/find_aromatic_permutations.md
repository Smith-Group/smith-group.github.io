# Find permutations to coordinates of phenylalanine and tyrosine rings

Find permutations to coordinates of phenylalanine and tyrosine rings

## Usage

``` r
find_aromatic_permutations(atomids)
```

## Arguments

- atomids:

  character vector of atom IDs (PDB columns 13-27)

## Value

A character matrix with columns corresponding to a different
permutation. Columns correspond to equivalent atoms whose coordinates
should be swapped.

## Examples

``` r
pdb2lum <- read_ensemble("https://files.rcsb.org/download/2LUM.pdb", proton_only=TRUE)
find_aromatic_permutations(dimnames(pdb2lum)[[2]])
#> [[1]]
#>      A   3 A1          A   3 A2         
#> [1,] " HD1 TYR A   3 " " HD2 TYR A   3 "
#> [2,] " HE1 TYR A   3 " " HE2 TYR A   3 "
#> [3,] " HD2 TYR A   3 " " HD1 TYR A   3 "
#> [4,] " HE2 TYR A   3 " " HE1 TYR A   3 "
#> 
#> [[2]]
#>      A  30 A1          A  30 A2         
#> [1,] " HD1 PHE A  30 " " HD2 PHE A  30 "
#> [2,] " HE1 PHE A  30 " " HE2 PHE A  30 "
#> [3,] " HD2 PHE A  30 " " HD1 PHE A  30 "
#> [4,] " HE2 PHE A  30 " " HE1 PHE A  30 "
#> 
#> [[3]]
#>      A  33 A1          A  33 A2         
#> [1,] " HD1 TYR A  33 " " HD2 TYR A  33 "
#> [2,] " HE1 TYR A  33 " " HE2 TYR A  33 "
#> [3,] " HD2 TYR A  33 " " HD1 TYR A  33 "
#> [4,] " HE2 TYR A  33 " " HE1 TYR A  33 "
#> 
#> [[4]]
#>      A  45 A1          A  45 A2         
#> [1,] " HD1 TYR A  45 " " HD2 TYR A  45 "
#> [2,] " HE1 TYR A  45 " " HE2 TYR A  45 "
#> [3,] " HD2 TYR A  45 " " HD1 TYR A  45 "
#> [4,] " HE2 TYR A  45 " " HE1 TYR A  45 "
#> 
#> [[5]]
#>      A  52 A1          A  52 A2         
#> [1,] " HD1 PHE A  52 " " HD2 PHE A  52 "
#> [2,] " HE1 PHE A  52 " " HE2 PHE A  52 "
#> [3,] " HD2 PHE A  52 " " HD1 PHE A  52 "
#> [4,] " HE2 PHE A  52 " " HE1 PHE A  52 "
#> 
```
