# Calculate kernel weights for determining NOE sigma and rho from a dipolar autocorrelation function

Calculate kernel weights for determining NOE sigma and rho from a
dipolar autocorrelation function

## Usage

``` r
noe_dacf_kernel(
  dacf,
  dt,
  tauc,
  proton_mhz,
  terms = c("0", "omega", "2omega"),
  ntrunc = 1
)
```

## Arguments

- dacf:

  example dipolar autocorrelation function vector or the length of the
  vector

- dt:

  time interval between dacf elements in seconds

- tauc:

  isotropic tumbling time of the molecule in seconds

- proton_mhz:

  proton Larmor frequency in MHz

- terms:

  vector of terms to use in calculating the kernel

- ntrunc:

  number of trailing kernel elements over which to spread the truncated
  tail contribution

## Value

Numeric matrix with rows `sigma` and `rho` and one column per lag in the
truncated autocorrelation function.
