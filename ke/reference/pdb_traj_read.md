# Read coordinates from the trajectory

Read coordinates from the trajectory

## Usage

``` r
pdb_traj_read(traj_data, nframes = 1000, check_atomids = TRUE)
```

## Arguments

- traj_data:

  list structure with data necessary for reads

- nframes:

  number of frames to read from the trajectory

- check_atomids:

  check whether read atomids equal those expected (taking a performance
  hit)

## Value

3D array (xyz, frames, atoms) with atomic coordinates
