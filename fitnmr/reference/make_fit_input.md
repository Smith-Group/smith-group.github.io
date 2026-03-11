# Prepare input data structure for peak fitting

Prepare input data structure for peak fitting

## Usage

``` r
make_fit_input(
  spectra,
  omega0_start,
  omega0_plus,
  omega0_minus = omega0_plus,
  omega0_trunc = NULL,
  r2_start = NULL,
  m0_start = NULL,
  m0_region = (omega0_plus + omega0_minus)/2,
  p0_start = 0,
  p1_start = 0,
  omega0_group = NULL,
  r2_group = NULL,
  m0_group = NULL,
  p0_group = 0,
  p1_group = 0,
  omega0_comb = NULL,
  omega0_comb_start = NULL,
  omega0_comb_group = NULL,
  coupling_comb = NULL,
  resonance_names = NULL,
  nucleus_names = NULL,
  field_offsets = numeric(),
  field_start = numeric(),
  field_group = 0,
  fheader = NULL
)
```

## Arguments

- spectra:

  list of spectra or data frame with ppm and intensity columns

- omega0_start:

  starting omega0 values

- omega0_plus:

  positive omega0 bounds

- omega0_minus:

  negative omega0 bounds

- omega0_trunc:

  optional truncation bounds for omega0

- r2_start:

  starting r2 values

- m0_start:

  starting m0 values

- m0_region:

  region for m0 estimation

- p0_start:

  starting zero-order phase values

- p1_start:

  starting first-order phase values

- omega0_group:

  grouping for omega0 values

- r2_group:

  grouping for r2 values

- m0_group:

  grouping for m0 values

- p0_group:

  grouping for p0 values

- p1_group:

  grouping for p1 values

- omega0_comb:

  list of omega0 combination matrices

- omega0_comb_start:

  starting omega0 combination values

- omega0_comb_group:

  grouping for omega0 combinations

- coupling_comb:

  list of coupling combination matrices

- resonance_names:

  optional resonance names

- nucleus_names:

  optional nucleus names

- field_offsets:

  matrix of field offsets

- field_start:

  starting field values

- field_group:

  grouping for field values

- fheader:

  optional fheader matrix when spectra is a data frame

## Value

