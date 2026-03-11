# Get a list of logical arrays indicating which parameters correspond to peak positions

Get a list of logical arrays indicating which parameters correspond to
peak positions

## Usage

``` r
omega0_param_idx(
  param_list,
  dims = seq_len(dim(param_list[["group_list"]][["omega0"]])[1]),
  peaks = seq_len(dim(param_list[["group_list"]][["omega0"]])[2]),
  specs = seq_len(dim(param_list[["group_list"]][["omega0"]])[3])
)
```

## Arguments

- param_list:

  parameter list

- dims:

  dimensions to include

- peaks:

  peaks to include

- specs:

  spectra to include

## Value

A named \`list\` of logical index arrays/vectors (matching
\`param_list\$group_list\`) that identify omega0-related parameters to
extract or modify.
