# Apply a function to a rolling buffer of trajectory frames

Apply a function to a rolling buffer of trajectory frames

## Usage

``` r
pdb_traj_apply(traj_data, FUN, nframes = 1000, nsegments = 10, skip = 1, ...)
```

## Arguments

- traj_data:

  list structure with data necessary for reads

- FUN:

  function that takes parameters coord_buffer, nframes, and segment_nums
  and returns a list with element for each segment

- nframes:

  number of trajectory frames per segment

- nsegments:

  number of segments passed to FUN

- skip:

  number of frames to skip that are included in the first buffer region

- ...:

  additional arguments passed to FUN

## Value

list concatenating returns of all the FUN calls
