# fitnmr Package Overview

The functionality provided by the fitnmr package can be divided into
several categories:

## Spectrum reading, plotting, and analysis

Spectra in the NMRPipe file format can be read with
[`read_nmrpipe`](https://smith-group.github.io/fitnmr/reference/read_nmrpipe.md).
Those spectra can be plotted with
[`contour_pipe`](https://smith-group.github.io/fitnmr/reference/contour_pipe.md).
The noise level within a spectrum (or any numeric vector) can be
calculated with
[`noise_estimate`](https://smith-group.github.io/fitnmr/reference/noise_estimate.md).

## Low-level fitting and plotting

The core fitting procedure consists of a two-step process: First, the
fit input is created with
[`make_fit_input`](https://smith-group.github.io/fitnmr/reference/make_fit_input.md).
Second, the fit is executed with
[`perform_fit`](https://smith-group.github.io/fitnmr/reference/perform_fit.md).
Prior to running the fit, constraints can be added to the fit with
either
[`update_fit_bounds`](https://smith-group.github.io/fitnmr/reference/update_fit_bounds.md)
or
[`limit_omega0_by_r2`](https://smith-group.github.io/fitnmr/reference/limit_omega0_by_r2.md).

Before or after a fit has been performed, you can extract the raw,
starting, or fit spectral intensities with
[`get_spec_int`](https://smith-group.github.io/fitnmr/reference/get_spec_int.md).
Furthermore, there are convenience plotting functions for plotting 1D
([`plot_fit_1d`](https://smith-group.github.io/fitnmr/reference/plot_fit_1d.md))
or 2D
([`plot_fit_2d`](https://smith-group.github.io/fitnmr/reference/plot_fit_2d.md))
fits.

The
[`make_fit_input`](https://smith-group.github.io/fitnmr/reference/make_fit_input.md)
function takes many different parameters. To make a new fit from an
existing fit, possibly with a different set of spectra or otherwise
modified fitting parameters,
[`param_list_to_arg_list`](https://smith-group.github.io/fitnmr/reference/param_list_to_arg_list.md)
can be helpful in generating a list of parameters for
[`make_fit_input`](https://smith-group.github.io/fitnmr/reference/make_fit_input.md).

## Modifying parameter lists for fits

In fitnmr, a "parameter list" is a named list data structure that has
all the information necessary to describe a set of peaks and
interdependencies between the parameters for those peaks. It containins
three elements: `start_list` (or also `fit_list` after a fit has been
performed), `group_list`, and `comb_list`. Fitting constraints can also
be stored in `lower_list` and `upper_list`. Each of those is itself a
named list of arrays corresponding to different parameters, namely
`omega0`, `r2`, `m0`, `p0`, `p1`, and `omega0_comb`. To help manage the
values stored in those lists (particularly `omega0` and `omega0_comb`),
there are several convenience functions to select particular subsets,
including
[`omega0_param_idx`](https://smith-group.github.io/fitnmr/reference/omega0_param_idx.md)
and
[`coupling_param_idx`](https://smith-group.github.io/fitnmr/reference/coupling_param_idx.md).
Once a subset is made, the parameters can be read or changed using
[`param_values`](https://smith-group.github.io/fitnmr/reference/param_values.md).

## High-level fitting and plotting

[`fit_peak_iter`](https://smith-group.github.io/fitnmr/reference/fit_peak_iter.md)

[`param_list_to_peak_df`](https://smith-group.github.io/fitnmr/reference/param_list_to_peak_df.md),
[`plot_peak_df`](https://smith-group.github.io/fitnmr/reference/plot_peak_df.md),
[`peak_df_to_param_list`](https://smith-group.github.io/fitnmr/reference/peak_df_to_param_list.md),
[`peak_df_to_fit_input`](https://smith-group.github.io/fitnmr/reference/peak_df_to_fit_input.md)

[`fit_peak_cluster`](https://smith-group.github.io/fitnmr/reference/fit_peak_cluster.md),
[`fit_footprint`](https://smith-group.github.io/fitnmr/reference/fit_footprint.md)

[`fit_peaks`](https://smith-group.github.io/fitnmr/reference/fit_peaks.md),
[`make_param_list`](https://smith-group.github.io/fitnmr/reference/make_param_list.md)

[`spec_overlap_mat`](https://smith-group.github.io/fitnmr/reference/spec_overlap_mat.md)

## NMRPipe simulation and processing

[`ppm_to_pts`](https://smith-group.github.io/fitnmr/reference/ppm_to_pts.md),
[`whz_to_pts`](https://smith-group.github.io/fitnmr/reference/whz_to_pts.md),
[`write_nmrdraw_peak_tab`](https://smith-group.github.io/fitnmr/reference/write_nmrdraw_peak_tab.md),
[`sim_time_nd`](https://smith-group.github.io/fitnmr/reference/sim_time_nd.md),
[`nmr_pipe`](https://smith-group.github.io/fitnmr/reference/nmr_pipe.md)

## Postprocessing and assignment

[`height_assign`](https://smith-group.github.io/fitnmr/reference/height_assign.md),
[`read_nmrdraw_peak_tab`](https://smith-group.github.io/fitnmr/reference/read_nmrdraw_peak_tab.md)

## Deprecated

[`extract_params`](https://smith-group.github.io/fitnmr/reference/extract_params.md),
[`get_spec_peak_int`](https://smith-group.github.io/fitnmr/reference/get_spec_peak_int.md)

## See also

Useful links:

- <https://github.com/smith-group/fitnmr/>

- <https://smith-group.github.io/fitnmr/>

## Author

**Maintainer**: Colin Smith <colin.smith@wesleyan.edu>
