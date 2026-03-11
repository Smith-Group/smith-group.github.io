# Get a list of logical arrays indicating which parameters correspond to scalar couplings

Get a list of logical arrays indicating which parameters correspond to
scalar couplings

## Usage

``` r
coupling_param_idx(param_list, comb_idx_offset = 0)
```

## Arguments

- param_list:

  parameter list

- comb_idx_offset:

  offset for combination index mapping

## Value

A named \`list\` of logical index arrays/vectors (matching
\`param_list\$group_list\`) that identify scalar-coupling parameters in
\`omega0_comb\`.
