# Calculate sigma from a matrix of a values

Calculate sigma from a matrix of a values

## Usage

``` r
a_matrix_to_sigma(a_matrix, lambda_prime_vec, proton_mhz, gradient = FALSE)
```

## Arguments

- a_matrix:

  matrix of a values with columns associated with eigenvalues

- lambda_prime_vec:

  eigenvalues augmented with tumbling rate

- proton_mhz:

  spectrometer proton field strength in MHz

- gradient:

  a logical value indicating whether to calculate the derivative
