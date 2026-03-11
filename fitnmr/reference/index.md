# Package index

## Package overview

- [`fitnmr`](https://smith-group.github.io/fitnmr/reference/fitnmr-package.md)
  [`fitnmr-package`](https://smith-group.github.io/fitnmr/reference/fitnmr-package.md)
  : fitnmr Package Overview

## Spectrum reading, plotting, and analysis

- [`read_nmrpipe()`](https://smith-group.github.io/fitnmr/reference/read_nmrpipe.md)
  : Read NMRPipe spectrum
- [`contour_pipe()`](https://smith-group.github.io/fitnmr/reference/contour_pipe.md)
  : Plot Spectra Contours
- [`noise_estimate()`](https://smith-group.github.io/fitnmr/reference/noise_estimate.md)
  : Estimate Noise

## Low-level fitting and plotting

- [`make_fit_input()`](https://smith-group.github.io/fitnmr/reference/make_fit_input.md)
  : Prepare input data structure for peak fitting
- [`perform_fit()`](https://smith-group.github.io/fitnmr/reference/perform_fit.md)
  : Perform a fit with an input data structure
- [`update_fit_bounds()`](https://smith-group.github.io/fitnmr/reference/update_fit_bounds.md)
  : Update bounds on fitting parameters
- [`limit_omega0_by_r2()`](https://smith-group.github.io/fitnmr/reference/limit_omega0_by_r2.md)
  : Add upper/lower limits based on the r2 value
- [`get_spec_int()`](https://smith-group.github.io/fitnmr/reference/get_spec_int.md)
  : Get arrays of spectral intensities for input, starting parameters,
  and fit peaks
- [`plot_fit_1d()`](https://smith-group.github.io/fitnmr/reference/plot_fit_1d.md)
  : Plot a one dimensional peak fit
- [`plot_fit_2d()`](https://smith-group.github.io/fitnmr/reference/plot_fit_2d.md)
  : Plot a two dimensional peak fit
- [`param_list_to_arg_list()`](https://smith-group.github.io/fitnmr/reference/param_list_to_arg_list.md)
  : Convert a list of parameters for use with make_fit_input

## Modifying parameter lists for fits

- [`omega0_param_idx()`](https://smith-group.github.io/fitnmr/reference/omega0_param_idx.md)
  : Get a list of logical arrays indicating which parameters correspond
  to peak positions
- [`coupling_param_idx()`](https://smith-group.github.io/fitnmr/reference/coupling_param_idx.md)
  : Get a list of logical arrays indicating which parameters correspond
  to scalar couplings
- [`param_values()`](https://smith-group.github.io/fitnmr/reference/param_values.md)
  [`` `param_values<-`() ``](https://smith-group.github.io/fitnmr/reference/param_values.md)
  : Get/set a subset of fitting parameters specified by a list of
  logical vectors

## High-level fitting and plotting

- [`fit_peak_iter()`](https://smith-group.github.io/fitnmr/reference/fit_peak_iter.md)
  : Iterative Peak Fitting
- [`param_list_to_peak_df()`](https://smith-group.github.io/fitnmr/reference/param_list_to_peak_df.md)
  : Convert Fit to Data Frame
- [`plot_peak_df()`](https://smith-group.github.io/fitnmr/reference/plot_peak_df.md)
  : Plot Peaks from a Peak Table
- [`peak_df_to_param_list()`](https://smith-group.github.io/fitnmr/reference/peak_df_to_param_list.md)
  : Convert a peak data frame to a parameter list
- [`peak_df_to_fit_input()`](https://smith-group.github.io/fitnmr/reference/peak_df_to_fit_input.md)
  : Convert a peak data frame to fit input
- [`fit_peak_cluster()`](https://smith-group.github.io/fitnmr/reference/fit_peak_cluster.md)
  : Fit a cluster of nearby peaks starting from a seed table of chemical
  shifts
- [`fit_footprint()`](https://smith-group.github.io/fitnmr/reference/fit_footprint.md)
  : Determine the region of a spectrum containing the majority of the
  fit peaks
- [`fit_peaks()`](https://smith-group.github.io/fitnmr/reference/fit_peaks.md)
  : Fit peaks from a table of chemical shifts
- [`make_param_list()`](https://smith-group.github.io/fitnmr/reference/make_param_list.md)
  : Make a parameter list for a set of spectra and chemical shifts
- [`spec_overlap_mat()`](https://smith-group.github.io/fitnmr/reference/spec_overlap_mat.md)
  : Determine a matrix of fractional peak overlap

## High-level fitting using resonances, nuclei, and couplings tables

- [`tables_to_param_list()`](https://smith-group.github.io/fitnmr/reference/tables_to_param_list.md)
  : Convert tables with resonance/nuclei/couplings to a parameter list
- [`param_list_to_tables()`](https://smith-group.github.io/fitnmr/reference/param_list_to_tables.md)
  : Convert a parameter list into a set of tables with
  resonance/nuclei/couplings
- [`plot_sparse_1d()`](https://smith-group.github.io/fitnmr/reference/plot_sparse_1d.md)
  : Plot spectrum from 1D fit
- [`plot_sparse_2d()`](https://smith-group.github.io/fitnmr/reference/plot_sparse_2d.md)
  : Plot spectrum from 2D fit
- [`plot_resonances_1d()`](https://smith-group.github.io/fitnmr/reference/plot_resonances_1d.md)
  : Plot resonances from 1D fit
- [`plot_resonances_2d()`](https://smith-group.github.io/fitnmr/reference/plot_resonances_2d.md)
  : Plot resonances from 2D fit
- [`plot_resonances_3d()`](https://smith-group.github.io/fitnmr/reference/plot_resonances_3d.md)
  : Plot resonances from 3D fit
- [`make_map()`](https://smith-group.github.io/fitnmr/reference/make_map.md)
  : Create a sparse axis map

## NMRPipe simulation and processing

- [`infer_acquisition_time()`](https://smith-group.github.io/fitnmr/reference/infer_acquisition_time.md)
  : Infer acquisition time for each dimension
- [`infer_sweep_width()`](https://smith-group.github.io/fitnmr/reference/infer_sweep_width.md)
  : Infer original sweep width for each dimension
- [`infer_direct()`](https://smith-group.github.io/fitnmr/reference/infer_direct.md)
  : Infer which dimension was directly acquired
- [`infer_aliasing()`](https://smith-group.github.io/fitnmr/reference/infer_aliasing.md)
  : Infer which dimension was directly acquired
- [`ppm_to_pts()`](https://smith-group.github.io/fitnmr/reference/ppm_to_pts.md)
  : Convert PPM values to points
- [`whz_to_pts()`](https://smith-group.github.io/fitnmr/reference/whz_to_pts.md)
  : Convert widths in Hz into points
- [`write_nmrdraw_peak_tab()`](https://smith-group.github.io/fitnmr/reference/write_nmrdraw_peak_tab.md)
  : Write an NMRDraw formatted peak table
- [`sim_time_nd()`](https://smith-group.github.io/fitnmr/reference/sim_time_nd.md)
  : Simulate an FID using the NMRPipe SimTimeND function
- [`nmr_pipe()`](https://smith-group.github.io/fitnmr/reference/nmr_pipe.md)
  : Process an FID with NMRPipe
- [`nmrpipe_sp()`](https://smith-group.github.io/fitnmr/reference/nmrpipe_sp.md)
  : Apply sine-based window function to a 1D FID
- [`nmrpipe_zf()`](https://smith-group.github.io/fitnmr/reference/nmrpipe_zf.md)
  : Apply zero filling to a 1D FID
- [`nmrpipe_ft()`](https://smith-group.github.io/fitnmr/reference/nmrpipe_ft.md)
  : Fourier transform a 1D FID
- [`nmrpipe_fti()`](https://smith-group.github.io/fitnmr/reference/nmrpipe_fti.md)
  : Inverse Fourier transform a 1D spectrum
- [`nmrpipe_ps()`](https://smith-group.github.io/fitnmr/reference/nmrpipe_ps.md)
  : Inverse Fourier transform a 1D spectrum

## Postprocessing and assignment

- [`height_assign()`](https://smith-group.github.io/fitnmr/reference/height_assign.md)
  : Calculate mapping from assigned peak list onto an unknown peak list
- [`read_nmrdraw_peak_tab()`](https://smith-group.github.io/fitnmr/reference/read_nmrdraw_peak_tab.md)
  : Read an NMRDraw formatted peak table

## Deprecated

- [`extract_params()`](https://smith-group.github.io/fitnmr/reference/extract_params.md)
  : Extract parameters from fit object for use with make_fit_input
- [`get_spec_peak_int()`](https://smith-group.github.io/fitnmr/reference/get_spec_peak_int.md)
  : Get spectra for individual peaks

## Internal

- [`comb_vec_to_param_array()`](https://smith-group.github.io/fitnmr/reference/comb_vec_to_param_array.md)
  : Determine array of destination parameters from a source vector
- [`param_array_to_comb_vec()`](https://smith-group.github.io/fitnmr/reference/param_array_to_comb_vec.md)
  : Determine vector of source parameters from destination array via
  least squares
- [`omega0_comb_source_idx()`](https://smith-group.github.io/fitnmr/reference/omega0_comb_source_idx.md)
  : Get the first index in the omega0 array corresponding to each TRUE
  value in omega0_idx
- [`make_coupling_mat()`](https://smith-group.github.io/fitnmr/reference/make_coupling_mat.md)
  : Make a multiplet matrix with weights and scalar coupling
  coefficients
- [`split_coupling_names()`](https://smith-group.github.io/fitnmr/reference/split_coupling_names.md)
  : Split string of scalar coupling names
- [`resonance_to_param_list()`](https://smith-group.github.io/fitnmr/reference/resonance_to_param_list.md)
  : Convert data frame of resonances into a parameter list
- [`abind_list()`](https://smith-group.github.io/fitnmr/reference/abind_list.md)
  : Combine multi-dimensional arrays with lists
- [`peak_bind()`](https://smith-group.github.io/fitnmr/reference/peak_bind.md)
  : Combine parameter lists referring to different peaks
- [`spec_bind()`](https://smith-group.github.io/fitnmr/reference/spec_bind.md)
  : Combine parameter lists referring to different spectra
- [`collapse_na()`](https://smith-group.github.io/fitnmr/reference/collapse_na.md)
  : Collapse strings of repeated NAs in a vector with numeric names
- [`collapse_na_array()`](https://smith-group.github.io/fitnmr/reference/collapse_na_array.md)
  : Collapse blocks of NAs in an array with numeric dimension names
