# Make spectral density term array for proton-proton cross relaxation

This helper encodes the coefficients and frequencies needed for
[`a_matrix_to_relax()`](https://smith-group.github.io/ke/reference/a_matrix_to_relax.md)
to calculate the homonuclear cross-relaxation rate sigma.

## Usage

``` r
make_sigma_spec_den_term_array(n_pairs, proton_mhz)
```

## Arguments

- n_pairs:

  integer number of atom pairs

- proton_mhz:

  spectrometer proton field strength in MHz

## Value

Array with dimensions `(pairs, terms, components)`. The term dimension
is named `c("0", "2wH")` and the component dimension is named
`c("coef", "freq")`.

## Details

Following the notation of Peter (2001)
[doi:10.1023/a:1011241030461](https://doi.org/10.1023/a%3A1011241030461)
, the sigma cross-relaxation rate is defined \$\$\sigma = \frac{1}{10}
K^2 \left( 3 J(2 \omega_H) - \frac{1}{2} J(0) \right)\$\$ \$\$K =
\frac{\mu_0}{4 \pi} \hbar \gamma_H^2\$\$

The returned array stores the two spectral density terms: \$\$J(0)
\text{ with coefficient } -\frac{1}{20} K^2\$\$ \$\$J(2 \omega_H) \text{
with coefficient } \frac{3}{10} K^2.\$\$
