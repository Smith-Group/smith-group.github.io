# Find groups of numerically equivalent rates (degenerate eigenvalues)

Find groups of numerically equivalent rates (degenerate eigenvalues)

## Usage

``` r
get_rate_groups(rates, eps_factor = 0.5, eps_log10 = NULL)
```

## Arguments

- rates:

  numeric vector of rates

- eps_factor:

  rates must differ by this amount times the lowest rate

- eps_log10:

  log10(rates) must differ by this amount

## Value

Named list of integer index vectors, grouping numerically equivalent
rates.

If set, eps_log10 is used and eps_factor is bypassed.
