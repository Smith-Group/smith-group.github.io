# Make spectral density term array for heteronuclear R1 relaxation

This function encodes the coefficients and frequencies needed for
[`a_matrix_to_relax()`](https://smith-group.github.io/ke/reference/a_matrix_to_relax.md)
to calculate the heteronuclear longitudinal relaxation rate \\R_1\\ of
the observed spin \\I\\, including both dipole-dipole (DD) and chemical
shift anisotropy (CSA) contributions.

## Usage

``` r
make_r1_spec_den_term_array(
  n_pairs,
  proton_mhz,
  nucleus_i = "15N",
  nucleus_s = "1H",
  r_is_angstrom,
  delta_sigma_ppm
)
```

## Arguments

- n_pairs:

  integer number of atom pairs

- proton_mhz:

  spectrometer proton field strength in MHz

- nucleus_i:

  character scalar giving the observed nucleus, such as `"15N"`

- nucleus_s:

  character scalar giving the coupled partner nucleus, such as `"1H"`

- r_is_angstrom:

  numeric scalar internuclear distance \\r\_{IS}\\ in Angstrom

- delta_sigma_ppm:

  numeric scalar CSA anisotropy of the observed spin in ppm

## Value

Array with dimensions `(pairs, terms, components)`. The term dimension
is named with simplified frequency labels such as
`c("wHmwN", "wN", "wHpwN")`, and the component dimension is named
`c("coef", "freq")`.

## Details

The implemented expression is \$\$ R_1(I) = \frac{1}{10} d\_{IS}^2
\left\[ J(\omega_I - \omega_S) + 3J(\omega_I) + 6J(\omega_I + \omega_S)
\right\] + c_I^2 J(\omega_I), \$\$ where \$\$ d\_{IS}^2 = \left(
\frac{\mu_0}{4 \pi} \hbar \gamma_I \gamma_S r\_{IS}^{-3} \right)^2 \$\$
and \$\$ c_I^2 = \frac{2}{15}\omega_I^2 \Delta\sigma_I^2. \$\$ Here
\\\Delta\sigma_I\\ is the CSA anisotropy of the observed spin in
fractional units, obtained from `delta_sigma_ppm`.

The dipolar part is obtained from Solomon's longitudinal relaxation
coefficient \\p\\ for two unlike spins, \$\$p = w_0 + 2w_1 + w_2,\$\$
given in Solomon (1955, Eq. 15), together with the unlike-spin
transition probabilities \\w_0\\, \\w_1\\, and \\w_2\\ for a pure
dipole-dipole interaction in Solomon (1955, Eq. 35). Writing those
transition probabilities in spectral-density form gives the standard
dipolar contribution \$\$ R_1^{DD}(I) = \frac{1}{10} d\_{IS}^2 \left\[
J(\omega_I - \omega_S) + 3J(\omega_I) + 6J(\omega_I + \omega_S)
\right\]. \$\$ In Abragam's notation, the same dipolar longitudinal
relaxation expression appears in Chapter VIII, Eq. (88) of *The
Principles of Nuclear Magnetism* (Abragam, 1961), one notation layer
upstream in terms of the rank-specific spectral densities \\J^{(0)}\\
\\J^{(1)}\\, and \\J^{(2)}\\.

The CSA term corresponds to Abragam's treatment of shielding-anisotropy
relaxation in the same chapter, where for an axially symmetric CSA
tensor (\\\eta = 0\\) his Eq. (141) can be written in the present
notation as \$\$R_1^{CSA} = c_I^2 J(\omega_I)\$\$ with the
identification \$\$c_I^2 = (2/15)\omega_I^2 \Delta\sigma_I^2.\$\$ The
present function then adds this CSA contribution to the dipolar result.

This function uses a single spectral density function for both DD and
CSA terms. That is an effective approximation appropriate when the CSA
and dipolar interaction tensors are assumed to experience the same
underlying motional spectral density.

The underlying transition-probability treatment follows Solomon (1955)
[doi:10.1103/PhysRev.99.559](https://doi.org/10.1103/PhysRev.99.559) ,
which in turn builds on the rapid-motion treatment of Abragam and Pound
(1953)
[doi:10.1103/PhysRev.92.943](https://doi.org/10.1103/PhysRev.92.943) and
the dipolar correlation-function formalism of Bloembergen, Purcell, and
Pound (1948)
[doi:10.1103/PhysRev.73.679](https://doi.org/10.1103/PhysRev.73.679) .
