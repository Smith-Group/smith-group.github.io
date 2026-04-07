# Calculate relaxation rates from spectral density functions with internal and overall motion

Calculate per-pair relaxation rates by combining internal and overall
motion into a spectral density function and summing the resulting
spectral density terms with user-supplied coefficients.

## Usage

``` r
a_matrix_to_relax(
  a_int_matrix,
  lambda_int_vec,
  a_overall_matrix,
  lambda_overall_vec,
  spec_den_term_array,
  gradient = FALSE
)
```

## Arguments

- a_int_matrix:

  (pairs, eigenvalues) matrix of internal motion amplitudes

- lambda_int_vec:

  internal motion eigenvalues associated with a_int_matrix columns

- a_overall_matrix:

  (pairs, eigenvalues) matrix of overall rotational diffusion amplitudes

- lambda_overall_vec:

  overall rotational diffusion eigenvalues associated with
  a_overall_matrix columns

- spec_den_term_array:

  array `(pairs, terms, components)` with spectral-density coefficients
  in component 1 and frequencies in component 2

- gradient:

  a logical value indicating whether to calculate the derivative

## Value

Numeric vector of relaxation rates, one value per atom pair.

## Details

For pair \\p\\, this function evaluates \$\$R_p = \sum_t c\_{pt}
J_p(\omega\_{pt})\$\$ where \\t\\ indexes the supplied spectral density
terms, with coefficients \\c\_{pt}\\ and frequencies \\\omega\_{pt}\\
from `spec_den_term_array`. The spectral density is calculated as
\$\$J_p(\omega) = -\sum_i \sum_j a^{\mathrm{int}}\_{pj}
a^{\mathrm{overall}}\_{pi}
\frac{\lambda^{\prime}\_{ij}}{(\lambda^{\prime}\_{ij})^2 + \omega^2}\$\$
with combined decay rates \$\$\lambda^{\prime}\_{ij} =
\lambda^{\mathrm{int}}\_j + \lambda^{\mathrm{overall}}\_i.\$\$ In the
spectral density summation, the minus sign reflects the use of negative
decay eigenvalues.

## See also

[`a_matrix_to_relax_backprop()`](https://smith-group.github.io/ke/reference/a_matrix_to_relax_backprop.md)
