# Create list of matrices for doing two or three atom permutations

Create list of matrices for doing two or three atom permutations

## Usage

``` r
make_atom_perm_list(atomids, atom_permutations)
```

## Arguments

- atomids:

  character vector of atom IDs (PDB columns 13-27)

- atom_permutations:

  list of permutations from
  [`find_methyl_permutations()`](https://smith-group.github.io/ke/reference/find_methyl_permutations.md)
  and
  [`find_aromatic_permutations()`](https://smith-group.github.io/ke/reference/find_aromatic_permutations.md)

## Value

List of integer matrices giving, for each supported multiplicity, the
atom index assignments under the supplied permutations.

## Examples

``` r
pdb2lum <- read_ensemble(
  system.file("extdata", "gb3", "2lum_subset.pdb.gz", package = "ke"),
  proton_only = TRUE
)
perm_methyl <- find_methyl_permutations(dimnames(pdb2lum)[[2]])
perm_aro <- find_aromatic_permutations(dimnames(pdb2lum)[[2]])
perm_list <- make_atom_perm_list(dimnames(pdb2lum)[[2]], c(perm_methyl, perm_aro))
perm_list[[3]][unlist(lapply(perm_methyl, "[", , 1)),]
#>                 [,1] [,2] [,3]
#>  HE1 MET A   1     7    8    9
#>  HE2 MET A   1     8    9    7
#>  HE3 MET A   1     9    7    8
#>  HZ1 LYS A   4    37   38   39
#>  HZ2 LYS A   4    38   39   37
#>  HZ3 LYS A   4    39   37   38
#> HD11 LEU A   5    45   46   47
#> HD12 LEU A   5    46   47   45
#> HD13 LEU A   5    47   45   46
#> HD21 LEU A   5    48   49   50
#> HD22 LEU A   5    49   50   48
#> HD23 LEU A   5    50   48   49
#> HG11 VAL A   6    54   55   56
#> HG12 VAL A   6    55   56   54
#> HG13 VAL A   6    56   54   55
#> HG21 VAL A   6    57   58   59
#> HG22 VAL A   6    58   59   57
#> HG23 VAL A   6    59   57   58
#> HG21 ILE A   7    65   66   67
#> HG22 ILE A   7    66   67   65
#> HG23 ILE A   7    67   65   66
#> HD11 ILE A   7    68   69   70
#> HD12 ILE A   7    69   70   68
#> HD13 ILE A   7    70   68   69
#>  HZ1 LYS A  10    90   91   92
#>  HZ2 LYS A  10    91   92   90
#>  HZ3 LYS A  10    92   90   91
#> HG21 THR A  11    97   98   99
#> HG22 THR A  11    98   99   97
#> HG23 THR A  11    99   97   98
#> HD11 LEU A  12   105  106  107
#> HD12 LEU A  12   106  107  105
#> HD13 LEU A  12   107  105  106
#> HD21 LEU A  12   108  109  110
#> HD22 LEU A  12   109  110  108
#> HD23 LEU A  12   110  108  109
#>  HZ1 LYS A  13   121  122  123
#>  HZ2 LYS A  13   122  123  121
#>  HZ3 LYS A  13   123  121  122
#> HG21 THR A  16   137  138  139
#> HG22 THR A  16   138  139  137
#> HG23 THR A  16   139  137  138
#> HG21 THR A  17   144  145  146
#> HG22 THR A  17   145  146  144
#> HG23 THR A  17   146  144  145
#> HG21 THR A  18   151  152  153
#> HG22 THR A  18   152  153  151
#> HG23 THR A  18   153  151  152
#>  HZ1 LYS A  19   164  165  166
#>  HZ2 LYS A  19   165  166  164
#>  HZ3 LYS A  19   166  164  165
#>  HB1 ALA A  20   169  170  171
#>  HB2 ALA A  20   170  171  169
#>  HB3 ALA A  20   171  169  170
#> HG11 VAL A  21   175  176  177
#> HG12 VAL A  21   176  177  175
#> HG13 VAL A  21   177  175  176
#> HG21 VAL A  21   178  179  180
#> HG22 VAL A  21   179  180  178
#> HG23 VAL A  21   180  178  179
#>  HB1 ALA A  23   187  188  189
#>  HB2 ALA A  23   188  189  187
#>  HB3 ALA A  23   189  187  188
#> HG21 THR A  25   200  201  202
#> HG22 THR A  25   201  202  200
#> HG23 THR A  25   202  200  201
#>  HB1 ALA A  26   205  206  207
#>  HB2 ALA A  26   206  207  205
#>  HB3 ALA A  26   207  205  206
#>  HZ1 LYS A  28   224  225  226
#>  HZ2 LYS A  28   225  226  224
#>  HZ3 LYS A  28   226  224  225
#>  HB1 ALA A  29   229  230  231
#>  HB2 ALA A  29   230  231  229
#>  HB3 ALA A  29   231  229  230
#>  HZ1 LYS A  31   251  252  253
#>  HZ2 LYS A  31   252  253  251
#>  HZ3 LYS A  31   253  251  252
#>  HB1 ALA A  34   273  274  275
#>  HB2 ALA A  34   274  275  273
#>  HB3 ALA A  34   275  273  274
#> HG11 VAL A  39   298  299  300
#> HG12 VAL A  39   299  300  298
#> HG13 VAL A  39   300  298  299
#> HG21 VAL A  39   301  302  303
#> HG22 VAL A  39   302  303  301
#> HG23 VAL A  39   303  301  302
#> HG11 VAL A  42   314  315  316
#> HG12 VAL A  42   315  316  314
#> HG13 VAL A  42   316  314  315
#> HG21 VAL A  42   317  318  319
#> HG22 VAL A  42   318  319  317
#> HG23 VAL A  42   319  317  318
#> HG21 THR A  44   334  335  336
#> HG22 THR A  44   335  336  334
#> HG23 THR A  44   336  334  335
#>  HB1 ALA A  48   356  357  358
#>  HB2 ALA A  48   357  358  356
#>  HB3 ALA A  48   358  356  357
#> HG21 THR A  49   363  364  365
#> HG22 THR A  49   364  365  363
#> HG23 THR A  49   365  363  364
#>  HZ1 LYS A  50   376  377  378
#>  HZ2 LYS A  50   377  378  376
#>  HZ3 LYS A  50   378  376  377
#> HG21 THR A  51   383  384  385
#> HG22 THR A  51   384  385  383
#> HG23 THR A  51   385  383  384
#> HG21 THR A  53   399  400  401
#> HG22 THR A  53   400  401  399
#> HG23 THR A  53   401  399  400
#> HG11 VAL A  54   405  406  407
#> HG12 VAL A  54   406  407  405
#> HG13 VAL A  54   407  405  406
#> HG21 VAL A  54   408  409  410
#> HG22 VAL A  54   409  410  408
#> HG23 VAL A  54   410  408  409
#> HG21 THR A  55   415  416  417
#> HG22 THR A  55   416  417  415
#> HG23 THR A  55   417  415  416
perm_list[[2]][unlist(lapply(perm_aro, "[", , 1)),]
#>                 [,1] [,2]
#>  HD1 TYR A   3    22   23
#>  HE1 TYR A   3    24   25
#>  HD2 TYR A   3    23   22
#>  HE2 TYR A   3    25   24
#>  HD1 PHE A  30   236  237
#>  HE1 PHE A  30   238  239
#>  HD2 PHE A  30   237  236
#>  HE2 PHE A  30   239  238
#>  HD1 TYR A  33   266  267
#>  HE1 TYR A  33   268  269
#>  HD2 TYR A  33   267  266
#>  HE2 TYR A  33   269  268
#>  HD1 TYR A  45   341  342
#>  HE1 TYR A  45   343  344
#>  HD2 TYR A  45   342  341
#>  HE2 TYR A  45   344  343
#>  HD1 PHE A  52   390  391
#>  HE1 PHE A  52   392  393
#>  HD2 PHE A  52   391  390
#>  HE2 PHE A  52   393  392
```
