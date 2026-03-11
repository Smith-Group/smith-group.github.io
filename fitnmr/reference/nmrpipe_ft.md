# Fourier transform a 1D FID

This function aims to numerically match the NMRPipe \`FT\` function.

## Usage

``` r
nmrpipe_ft(fid)
```

## Arguments

- fid:

  list with \`int\`, \`header\`, and \`fheader\` elements containing FID
  data

## Value

A transformed spectrum \`list\` with updated \`int\`, \`ppm\`,
\`header\`, and \`fheader\` fields.

## Details

See the NMRPipe documentation:
https://www.nmrscience.com/ref/nmrpipe/ft.html

## Examples

``` r
fid_path <- system.file("extdata", "noesy1d", "11", "test.fid", package = "fitnmr")
fid <- read_nmrpipe(fid_path, complex_data = TRUE)
sp <- nmrpipe_sp(fid)
zf <- nmrpipe_zf(sp)
ft <- nmrpipe_ft(zf)
```
