# Generate matrix of possible permuted assignments to individual atoms in a group

Generate matrix of possible permuted assignments to individual atoms in
a group

## Usage

``` r
unique_atom_map(permutation)
```

## Arguments

- permutation:

  single permutation matrix

  This is useful for calculating interactions between a permutation
  group and other atoms

## Examples

``` r
pdb2lum <- read_ensemble("https://files.rcsb.org/download/2LUM.pdb", proton_only=TRUE)
perm_methyl <- find_methyl_permutations(dimnames(pdb2lum)[[2]])
perm_aro <- find_aromatic_permutations(dimnames(pdb2lum)[[2]])
unique_atom_map(perm_methyl[[1]])
#>                 [,1]              [,2]              [,3]             
#>  HE1 MET A   1  " HE1 MET A   1 " " HE2 MET A   1 " " HE3 MET A   1 "
unique_atom_map(perm_aro[[1]])
#>                 [,1]              [,2]             
#>  HD1 TYR A   3  " HD1 TYR A   3 " " HD2 TYR A   3 "
#>  HE1 TYR A   3  " HE1 TYR A   3 " " HE2 TYR A   3 "
```
