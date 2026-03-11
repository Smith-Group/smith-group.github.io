# Convert PPM values to points

Convert PPM values to points

## Usage

``` r
ppm_to_pts(ppm_mat, fheader)
```

## Arguments

- ppm_mat:

  matrix of ppm values

- fheader:

  matrix of generalized ND parameters

## Value

A numeric matrix of point indices with the same dimensions as
\`ppm_mat\`, with column names converted from \`\*\_PPM\` to
\`\*\_AXIS\`.
