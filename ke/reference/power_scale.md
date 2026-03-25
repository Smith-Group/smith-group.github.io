# Scale real or back calculated values towards zero by taking a power

Scale real or back calculated values towards zero by taking a power

## Usage

``` r
power_scale(x, p)
```

## Arguments

- x:

  numerical values to be rescaled

- p:

  numeric power to raise the values to, usually 1 or less

## Value

\$\$ ( ( \|x\| + 1 )^p - 1 ) \operatorname{sgn}(x) \$\$
