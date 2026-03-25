# Calculate second-rank dipole interaction tensors

Calculate second-rank dipole interaction tensors

## Usage

``` r
pdb_traj_d(
  coord_buffer,
  nframes,
  segment_nums,
  atom_pair_mat_list,
  unit = FALSE,
  d_dir = NULL
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

- unit:

  logical indicating whether to convert to unit vectors

- d_dir:

  directory where \<segment_num\>.rds files written with calculated
  tensors

## Value

list with NULL values of length segment_nums
