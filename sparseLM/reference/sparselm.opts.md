# Sparse Levenberg-Marquardt Algorithm Options

Sparse Levenberg-Marquardt Algorithm Options

## Usage

``` r
sparselm.opts(
  mu = 0.001,
  epsilon1 = 1e-12,
  epsilon2 = 1e-12,
  epsilon3 = 1e-12,
  delta = 1e-06
)
```

## Arguments

- mu:

  scale factor for initial mu

- epsilon1:

  stopping threshold for \|\|J^T e\|\|\_inf

- epsilon2:

  stopping threshold for \|\|dp\|\|\_2

- epsilon3:

  stopping threshold for \|\|e\|\|\_2

- delta:

  step used in difference approximation to the Jacobian; if negative,
  central differences are used instead of forward differences

## Value

numeric vector of length 6 with the above options and spsolver=1
(SuiteSparse CHOLMOD)
