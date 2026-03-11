# Inverse Fourier transform a 1D spectrum

This function aims to numerically match the NMRPipe \`FT -inv\`
function.

## Usage

``` r
nmrpipe_fti(ft)
```

## Arguments

- ft:

  list with \`int\`, \`header\`, and \`fheader\` elements containing
  spectrum data

## Value

A modified FID-like \`list\` with inverse-transformed \`int\` values and
updated \`header\`/\`fheader\` metadata.

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
fti <- nmrpipe_fti(ft)
```
