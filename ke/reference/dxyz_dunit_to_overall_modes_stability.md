# Diagnose stability of overall tumbling mode weights under perturbation

Diagnose stability of overall tumbling mode weights under perturbation

## Usage

``` r
dxyz_dunit_to_overall_modes_stability(
  dxyz_vec,
  dunit_matrix,
  perturb_sd,
  n_rep = 100L,
  tol = sqrt(.Machine$double.eps)
)
```

## Arguments

- dxyz_vec:

  numeric vector with diffusion tensor principal values `c(Dx, Dy, Dz)`

- dunit_matrix:

  matrix `(pairs, 5)` of unit dipole-dipole tensor averages in the
  diffusion frame

- perturb_sd:

  standard deviation of additive Gaussian perturbations

- n_rep:

  integer number of perturbation replicates

- tol:

  numeric tolerance passed to
  [`dxyz_dunit_to_overall_modes()`](https://smith-group.github.io/ke/reference/dxyz_dunit_to_overall_modes.md)

## Value

List summarizing the stability of `a_overall_matrix` under repeated
perturbation of `dunit_matrix`.
