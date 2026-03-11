# Make a parameter list for a set of spectra and chemical shifts

Make a parameter list for a set of spectra and chemical shifts

## Usage

``` r
make_param_list(
  spec_list,
  cs_mat,
  fit_prev = NULL,
  r2_start = 5,
  m0_start = 1,
  sc_start = NULL,
  same_r2 = FALSE,
  same_coupling = FALSE
)
```

## Arguments

- spec_list:

  list of spectra

- cs_mat:

  matrix of chemical shifts

- fit_prev:

  optional previous fit parameters

- r2_start:

  starting r2 values

- m0_start:

  starting m0 values

- sc_start:

  starting scalar coupling values

- same_r2:

  logical indicating whether to tie r2 across dimensions

- same_coupling:

  logical indicating whether to tie coupling across dimensions

## Value

A parameter \`list\` with \`start_list\`, \`group_list\`, and
\`comb_list\` components that can be passed to \`make_fit_input()\`.
