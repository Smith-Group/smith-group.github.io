# Back-propagate energy derivative from relaxation rates to a matrix

For pair \\p\\ and internal correlation function component \\j\\, the
chain rule gives \$\$\frac{\partial E}{\partial a\_{pj}} =
\frac{\partial E}{\partial R_p} \frac{\partial R_p}{\partial
a\_{pj}}.\$\$

## Usage

``` r
a_matrix_to_relax_backprop(d_relax_d_a_matrix, d_energy_d_relax)
```

## Arguments

- d_relax_d_a_matrix:

  matrix (pairs, internal eigenvalues) from `gradient` attribute of
  [`a_matrix_to_relax()`](https://smith-group.github.io/ke/reference/a_matrix_to_relax.md)

- d_energy_d_relax:

  vector (pairs)

## Value

Matrix `(pairs, internal eigenvalues)` with `d_energy_d_a_matrix`.

## See also

[`a_matrix_to_relax()`](https://smith-group.github.io/ke/reference/a_matrix_to_relax.md)
