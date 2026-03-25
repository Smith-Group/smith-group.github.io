# Calculate internuclear vectors from atomic coordinates

Calculate internuclear vectors from atomic coordinates

## Usage

``` r
coord_array_to_r_array(coord_array, atom_pairs)
```

## Arguments

- coord_array:

  3D array (atoms, xyz, models) with atomic coordinates

- atom_pairs:

  matrix with each row having the names or indices of an atom pair
  (first dimension in `coord_array`)

## Value

3D array (pairs, models, xyz) with internuclear vectors. Atom pair names
follow the format `resSeq:Atom-resSeq:Atom`.
