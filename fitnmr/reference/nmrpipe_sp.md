# Apply sine-based window function to a 1D FID

This function aims to numerically match the NMRPipe \`SP\` function.

## Usage

``` r
nmrpipe_sp(fid, off = 0, end = 1, pow = 1, cval = 1, dmx = FALSE)
```

## Arguments

- fid:

  list with \`int\`, \`header\`, and \`fheader\` elements containing FID
  data

- off:

  equivalent to \`-off\` flag

- end:

  equivalent to \`-end\` flag

- pow:

  equivalent to \`-pow\` flag

- cval:

  equivalent to \`-c\` flag

- dmx:

  equivalent to \`-dmx\` flag

## Value

A modified FID \`list\` with updated \`int\`, \`header\`, and
\`fheader\` values after sine-bell apodization.

## Details

See the NMRPipe documentation:
https://www.nmrscience.com/ref/nmrpipe/sp.html

## Examples

``` r
fid_path <- system.file("extdata", "noesy1d", "11", "test.fid", package = "fitnmr")
fid <- read_nmrpipe(fid_path, complex_data = TRUE)
sp <- nmrpipe_sp(fid)
```
