# Calculate second-rank dipolar autocorrelation functions

Calculate second-rank dipolar autocorrelation functions

## Usage

``` r
pdb_traj_dacf(
  coord_buffer,
  nframes,
  segment_nums,
  atom_pair_mat_list,
  radial_only = FALSE,
  dacf_dir = NULL
)
```

## Arguments

- coord_buffer:

  3D array (frames, xyz, atoms) with nframes\*(2+length(segment_nums))
  frames

- nframes:

  number of trajectory frames per segment

- segment_nums:

  segment numbers for the middle of the buffer

- atom_pair_mat_list:

  list of matrices (pairs, 2)

- radial_only:

  logical indicating only radial fluctuation should be accounted for

- dacf_dir:

  directory where \<segment_num\>.rds files written with calculated DACF

## Value

list with NULL values of length segment_nums
