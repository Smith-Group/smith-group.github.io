# Read an ensemble of PDB files

Read an ensemble of PDB files

## Usage

``` r
read_ensemble(pdb_files, model_idx = NULL, proton_only = FALSE)
```

## Arguments

- pdb_files:

  character vector paths to PDB format file(s)

- model_idx:

  vector with indices of models to read

- proton_only:

  logical indicating whether to only read hydrogen ATOM records

## Value

Numeric coordinate array. For a single input file the dimensions are
`(xyz, atoms, models)`; for multiple input files an additional trailing
file dimension is retained.
