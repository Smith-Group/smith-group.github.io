# Generate matrix of possible permuted assignments of atom pairs within a group

Generate matrix of possible permuted assignments of atom pairs within a
group

## Usage

``` r
unique_atom_pair_map(permutation)
```

## Arguments

- permutation:

  single permutation matrix

  This is useful for calculating interactions within a permutation group

## Value

List of two-row matrices, each giving one equivalence class of atom
pairs within the permutation group.

## Examples

``` r
pdb2lum <- read_ensemble(
  system.file("extdata", "gb3", "2lum_subset.pdb.gz", package = "ke"),
  proton_only = TRUE
)
perm_methyl <- find_methyl_permutations(dimnames(pdb2lum)[[2]])
perm_aro <- find_aromatic_permutations(dimnames(pdb2lum)[[2]])
unique_atom_pair_map(perm_methyl[[1]])
#> [[1]]
#>                 [,1]              [,2]              [,3]             
#>  HE1 MET A   1  " HE1 MET A   1 " " HE1 MET A   1 " " HE2 MET A   1 "
#>  HE2 MET A   1  " HE2 MET A   1 " " HE3 MET A   1 " " HE3 MET A   1 "
#> 
unique_atom_pair_map(perm_aro[[1]])
#> [[1]]
#>                 [,1]             
#>  HD1 TYR A   3  " HD1 TYR A   3 "
#>  HD2 TYR A   3  " HD2 TYR A   3 "
#> 
#> [[2]]
#>                 [,1]              [,2]             
#>  HD1 TYR A   3  " HD1 TYR A   3 " " HD2 TYR A   3 "
#>  HE1 TYR A   3  " HE1 TYR A   3 " " HE2 TYR A   3 "
#> 
#> [[3]]
#>                 [,1]              [,2]             
#>  HD1 TYR A   3  " HD1 TYR A   3 " " HD2 TYR A   3 "
#>  HE2 TYR A   3  " HE2 TYR A   3 " " HE1 TYR A   3 "
#> 
#> [[4]]
#>                 [,1]             
#>  HE1 TYR A   3  " HE1 TYR A   3 "
#>  HE2 TYR A   3  " HE2 TYR A   3 "
#> 
```
