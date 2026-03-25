# Open a PDB trajectory file for reading

Open a PDB trajectory file for reading

## Usage

``` r
pdb_traj_open(filename, atomids = NULL, frame_max_lines = 10000)
```

## Arguments

- filename:

  file name of `.pdb` or `.pdb.gz`

- atomids:

  character vector of atom coordinates to return matching characters
  13-27 of ATOM records

- frame_max_lines:

  maximum lines to read that must include the first frame

## Value

list structure with data necessary for reads
