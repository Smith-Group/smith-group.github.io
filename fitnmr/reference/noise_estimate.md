# Estimate Noise

Estimate properties of noise by fitting a Gaussian to a histogram of
intensities

## Usage

``` r
noise_estimate(
  x,
  height = TRUE,
  thresh = 10,
  plot_distributions = TRUE,
  peak_intensities = NULL
)
```

## Arguments

- x:

  numeric values for which to estimate noise.

- height:

  logical indicating whether to use Gaussian function whose area is not
  fixed at one because of an additional height scaling factor.

- thresh:

  numeric value specifying the factor by which to multiply the standard
  deviation to determine the threshold away from the mean value within
  which to include values for the next iteration and final histogram for
  fitting.

- plot_distributions:

  logical indicating whether to plot the distribution and Gaussian fit
  used to estimate the noise.

- peak_intensities:

  numeric values of peak intensities to determine the signal to noise.

## Value

a named numeric vector with values:

- mean:

  mean value from the Gaussian fit

- mu:

  standard deviation from the Gaussian fit

- h:

  height of Gaussian fit (optional depending on value of `height`
  parameter)

- max:

  maximum value of `x`

## Details

This function estimates noise using iterative calculation of the mean
and standard deviation, followed by fitting a Gaussian function to a
histogram of the values within a range determined at the end of the
iterations.

The iterative algorithm first calculates the mean and standard deviation
of the values in `x`. In the next iteration, only points within `thresh`
times the standard deviation of the mean value are used for calculating
a new mean and standard deviation. This is repeated 20 times. A
histogram with 512 bins is then computed within a range determined from
the final mean and standard deviation. The returned parameters are based
on a Gaussian fit to this histogram.

## Examples

``` r
spec_file <- system.file("extdata", "t1", "1.ft2", package="fitnmr")
spec <- read_nmrpipe(spec_file, dim_order="hx")
noise_estimate(spec$int)

#>          mu       sigma         max 
#>    928.5165   1097.9119 404348.2812 
```
