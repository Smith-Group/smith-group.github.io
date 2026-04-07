# Convert steady-state NOE values to sigma cross-relaxation rates

For observed nucleus \\X\\, the steady-state heteronuclear NOE is
related to the dipolar cross-relaxation rate \\\sigma\_{HX}\\ through
\$\$ \mathrm{NOE} = 1 + \frac{\gamma_H}{\gamma_X}
\frac{\sigma\_{HX}}{R_1}. \$\$ This function rearranges that relation to
evaluate \$\$ \sigma\_{HX} = (\mathrm{NOE} - 1) R_1
\frac{\gamma_X}{\gamma_H}. \$\$

## Usage

``` r
noe_to_sigma(noe, r1, dnoe = NULL, dr1 = NULL, nucleus_x = "15N")
```

## Arguments

- noe:

  Numeric vector of steady-state heteronuclear NOE values

- r1:

  Numeric vector of longitudinal relaxation rates corresponding to `noe`

- dnoe:

  Optional numeric vector of NOE uncertainties

- dr1:

  Optional numeric vector of \\R_1\\ uncertainties

- nucleus_x:

  Character scalar observed nucleus identifier such as `"15N"` or
  `"13C"`

## Value

Numeric matrix with column `sigma`, and optional column `sigma_err` when
both error vectors are supplied

## Details

When `dnoe` and `dr1` are supplied, the uncertainty in `sigma` is
propagated under the assumption that the NOE and \\R_1\\ uncertainties
are independent: \$\$ d\sigma = \sqrt{ \left\[(\mathrm{NOE} -
1)\frac{\gamma_X}{\gamma_H} dR_1\right\]^2 + \left\[R_1
\frac{\gamma_X}{\gamma_H} d\mathrm{NOE}\right\]^2 }. \$\$

The returned numeric matrix always contains a `sigma` column and
includes `sigma_err` when both `dnoe` and `dr1` are supplied.
