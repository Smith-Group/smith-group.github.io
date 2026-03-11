# Read a 1D Spectrum with DEEP Picker Parsers

Reads a 1D spectrum file using the file parsers bundled with DEEP Picker
and returns the real spectrum as a named numeric vector. The names are
the ppm values parsed from the file.

## Usage

``` r
read_spectrum_1d(path, verbose = TRUE)
```

## Arguments

- path:

  Path to a 1D spectrum file.

- verbose:

  Logical; whether to print parser progress messages.

## Value

A named numeric vector containing the real spectrum. The names are
numeric ppm values stored as character strings.

## Details

Supported formats are chosen by file extension and include NMRPipe
(\`.ft1\`), text (\`.txt\`), CSV (\`.csv\`), JSON (\`.json\`), Sparky
(\`.ucsf\`), and the DEEP Picker \`.ldw\` format.

## Examples

``` r
path <- system.file("extdata", "tyrosine.ft1", package = "deeppicker")
x <- read_spectrum_1d(path)
#> Read nmrPipe 1D  imaginary part failed.
#> Spectrum size is 32768
#> From 11.2666 to -1.72416 and step is -0.000396457
str(x)
#>  Named num [1:32768] 249386 243772 240917 239265 238422 ...
#>  - attr(*, "names")= chr [1:32768] "11.2665584392" "11.2661619817" "11.2657655243" "11.2653690669" ...
```
