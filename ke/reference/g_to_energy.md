# Calculate restraint energy from group norm squared values

Calculate restraint energy from group norm squared values

## Usage

``` r
g_to_energy(g, g0, k = 1, gradient = FALSE)
```

## Arguments

- g:

  current group norm squared values

- g0:

  target group norm squared values

- k:

  force constant

- gradient:

  a logical value indicating whether to calculate the derivative

## Value

restraint energy calculated using \\k\*(g-g0)^2\\
