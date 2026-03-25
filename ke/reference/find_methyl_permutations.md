# Find permutations to coordinates of XH3 groups

Find permutations to coordinates of XH3 groups

## Usage

``` r
find_methyl_permutations(atomids)
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
find_methyl_permutations(dimnames(pdb2lum)[[2]])
#> [[1]]
#>      A   1 HE1         A   1 HE2         A   1 HE3        
#> [1,] " HE1 MET A   1 " " HE2 MET A   1 " " HE3 MET A   1 "
#> [2,] " HE2 MET A   1 " " HE3 MET A   1 " " HE1 MET A   1 "
#> [3,] " HE3 MET A   1 " " HE1 MET A   1 " " HE2 MET A   1 "
#> 
#> [[2]]
#>      A   4 HZ1         A   4 HZ2         A   4 HZ3        
#> [1,] " HZ1 LYS A   4 " " HZ2 LYS A   4 " " HZ3 LYS A   4 "
#> [2,] " HZ2 LYS A   4 " " HZ3 LYS A   4 " " HZ1 LYS A   4 "
#> [3,] " HZ3 LYS A   4 " " HZ1 LYS A   4 " " HZ2 LYS A   4 "
#> 
#> [[3]]
#>      A   5 HD11        A   5 HD12        A   5 HD13       
#> [1,] "HD11 LEU A   5 " "HD12 LEU A   5 " "HD13 LEU A   5 "
#> [2,] "HD12 LEU A   5 " "HD13 LEU A   5 " "HD11 LEU A   5 "
#> [3,] "HD13 LEU A   5 " "HD11 LEU A   5 " "HD12 LEU A   5 "
#> 
#> [[4]]
#>      A   5 HD21        A   5 HD22        A   5 HD23       
#> [1,] "HD21 LEU A   5 " "HD22 LEU A   5 " "HD23 LEU A   5 "
#> [2,] "HD22 LEU A   5 " "HD23 LEU A   5 " "HD21 LEU A   5 "
#> [3,] "HD23 LEU A   5 " "HD21 LEU A   5 " "HD22 LEU A   5 "
#> 
#> [[5]]
#>      A   6 HG11        A   6 HG12        A   6 HG13       
#> [1,] "HG11 VAL A   6 " "HG12 VAL A   6 " "HG13 VAL A   6 "
#> [2,] "HG12 VAL A   6 " "HG13 VAL A   6 " "HG11 VAL A   6 "
#> [3,] "HG13 VAL A   6 " "HG11 VAL A   6 " "HG12 VAL A   6 "
#> 
#> [[6]]
#>      A   6 HG21        A   6 HG22        A   6 HG23       
#> [1,] "HG21 VAL A   6 " "HG22 VAL A   6 " "HG23 VAL A   6 "
#> [2,] "HG22 VAL A   6 " "HG23 VAL A   6 " "HG21 VAL A   6 "
#> [3,] "HG23 VAL A   6 " "HG21 VAL A   6 " "HG22 VAL A   6 "
#> 
#> [[7]]
#>      A   7 HG21        A   7 HG22        A   7 HG23       
#> [1,] "HG21 ILE A   7 " "HG22 ILE A   7 " "HG23 ILE A   7 "
#> [2,] "HG22 ILE A   7 " "HG23 ILE A   7 " "HG21 ILE A   7 "
#> [3,] "HG23 ILE A   7 " "HG21 ILE A   7 " "HG22 ILE A   7 "
#> 
#> [[8]]
#>      A   7 HD11        A   7 HD12        A   7 HD13       
#> [1,] "HD11 ILE A   7 " "HD12 ILE A   7 " "HD13 ILE A   7 "
#> [2,] "HD12 ILE A   7 " "HD13 ILE A   7 " "HD11 ILE A   7 "
#> [3,] "HD13 ILE A   7 " "HD11 ILE A   7 " "HD12 ILE A   7 "
#> 
#> [[9]]
#>      A  10 HZ1         A  10 HZ2         A  10 HZ3        
#> [1,] " HZ1 LYS A  10 " " HZ2 LYS A  10 " " HZ3 LYS A  10 "
#> [2,] " HZ2 LYS A  10 " " HZ3 LYS A  10 " " HZ1 LYS A  10 "
#> [3,] " HZ3 LYS A  10 " " HZ1 LYS A  10 " " HZ2 LYS A  10 "
#> 
#> [[10]]
#>      A  11 HG21        A  11 HG22        A  11 HG23       
#> [1,] "HG21 THR A  11 " "HG22 THR A  11 " "HG23 THR A  11 "
#> [2,] "HG22 THR A  11 " "HG23 THR A  11 " "HG21 THR A  11 "
#> [3,] "HG23 THR A  11 " "HG21 THR A  11 " "HG22 THR A  11 "
#> 
#> [[11]]
#>      A  12 HD11        A  12 HD12        A  12 HD13       
#> [1,] "HD11 LEU A  12 " "HD12 LEU A  12 " "HD13 LEU A  12 "
#> [2,] "HD12 LEU A  12 " "HD13 LEU A  12 " "HD11 LEU A  12 "
#> [3,] "HD13 LEU A  12 " "HD11 LEU A  12 " "HD12 LEU A  12 "
#> 
#> [[12]]
#>      A  12 HD21        A  12 HD22        A  12 HD23       
#> [1,] "HD21 LEU A  12 " "HD22 LEU A  12 " "HD23 LEU A  12 "
#> [2,] "HD22 LEU A  12 " "HD23 LEU A  12 " "HD21 LEU A  12 "
#> [3,] "HD23 LEU A  12 " "HD21 LEU A  12 " "HD22 LEU A  12 "
#> 
#> [[13]]
#>      A  13 HZ1         A  13 HZ2         A  13 HZ3        
#> [1,] " HZ1 LYS A  13 " " HZ2 LYS A  13 " " HZ3 LYS A  13 "
#> [2,] " HZ2 LYS A  13 " " HZ3 LYS A  13 " " HZ1 LYS A  13 "
#> [3,] " HZ3 LYS A  13 " " HZ1 LYS A  13 " " HZ2 LYS A  13 "
#> 
#> [[14]]
#>      A  16 HG21        A  16 HG22        A  16 HG23       
#> [1,] "HG21 THR A  16 " "HG22 THR A  16 " "HG23 THR A  16 "
#> [2,] "HG22 THR A  16 " "HG23 THR A  16 " "HG21 THR A  16 "
#> [3,] "HG23 THR A  16 " "HG21 THR A  16 " "HG22 THR A  16 "
#> 
#> [[15]]
#>      A  17 HG21        A  17 HG22        A  17 HG23       
#> [1,] "HG21 THR A  17 " "HG22 THR A  17 " "HG23 THR A  17 "
#> [2,] "HG22 THR A  17 " "HG23 THR A  17 " "HG21 THR A  17 "
#> [3,] "HG23 THR A  17 " "HG21 THR A  17 " "HG22 THR A  17 "
#> 
#> [[16]]
#>      A  18 HG21        A  18 HG22        A  18 HG23       
#> [1,] "HG21 THR A  18 " "HG22 THR A  18 " "HG23 THR A  18 "
#> [2,] "HG22 THR A  18 " "HG23 THR A  18 " "HG21 THR A  18 "
#> [3,] "HG23 THR A  18 " "HG21 THR A  18 " "HG22 THR A  18 "
#> 
#> [[17]]
#>      A  19 HZ1         A  19 HZ2         A  19 HZ3        
#> [1,] " HZ1 LYS A  19 " " HZ2 LYS A  19 " " HZ3 LYS A  19 "
#> [2,] " HZ2 LYS A  19 " " HZ3 LYS A  19 " " HZ1 LYS A  19 "
#> [3,] " HZ3 LYS A  19 " " HZ1 LYS A  19 " " HZ2 LYS A  19 "
#> 
#> [[18]]
#>      A  20 HB1         A  20 HB2         A  20 HB3        
#> [1,] " HB1 ALA A  20 " " HB2 ALA A  20 " " HB3 ALA A  20 "
#> [2,] " HB2 ALA A  20 " " HB3 ALA A  20 " " HB1 ALA A  20 "
#> [3,] " HB3 ALA A  20 " " HB1 ALA A  20 " " HB2 ALA A  20 "
#> 
#> [[19]]
#>      A  21 HG11        A  21 HG12        A  21 HG13       
#> [1,] "HG11 VAL A  21 " "HG12 VAL A  21 " "HG13 VAL A  21 "
#> [2,] "HG12 VAL A  21 " "HG13 VAL A  21 " "HG11 VAL A  21 "
#> [3,] "HG13 VAL A  21 " "HG11 VAL A  21 " "HG12 VAL A  21 "
#> 
#> [[20]]
#>      A  21 HG21        A  21 HG22        A  21 HG23       
#> [1,] "HG21 VAL A  21 " "HG22 VAL A  21 " "HG23 VAL A  21 "
#> [2,] "HG22 VAL A  21 " "HG23 VAL A  21 " "HG21 VAL A  21 "
#> [3,] "HG23 VAL A  21 " "HG21 VAL A  21 " "HG22 VAL A  21 "
#> 
#> [[21]]
#>      A  23 HB1         A  23 HB2         A  23 HB3        
#> [1,] " HB1 ALA A  23 " " HB2 ALA A  23 " " HB3 ALA A  23 "
#> [2,] " HB2 ALA A  23 " " HB3 ALA A  23 " " HB1 ALA A  23 "
#> [3,] " HB3 ALA A  23 " " HB1 ALA A  23 " " HB2 ALA A  23 "
#> 
#> [[22]]
#>      A  25 HG21        A  25 HG22        A  25 HG23       
#> [1,] "HG21 THR A  25 " "HG22 THR A  25 " "HG23 THR A  25 "
#> [2,] "HG22 THR A  25 " "HG23 THR A  25 " "HG21 THR A  25 "
#> [3,] "HG23 THR A  25 " "HG21 THR A  25 " "HG22 THR A  25 "
#> 
#> [[23]]
#>      A  26 HB1         A  26 HB2         A  26 HB3        
#> [1,] " HB1 ALA A  26 " " HB2 ALA A  26 " " HB3 ALA A  26 "
#> [2,] " HB2 ALA A  26 " " HB3 ALA A  26 " " HB1 ALA A  26 "
#> [3,] " HB3 ALA A  26 " " HB1 ALA A  26 " " HB2 ALA A  26 "
#> 
#> [[24]]
#>      A  28 HZ1         A  28 HZ2         A  28 HZ3        
#> [1,] " HZ1 LYS A  28 " " HZ2 LYS A  28 " " HZ3 LYS A  28 "
#> [2,] " HZ2 LYS A  28 " " HZ3 LYS A  28 " " HZ1 LYS A  28 "
#> [3,] " HZ3 LYS A  28 " " HZ1 LYS A  28 " " HZ2 LYS A  28 "
#> 
#> [[25]]
#>      A  29 HB1         A  29 HB2         A  29 HB3        
#> [1,] " HB1 ALA A  29 " " HB2 ALA A  29 " " HB3 ALA A  29 "
#> [2,] " HB2 ALA A  29 " " HB3 ALA A  29 " " HB1 ALA A  29 "
#> [3,] " HB3 ALA A  29 " " HB1 ALA A  29 " " HB2 ALA A  29 "
#> 
#> [[26]]
#>      A  31 HZ1         A  31 HZ2         A  31 HZ3        
#> [1,] " HZ1 LYS A  31 " " HZ2 LYS A  31 " " HZ3 LYS A  31 "
#> [2,] " HZ2 LYS A  31 " " HZ3 LYS A  31 " " HZ1 LYS A  31 "
#> [3,] " HZ3 LYS A  31 " " HZ1 LYS A  31 " " HZ2 LYS A  31 "
#> 
#> [[27]]
#>      A  34 HB1         A  34 HB2         A  34 HB3        
#> [1,] " HB1 ALA A  34 " " HB2 ALA A  34 " " HB3 ALA A  34 "
#> [2,] " HB2 ALA A  34 " " HB3 ALA A  34 " " HB1 ALA A  34 "
#> [3,] " HB3 ALA A  34 " " HB1 ALA A  34 " " HB2 ALA A  34 "
#> 
#> [[28]]
#>      A  39 HG11        A  39 HG12        A  39 HG13       
#> [1,] "HG11 VAL A  39 " "HG12 VAL A  39 " "HG13 VAL A  39 "
#> [2,] "HG12 VAL A  39 " "HG13 VAL A  39 " "HG11 VAL A  39 "
#> [3,] "HG13 VAL A  39 " "HG11 VAL A  39 " "HG12 VAL A  39 "
#> 
#> [[29]]
#>      A  39 HG21        A  39 HG22        A  39 HG23       
#> [1,] "HG21 VAL A  39 " "HG22 VAL A  39 " "HG23 VAL A  39 "
#> [2,] "HG22 VAL A  39 " "HG23 VAL A  39 " "HG21 VAL A  39 "
#> [3,] "HG23 VAL A  39 " "HG21 VAL A  39 " "HG22 VAL A  39 "
#> 
#> [[30]]
#>      A  42 HG11        A  42 HG12        A  42 HG13       
#> [1,] "HG11 VAL A  42 " "HG12 VAL A  42 " "HG13 VAL A  42 "
#> [2,] "HG12 VAL A  42 " "HG13 VAL A  42 " "HG11 VAL A  42 "
#> [3,] "HG13 VAL A  42 " "HG11 VAL A  42 " "HG12 VAL A  42 "
#> 
#> [[31]]
#>      A  42 HG21        A  42 HG22        A  42 HG23       
#> [1,] "HG21 VAL A  42 " "HG22 VAL A  42 " "HG23 VAL A  42 "
#> [2,] "HG22 VAL A  42 " "HG23 VAL A  42 " "HG21 VAL A  42 "
#> [3,] "HG23 VAL A  42 " "HG21 VAL A  42 " "HG22 VAL A  42 "
#> 
#> [[32]]
#>      A  44 HG21        A  44 HG22        A  44 HG23       
#> [1,] "HG21 THR A  44 " "HG22 THR A  44 " "HG23 THR A  44 "
#> [2,] "HG22 THR A  44 " "HG23 THR A  44 " "HG21 THR A  44 "
#> [3,] "HG23 THR A  44 " "HG21 THR A  44 " "HG22 THR A  44 "
#> 
#> [[33]]
#>      A  48 HB1         A  48 HB2         A  48 HB3        
#> [1,] " HB1 ALA A  48 " " HB2 ALA A  48 " " HB3 ALA A  48 "
#> [2,] " HB2 ALA A  48 " " HB3 ALA A  48 " " HB1 ALA A  48 "
#> [3,] " HB3 ALA A  48 " " HB1 ALA A  48 " " HB2 ALA A  48 "
#> 
#> [[34]]
#>      A  49 HG21        A  49 HG22        A  49 HG23       
#> [1,] "HG21 THR A  49 " "HG22 THR A  49 " "HG23 THR A  49 "
#> [2,] "HG22 THR A  49 " "HG23 THR A  49 " "HG21 THR A  49 "
#> [3,] "HG23 THR A  49 " "HG21 THR A  49 " "HG22 THR A  49 "
#> 
#> [[35]]
#>      A  50 HZ1         A  50 HZ2         A  50 HZ3        
#> [1,] " HZ1 LYS A  50 " " HZ2 LYS A  50 " " HZ3 LYS A  50 "
#> [2,] " HZ2 LYS A  50 " " HZ3 LYS A  50 " " HZ1 LYS A  50 "
#> [3,] " HZ3 LYS A  50 " " HZ1 LYS A  50 " " HZ2 LYS A  50 "
#> 
#> [[36]]
#>      A  51 HG21        A  51 HG22        A  51 HG23       
#> [1,] "HG21 THR A  51 " "HG22 THR A  51 " "HG23 THR A  51 "
#> [2,] "HG22 THR A  51 " "HG23 THR A  51 " "HG21 THR A  51 "
#> [3,] "HG23 THR A  51 " "HG21 THR A  51 " "HG22 THR A  51 "
#> 
#> [[37]]
#>      A  53 HG21        A  53 HG22        A  53 HG23       
#> [1,] "HG21 THR A  53 " "HG22 THR A  53 " "HG23 THR A  53 "
#> [2,] "HG22 THR A  53 " "HG23 THR A  53 " "HG21 THR A  53 "
#> [3,] "HG23 THR A  53 " "HG21 THR A  53 " "HG22 THR A  53 "
#> 
#> [[38]]
#>      A  54 HG11        A  54 HG12        A  54 HG13       
#> [1,] "HG11 VAL A  54 " "HG12 VAL A  54 " "HG13 VAL A  54 "
#> [2,] "HG12 VAL A  54 " "HG13 VAL A  54 " "HG11 VAL A  54 "
#> [3,] "HG13 VAL A  54 " "HG11 VAL A  54 " "HG12 VAL A  54 "
#> 
#> [[39]]
#>      A  54 HG21        A  54 HG22        A  54 HG23       
#> [1,] "HG21 VAL A  54 " "HG22 VAL A  54 " "HG23 VAL A  54 "
#> [2,] "HG22 VAL A  54 " "HG23 VAL A  54 " "HG21 VAL A  54 "
#> [3,] "HG23 VAL A  54 " "HG21 VAL A  54 " "HG22 VAL A  54 "
#> 
#> [[40]]
#>      A  55 HG21        A  55 HG22        A  55 HG23       
#> [1,] "HG21 THR A  55 " "HG22 THR A  55 " "HG23 THR A  55 "
#> [2,] "HG22 THR A  55 " "HG23 THR A  55 " "HG21 THR A  55 "
#> [3,] "HG23 THR A  55 " "HG21 THR A  55 " "HG22 THR A  55 "
#> 
```
