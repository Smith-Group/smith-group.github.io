# Read a 2D Spectrum with DEEP Picker Parsers

Reads a 2D spectrum file using the file parsers bundled with DEEP Picker
and returns the real spectrum as a numeric matrix. Row names and column
names are the ppm values parsed from the file for the indirect and
direct dimensions.

## Usage

``` r
read_spectrum_2d(path, verbose = TRUE)
```

## Arguments

- path:

  Path to a 2D spectrum file.

- verbose:

  Logical; whether to print parser progress messages.

## Value

A numeric matrix with row names and column names set to ppm values.

## Details

Supported formats are chosen by file extension and include NMRPipe
(\`.ft2\`), text (\`.txt\`), CSV (\`.csv\`), JSON (\`.json\`), Sparky
(\`.ucsf\`), and the DEEP Picker \`.ldw\` format.

## Examples

``` r
path <- system.file("extdata", "mfap.ft2", package = "deeppicker")
x <- read_spectrum_2d(path)
str(x)
#>  num [1:256, 1:704] -48128 -16318 -77824 -123162 -61511 ...
#>  - attr(*, "dimnames")=List of 2
#>   ..$ : chr [1:256] "135.094217752" "134.977012911" "134.85980807" "134.742603229" ...
#>   ..$ : chr [1:704] "10.999283528" "10.9914603075" "10.983637087" "10.9758138666" ...
```
