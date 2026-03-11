# Create a sparse axis map

Create a sparse axis map

## Usage

``` r
make_map(
  x,
  max_spacing = 0.125,
  new_spacing = 0.025,
  starts = NULL,
  ends = NULL
)
```

## Arguments

- x:

  numeric vector or array used to define the sparse axis

- max_spacing:

  maximum spacing between segments before inserting a gap

- new_spacing:

  spacing used for the inserted gap

- starts:

  optional numeric vector of segment start positions

- ends:

  optional numeric vector of segment end positions

## Value

A two-column numeric matrix mapping original coordinates (column 1) to
sparse-axis coordinates (column 2), with \`starts\` and \`ends\`
attributes giving segment boundaries.
