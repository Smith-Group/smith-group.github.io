# Apply zero filling to a 1D FID

This function aims to numerically match the NMRPipe \`ZF\` function.

## Usage

``` r
nmrpipe_zf(fid, zf = 1, pad = NULL, size = NULL, auto = FALSE)
```

## Arguments

- fid:

  list with \`int\`, \`header\`, and \`fheader\` elements containing FID
  data

- zf:

  equivalent to \`-zf\` flag

- pad:

  equivalent to \`-pad\` flag

- size:

  equivalent to \`-size\` flag

- auto:

  equivalent to \`-auto\` flag

## Value

A modified FID \`list\` with zero-filled \`int\` data and updated
\`header\`/\`fheader\` metadata.

## Details

See the NMRPipe documentation:
https://www.nmrscience.com/ref/nmrpipe/zf.html

## Examples

``` r
fid_path <- system.file("extdata", "noesy1d", "11", "test.fid", package = "fitnmr")
fid <- read_nmrpipe(fid_path, complex_data = TRUE)
sp <- nmrpipe_sp(fid)
zf <- nmrpipe_zf(sp)
```
