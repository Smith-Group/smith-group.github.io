# Check analytical derivatives via finite difference approximation

Check analytical derivatives via finite difference approximation

## Usage

``` r
deriv_check(func, value, dv, vdims, gdims, ...)
```

## Arguments

- func:

  function to evaluate

- value:

  first argument to pass to `func`

- dv:

  delta used to increment elements of `value`

- vdims:

  vector of dimensions that must be incremented separately

- gdims:

  vector of dimensions in gradient corresponding to `vdims`

- ...:

  additional arguments passed to `func`

## Value

difference between `gradient` attribute returned by `func` and finite
difference approximation
