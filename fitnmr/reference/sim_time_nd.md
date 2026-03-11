# Simulate an FID using the NMRPipe SimTimeND function

Simulate an FID using the NMRPipe SimTimeND function

## Usage

``` r
sim_time_nd(
  peak_tab,
  fheader,
  rms = 0,
  iseed = stats::runif(1, max = .Machine$integer.max),
  file_path = NULL,
  verbose = FALSE
)
```

## Arguments

- peak_tab:

  NMRDraw peak table

- fheader:

  matrix of generalized ND parameters

- rms:

  RMS noise level

- iseed:

  random seed

- file_path:

  optional output path for the simulated FID

- verbose:

  logical indicating whether to print the command

## Value

The integer exit status from \`system2("SimTimeND", ...)\` (typically
\`0\` on success).
