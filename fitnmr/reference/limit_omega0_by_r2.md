# Add upper/lower limits based on the r2 value

Add upper/lower limits based on the r2 value

## Usage

``` r
limit_omega0_by_r2(fit_input, factor = 1.5)
```

## Arguments

- fit_input:

  fit_input structure

- factor:

  multiplier applied to r2 to set omega0 bounds

## Value

A modified \`fit_input\` list with updated \`lower_list\$omega0\` and
\`upper_list\$omega0\` bounds.

## Examples

``` r
spec_file <- system.file("extdata", "t1", "1.ft2", package = "fitnmr")
spec <- read_nmrpipe(spec_file, dim_order = "hx")
fit_input <- make_fit_input(
  list(spec),
  omega0_start = matrix(c(8.5400, 119.76), nrow = 2),
  omega0_plus = c(0.075, 0.75),
  r2_start = 4,
  m0_start = 1e9
)
fit_input$start_list[1:2]
#> $omega0
#> , , 1
#> 
#>        [,1]
#> [1,]   8.54
#> [2,] 119.76
#> 
#> 
#> $r2
#> , , 1
#> 
#>      [,1]
#> [1,]    4
#> [2,]    4
#> 
#> 
fit_input$lower_list[1]
#> $omega0
#> , , 1
#> 
#>         [,1]
#> [1,]   8.465
#> [2,] 119.010
#> 
#> 
fit_input$upper_list[1]
#> $omega0
#> , , 1
#> 
#>         [,1]
#> [1,]   8.615
#> [2,] 120.510
#> 
#> 
fit_input <- limit_omega0_by_r2(fit_input)
fit_input$lower_list[1]
#> $omega0
#> , , 1
#> 
#>            [,1]
#> [1,]   8.532498
#> [2,] 119.685968
#> 
#> 
fit_input$upper_list[1]
#> $omega0
#> , , 1
#> 
#>            [,1]
#> [1,]   8.547502
#> [2,] 119.834032
#> 
#> 
```
