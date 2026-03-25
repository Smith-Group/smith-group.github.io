# Shift from one array dimension to another

Shift from one array dimension to another

## Usage

``` r
array_shift(a, n = NULL, dnames = NULL, dfrom = 1, dto = 2)
```

## Arguments

- a:

  array whose dimensions should be shifted

- n:

  integer factor to divide `dfrom` dimension and multiply `dto`
  dimension

- dnames:

  list with dimension names as alternative to specifying `n`

- dfrom:

  integer with dimension to move from

- dto:

  integer with dimension to move to (should be one greater than `dfrom`)
