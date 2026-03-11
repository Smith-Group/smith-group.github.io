# Inverse Fourier transform a 1D spectrum

This function aims to numerically match the NMRPipe \`PS\` function.

## Usage

``` r
nmrpipe_ps(ft, p0 = 0, p1 = 0)
```

## Arguments

- ft:

  list with \`int\`, \`header\`, and \`fheader\` elements containing
  spectrum data

- p0:

  equivalent to \`-p0\` flag

- p1:

  equivalent to \`-p1\` flag

## Value

A modified spectrum \`list\` with phase-corrected \`int\` values and
updated phase metadata in \`header\` and \`fheader\`.

## Details

See the NMRPipe documentation:
https://www.nmrscience.com/ref/nmrpipe/ps.html

## Examples

``` r
fid_path <- system.file("extdata", "noesy1d", "11", "test.fid", package = "fitnmr")
fid <- read_nmrpipe(fid_path, complex_data = TRUE)
sp <- nmrpipe_sp(fid)
zf <- nmrpipe_zf(sp)
ft <- nmrpipe_ft(zf)
ps <- nmrpipe_ps(ft, p0 = 129, p1 = 3)
```
