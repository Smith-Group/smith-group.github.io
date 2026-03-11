# Convert a peak data frame to a parameter list

Convert a peak data frame to a parameter list

## Usage

``` r
peak_df_to_param_list(peak_df, spectra)
```

## Arguments

- peak_df:

  data frame of peak parameters

- spectra:

  list of spectra

## Value

A parameter \`list\` with \`start_list\`, \`group_list\`, and
\`comb_list\` inferred from \`peak_df\` and aligned to \`spectra\`.

## Examples

``` r
spec_file <- system.file("extdata", "t1", "1.ft2", package = "fitnmr")
spectra <- list("1.ft2" = read_nmrpipe(spec_file, dim_order = "hx"))

peak_df <- data.frame(
  peak = c(1, 2, 3, 4),
  fit = c(1, 1, 2, 2),
  f_pvalue = c(4.566421e-10, 1.118991e-05, 1.876528e-15, 5.817124e-04),
  omega0_ppm_1 = c(8.247602, 8.259565, 8.540030, 8.520232),
  omega0_ppm_2 = c(121.8666, 121.9299, 119.7611, 119.7266),
  sc_hz_1 = c(3.280589, 3.280589, 2.000000, 2.000000),
  r2_hz_1 = c(2.907218, 2.907218, 4.788566, 4.788566),
  r2_hz_2 = c(2.334497, 2.334497, 2.099646, 2.099646),
  `1.ft2` = c(824420657, 240560662, 1020008726, 89977216),
  check.names = FALSE
)

peak_df_to_param_list(peak_df, spectra)
#> $start_list
#> $start_list$omega0
#> , , 1
#> 
#>      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8]
#> [1,]   NA   NA   NA   NA   NA   NA   NA   NA
#> [2,]   NA   NA   NA   NA   NA   NA   NA   NA
#> 
#> 
#> $start_list$r2
#> , , 1
#> 
#>          [,1]     [,2]     [,3]     [,4]     [,5]     [,6]     [,7]     [,8]
#> [1,] 2.907218 2.907218 2.907218 2.907218 4.788566 4.788566 4.788566 4.788566
#> [2,] 2.334497 2.334497 2.334497 2.334497 2.099646 2.099646 2.099646 2.099646
#> 
#> 
#> $start_list$m0
#>           [,1]
#> [1,] 412210328
#> [2,] 412210328
#> [3,] 120280331
#> [4,] 120280331
#> [5,] 510004363
#> [6,] 510004363
#> [7,]  44988608
#> [8,]  44988608
#> 
#> $start_list$omega0_comb
#>                    [,1]       [,2]      [,3]       [,4]
#> omega0_ppm_1   8.247602   8.259565   8.54003   8.520232
#> omega0_ppm_2 121.866600 121.929900 119.76110 119.726600
#> sc_hz_1        3.280589   3.280589   2.00000   2.000000
#> 
#> 
#> $group_list
#> $group_list$omega0
#> , , 1
#> 
#>      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8]
#> [1,]    0    0    0    0    0    0    0    0
#> [2,]    0    0    0    0    0    0    0    0
#> 
#> 
#> $group_list$r2
#> , , 1
#> 
#>      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8]
#> [1,]    1    1    1    1    3    3    3    3
#> [2,]    2    2    2    2    4    4    4    4
#> 
#> 
#> $group_list$m0
#>      [,1]
#> [1,]    1
#> [2,]    1
#> [3,]    2
#> [4,]    2
#> [5,]    3
#> [6,]    3
#> [7,]    4
#> [8,]    4
#> 
#> $group_list$omega0_comb
#>              [,1] [,2] [,3] [,4]
#> omega0_ppm_1    1    3    5    7
#> omega0_ppm_2    2    4    6    8
#> sc_hz_1         9    9   10   10
#> 
#> 
#> $comb_list
#> $comb_list$omega0
#> , , 1
#> 
#>      [,1]         [,2]         [,3]         [,4]         [,5]        
#> [1,] data.frame,2 data.frame,2 data.frame,2 data.frame,2 data.frame,2
#> [2,] data.frame,2 data.frame,2 data.frame,2 data.frame,2 data.frame,2
#>      [,6]         [,7]         [,8]        
#> [1,] data.frame,2 data.frame,2 data.frame,2
#> [2,] data.frame,2 data.frame,2 data.frame,2
#> 
#> 
#> 
```
