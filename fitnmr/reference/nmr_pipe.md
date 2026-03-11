# Process an FID with NMRPipe

Process an FID with NMRPipe

## Usage

``` r
nmr_pipe(
  in_path,
  out_path,
  ndim = 1,
  apod = NULL,
  sp = rbind(off = 0.5, end = 1, pow = 1, c = 0.5),
  zf = rbind(auto = ""),
  ps = rbind(p0 = 0, p1 = 0, di = ""),
  ext = NULL
)
```

## Arguments

- in_path:

  input file path

- out_path:

  output file path

- ndim:

  number of dimensions

- apod:

  optional apodization argument matrix

- sp:

  optional sine-bell argument matrix

- zf:

  optional zero-fill argument matrix

- ps:

  optional phase correction argument matrix

- ext:

  optional extraction argument matrix

## Value

The integer exit status from \`system(...)\` (typically \`0\` on
success).
