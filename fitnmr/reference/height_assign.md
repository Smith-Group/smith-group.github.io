# Calculate mapping from assigned peak list onto an unknown peak list

This uses a greedy algorithm. It iterates over the unknown peaks in
order of decreasing height and assigns each unknown to the closest
assigned peak within a distance determined by the thresh parameter, as
long as that peak wasn't already assigned.

## Usage

``` r
height_assign(assigned, unknown, thresh = 0.01)
```

## Arguments

- assigned:

  two column matrix with assigned peak chemical shifts

- unknown:

  three column matrix with unknown peak chemical shifts and heights

- thresh:

  maximum distance (as a fraction of the two chemical shift ranges)

## Value

An integer vector of length \`nrow(assigned)\` giving matched row
indices in \`unknown\` (or \`NA\` when unmatched). The \`thresh\`
attribute stores the effective distance thresholds in each dimension.
