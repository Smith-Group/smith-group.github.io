# Convert between one and three letter residue names

Convert between one and three letter residue names

## Usage

``` r
aa1_to_aa3

aa3_to_aa1
```

## Format

An object of class `character` of length 20.

An object of class `character` of length 20.

## Value

Named character vector mapping one-letter and three-letter amino-acid
residue codes.

## Examples

``` r
aa1_to_aa3["W"]
#>     W 
#> "TRP" 
aa1_to_aa3[c("W", "F", "Y")]
#>     W     F     Y 
#> "TRP" "PHE" "TYR" 

aa3_to_aa1["TRP"]
#> TRP 
#> "W" 
aa3_to_aa1[c("TRP", "PHE", "TYR")]
#> TRP PHE TYR 
#> "W" "F" "Y" 
```
