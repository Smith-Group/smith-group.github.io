# Create data structures for calculating sigma/rho from dipole-dipole interaction tensors

Create data structures for calculating sigma/rho from dipole-dipole
interaction tensors

## Usage

``` r
make_spec_den_data(
  ke_data,
  equiv_pair_mat,
  perm_internal = FALSE,
  sigma = NULL
)
```

## Arguments

- ke_data:

  list structure returned by
  [`make_ke_data()`](https://smith-group.github.io/ke/reference/make_ke_data.md)

- equiv_pair_mat:

  matrix with pairs of equivalent atom labels matching names of
  `ke_data$equiv_list`

- perm_internal:

  logical indicating whether to include atom pair internal to
  permutation groups

- sigma:

  optional numeric vector of cross relaxation rates

## Value

Named list of spectral-density data blocks. Each block contains atom
pairs, grouping matrices, `a` coefficients, and eigenvalue coefficients
for one pair-type combination.