A \`fit_input\` \`list\` containing \`spec_data\`, parameter lists
(\`start_list\`, \`group_list\`, \`comb_list\`), parameter bounds
(\`lower_list\`, \`upper_list\`), naming metadata, and \`num_points\`.

## Examples

``` r
spec_file <- system.file("extdata", "t1", "1.ft2", package = "fitnmr")
spec <- read_nmrpipe(spec_file, dim_order = "hx")
fit_input <- make_fit_input(
  list(spec),
  omega0_start = matrix(c(8.5400, 119.76), nrow = 2),
  omega0_plus = c(0.075, 0.75),
  r2_start = 4,
  m0_start = 1e9
)
str(fit_input)
#> List of 10
#>  $ spec_data      :List of 1
#>   ..$ :List of 10
#>   .. ..$ ref_freq       : num [1:2] 800 81
#>   .. ..$ omega_eval     :List of 2
#>   .. .. ..$ : num [1:20] 8.61 8.6 8.6 8.59 8.58 ...
#>   .. .. ..$ : num [1:13] 120 120 120 120 120 ...
#>   .. ..$ omega_contigous:List of 2
#>   .. .. ..$ HN : num [1:20] 8.61 8.6 8.6 8.59 8.58 ...
#>   .. .. ..$ N15: num [1:13] 120 120 120 120 120 ...
#>   .. ..$ spec_p1_frac   :List of 2
#>   .. .. ..$ : num [1:20] 0.245 0.245 0.246 0.246 0.247 ...
#>   .. .. ..$ : num [1:13] 0.453 0.457 0.461 0.465 0.469 ...
#>   .. ..$ spec_nd_idx    : int [1:260, 1:2] 1 2 3 4 5 6 7 8 9 10 ...
#>   .. ..$ spec_int       : num [1:260] 612 651 848 787 749 ...
#>   .. ..$ spec_offset    : int 0
#>   .. ..$ fit_func       :List of 2
#>   .. .. ..$ :List of 2
#>   .. .. .. ..$ formulas:List of 5
#>   .. .. .. .. ..$ func       :  expression((aq * ((end - off) * pi * cos(end * pi) - exp(aq * ((0+1i) *  omega - (0+1i) * omega0 + r2)) * (end - | __truncated__
#>   .. .. .. .. ..$ domega0    :  expression((aq^2 * (-(0+1i) * (end - off) * pi * ((end - off)^2 * pi^2 -  aq^2 * (-omega + omega0 + (0+1i) * r2)^| __truncated__
#>   .. .. .. .. ..$ dr2        :  expression((aq^2 * ((end - off) * pi * ((end - off)^2 * pi^2 - aq^2 * (-omega +  omega0 + (0+1i) * r2)^2 + 2 * aq| __truncated__
#>   .. .. .. .. ..$ value      :function (omega, omega0, r2, aq, end, off)  
#>   .. .. .. .. ..$ value_deriv:function (omega, omega0, r2, aq, end, off)  
#>   .. .. .. ..$ data    :List of 3
#>   .. .. .. .. ..$ aq : num 0.0639
#>   .. .. .. .. ..$ off: num 0.5
#>   .. .. .. .. ..$ end: num 1
#>   .. .. ..$ :List of 2
#>   .. .. .. ..$ formulas:List of 5
#>   .. .. .. .. ..$ func       :  expression((aq * ((end - off) * pi * cos(end * pi) - exp(aq * ((0+1i) *  omega - (0+1i) * omega0 + r2)) * (end - | __truncated__
#>   .. .. .. .. ..$ domega0    :  expression((aq^2 * (-(0+1i) * (end - off) * pi * ((end - off)^2 * pi^2 -  aq^2 * (-omega + omega0 + (0+1i) * r2)^| __truncated__
#>   .. .. .. .. ..$ dr2        :  expression((aq^2 * ((end - off) * pi * ((end - off)^2 * pi^2 - aq^2 * (-omega +  omega0 + (0+1i) * r2)^2 + 2 * aq| __truncated__
#>   .. .. .. .. ..$ value      :function (omega, omega0, r2, aq, end, off)  
#>   .. .. .. .. ..$ value_deriv:function (omega, omega0, r2, aq, end, off)  
#>   .. .. .. ..$ data    :List of 3
#>   .. .. .. .. ..$ aq : num 0.0329
#>   .. .. .. .. ..$ off: num 0.5
#>   .. .. .. .. ..$ end: num 1
#>   .. ..$ peak_omega_eval:List of 2
#>   .. .. ..$ : num [1:20] 8.61 8.6 8.6 8.59 8.58 ...
#>   .. .. ..$ : num [1:13] 120 120 120 120 120 ...
#>   .. .. ..- attr(*, "dim")= int [1:2] 2 1
#>   .. ..$ peak_1d_sign   :List of 2
#>   .. .. ..$ : int [1:20] 1 1 1 1 1 1 1 1 1 1 ...
#>   .. .. ..$ : int [1:13] 1 1 1 1 1 1 1 1 1 1 ...
#>   .. .. ..- attr(*, "dim")= int [1:2] 2 1
#>  $ start_list     :List of 7
#>   ..$ omega0     : num [1:2, 1, 1] 8.54 119.76
#>   ..$ r2         : num [1:2, 1, 1] 4 4
#>   ..$ m0         : num [1, 1] 1e+09
#>   ..$ p0         : num [1:2, 1, 1] 0 0
#>   ..$ p1         : num [1:2, 1, 1] 0 0
#>   ..$ omega0_comb: num(0) 
#>   ..$ field      : num[0 , 1] 
#>  $ group_list     :List of 7
#>   ..$ omega0     : int [1:2, 1, 1] 1 2
#>   ..$ r2         : int [1:2, 1, 1] 1 2
#>   ..$ m0         : int [1, 1] 1
#>   ..$ p0         : int [1:2, 1, 1] 0 0
#>   ..$ p1         : int [1:2, 1, 1] 0 0
#>   ..$ omega0_comb: int(0) 
#>   ..$ field      : int[0 , 1] 
#>  $ comb_list      :List of 2
#>   ..$ omega0  :List of 2
#>   .. ..$ : NULL
#>   .. ..$ : NULL
#>   .. ..- attr(*, "dim")= int [1:3] 2 1 1
#>   ..$ coupling:List of 2
#>   .. ..$ : NULL
#>   .. ..$ : NULL
#>   .. ..- attr(*, "dim")= int [1:3] 2 1 1
#>  $ resonance_names: NULL
#>  $ nucleus_names  : NULL
#>  $ field_offsets  : num[0 , 1] 
#>  $ lower_list     :List of 7
#>   ..$ omega0     : num [1:2, 1, 1] 8.46 119.01
#>   ..$ r2         : num [1:2, 1, 1] 0 0
#>   ..$ m0         : num [1, 1] -Inf
#>   ..$ p0         : num [1:2, 1, 1] -Inf -Inf
#>   ..$ p1         : num [1:2, 1, 1] -Inf -Inf
#>   ..$ omega0_comb: num(0) 
#>   ..$ field      : num[0 , 1] 
#>  $ upper_list     :List of 7
#>   ..$ omega0     : num [1:2, 1, 1] 8.61 120.51
#>   ..$ r2         : num [1:2, 1, 1] Inf Inf
#>   ..$ m0         : num [1, 1] Inf
#>   ..$ p0         : num [1:2, 1, 1] Inf Inf
#>   ..$ p1         : num [1:2, 1, 1] Inf Inf
#>   ..$ omega0_comb: num(0) 
#>   ..$ field      : num[0 , 1] 
#>  $ num_points     : int 260
```
