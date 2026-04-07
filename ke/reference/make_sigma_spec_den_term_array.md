# Make spectral density term array for dipolar sigma cross relaxation

This function encodes the coefficients and frequencies needed for
[`a_matrix_to_relax()`](https://smith-group.github.io/ke/reference/a_matrix_to_relax.md)
to calculate the dipolar cross-relaxation rate sigma for a pair of
nuclei.

## Usage

``` r
make_sigma_spec_den_term_array(
  n_pairs,
  proton_mhz,
  nucleus_i = "1H",
  nucleus_s = nucleus_i,
  r_is_angstrom = NA_real_
)
```

## Arguments

- n_pairs:

  integer number of atom pairs

- proton_mhz:

  spectrometer proton field strength in MHz

- nucleus_i:

  character scalar giving the first nucleus, such as `"1H"`

- nucleus_s:

  character scalar giving the second nucleus. Defaults to `nucleus_i`.

- r_is_angstrom:

  optional numeric scalar internuclear distance \\r\_{IS}\\ in Angstrom.
  If `NA`, distance dependence is omitted from the coefficients.

## Value

Array with dimensions `(pairs, terms, components)`. The term dimension
is named according to the simplified frequency labels implied by
`nucleus_i` and `nucleus_s`, such as `c("0", "2wH")` for homonuclear
proton sigma or `c("wHmwN", "wHpwN")` for heteronuclear proton-nitrogen
sigma. The component dimension is named `c("coef", "freq")`.

## Details

The sigma cross-relaxation rate is defined \$\$ \sigma\_{IS} =
\frac{1}{10} d\_{IS}^2 \left( 6 J(\omega_I + \omega_S) - J(\omega_I -
\omega_S) \right) \$\$ with \$\$ d\_{IS}^2 = \left( \frac{\mu_0}{4 \pi}
\hbar \gamma_I \gamma_S r\_{IS}^{-3} \right)^2. \$\$

The returned array stores the two spectral density terms:
\$\$J(\omega_I - \omega_S) \text{ with coefficient } -\frac{1}{10}
d\_{IS}^2\$\$ \$\$J(\omega_I + \omega_S) \text{ with coefficient }
\frac{3}{5} d\_{IS}^2.\$\$

This dipolar cross-relaxation term is obtained from Solomon's
longitudinal cross coefficient \\\sigma = w_2 - w_0\\ for two unlike
spins in Solomon (1955, Eq. 15), together with the unlike-spin
transition probabilities \\w_0\\ and \\w_2\\ in Solomon (1955, Eq. 35).
The same unlike-spin longitudinal cross-relaxation term appears in
Chapter VIII, Eq. (88) of *The Principles of Nuclear Magnetism*
(Abragam, 1961).

The static magnetic field is inferred from `proton_mhz` using the proton
gyromagnetic ratio, and the Larmor frequencies of the requested nuclei
are then calculated from an internal lookup table of gyromagnetic
ratios. Supported nucleus names currently include `"1H"`, `"13C"`,
`"15N"`, `"19F"`, `"31P"`, and `"2H"`.

If `r_is_angstrom` is `NA`, the returned coefficients omit the
\\r\_{IS}^{-6}\\ factor and are therefore suitable for the distance-
dependent representation in which internuclear distance is already
encoded in the dipolar interaction amplitudes. If `r_is_angstrom` is
supplied, the returned coefficients include the \\r\_{IS}^{-6}\\ factor
explicitly and are suitable for a unit-tensor representation.

The underlying transition-probability treatment follows Solomon (1955)
[doi:10.1103/PhysRev.99.559](https://doi.org/10.1103/PhysRev.99.559) ,
which in turn builds on the rapid-motion treatment of Abragam and Pound
(1953)
[doi:10.1103/PhysRev.92.943](https://doi.org/10.1103/PhysRev.92.943) and
the dipolar correlation-function formalism of Bloembergen, Purcell, and
Pound (1948)
[doi:10.1103/PhysRev.73.679](https://doi.org/10.1103/PhysRev.73.679) .
