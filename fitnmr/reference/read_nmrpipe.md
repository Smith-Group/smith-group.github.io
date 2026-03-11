# Read NMRPipe spectrum

This function reads 1D-4D spectra stored in the NMRPipe format.

## Usage

``` r
read_nmrpipe(inFormat, dim_order = NULL, complex_data = FALSE)
```

## Arguments

- inFormat:

  character with file name or format for multiple files

- dim_order:

  integer vector used to reorder dimensions or character specifying

- complex_data:

  logical value indicating whether complex data should be read

## Value

a named list with four elements:

- int:

  multidimensional array with spectrum intensities (ppm values are given
  in the dimnames)

- ppm:

  list of numeric vectors giving the ppm values associated with each int
  array dimension

- fheader:

  matrix with dimension-specific header information

- header:

  numeric vector with the complete header contents

The `fheader` row definitions are as follows (taken from NMRPipe
fdatp.h):

|          |                                        |
|----------|----------------------------------------|
| Row Name | Description                            |
| SIZE     | Number of points in dimension          |
| APOD     | Current valid time-domain size         |
| SW       | Sweep Width, Hz                        |
| ORIG     | Axis Origin (Last Point), Hz           |
| OBS      | Obs Freq, MHz                          |
| FTFLAG   | 1=Freq Domain 0=Time Domain            |
| QUADFLAG | Data Type Code (See Below)             |
| UNITS    | Axis Units Code (See Below)            |
| P0       | Zero Order Phase, Degrees              |
| P1       | First Order Phase, Degrees             |
| CAR      | Carrier Position, PPM                  |
| CENTER   | Point Location of Zero Freq            |
| AQSIGN   | Sign adjustment needed for FT          |
| APODCODE | Window function used                   |
| APODQ1   | Window parameter 1                     |
| APODQ2   | Window parameter 2                     |
| APODQ3   | Window parameter 3                     |
| C1       | Add 1.0 to get First Point Scale       |
| ZF       | Negative of Zero Fill Size             |
| X1       | Extract region origin, if any, pts     |
| XN       | Extract region endpoint, if any, pts   |
| OFFPPM   | Additional PPM offset (for alignment)  |
| FTSIZE   | Size of data when FT performed         |
| TDSIZE   | Original valid time-domain size        |
| LB       | Extra Exponential Broadening, Hz       |
| GB       | Extra Gaussian Broadening, Hz          |
| GOFF     | Offset for Gaussian Broadening, 0 to 1 |
| OBSMID   | Original Obs Freq before 0.0ppm adjust |

In addition several rows contain information inferred from the header
data:

|          |                                       |
|----------|---------------------------------------|
| Row Name | Description                           |
| aq_s     | Acquisition time, seconds             |
| sw_ppm   | Original Sweep Width, PPM             |
| direct   | Direct (1) or indirect (0) dimension  |
| alias    | Aliasing (0/1) with inversion (-1)    |
| mag      | Magnitude mode (direct from FDMCFLAG) |

## Details

For three and four dimensional datasets, the spectral data is often
spread across multiple files. To read those, inFormat should be a
[`sprintf`](https://rdrr.io/r/base/sprintf.html)-style string that
describes how the files are named. For instance, if the files are named
001.ft3, 002.ft3, etc., then `inFormat` should be `"%03i.ft3"`. If there
is no zero-padding, as in this case, 0 should be omitted from the
format. If there are fewer digits, then the first 3 should be changed
accordingly.

The default 2D NMRPipe scripts only have a single transpose ("TP")
command, leaving the the indirect dimension as the first dimension in
the resulting array. The 2D plotting functions in `fitnmr` usually plot
this first dimension along the x-axis, which will make for generally
non-standard contour plots. Furthermore, when peak fitting is employed,
this will also be the first dimension. To fix this, you can change the
spectral order with the `dim_order` parameter. The order of the
dimensions should be specified in the same way that would be done for
[`aperm`](https://rdrr.io/r/base/aperm.html). Alternatively, you can
specify a character argument to have `fitnmr` attempt to automatically
detect and correct the array order. The only currently supported type is
`"hx"`, which will put the dimension with the greatest observe frequency
first.

This function is partly based on the pipe2rnmr function from rNMR.

## Examples

``` r
spec_file <- system.file("extdata", "t1", "1.ft2", package="fitnmr")
spec <- read_nmrpipe(spec_file, dim_order="hx")
str(spec)
#> List of 4
#>  $ int    : num [1:66, 1:45] 1243 1033 2060 2653 2102 ...
#>   ..- attr(*, "dimnames")=List of 2
#>   .. ..$ HN : chr [1:66] "8.6770160099608" "8.66967763204871" "8.66233925413663" "8.65500087622454" ...
#>   .. ..$ N15: chr [1:45] "124.032918497401" "123.917245763118" "123.801573028835" "123.685900294552" ...
#>  $ ppm    :List of 2
#>   ..$ HN : num [1:66] 8.68 8.67 8.66 8.66 8.65 ...
#>   ..$ N15: num [1:45] 124 124 124 124 124 ...
#>  $ fheader: num [1:34, 1:2] 66 24 387 6558 800 ...
#>   ..- attr(*, "dimnames")=List of 2
#>   .. ..$ : chr [1:34] "SIZE" "APOD" "SW" "ORIG" ...
#>   .. ..$ : chr [1:2] "HN" "N15"
#>  $ header : Named num [1:512] 0.00 4.01e+09 2.35 0.00 0.00 ...
#>   ..- attr(*, "names")= chr [1:512] "FDMAGIC" "FDFLTFORMAT" "FDFLTORDER" "" ...
```
