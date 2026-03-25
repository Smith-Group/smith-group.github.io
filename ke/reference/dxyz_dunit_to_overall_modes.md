# Calculate overall tumbling modes from diffusion tensor principal values

This helper constructs the overall tumbling factor for use in
[`a_matrix_to_relax()`](https://smith-group.github.io/ke/reference/a_matrix_to_relax.md)
from the rank-2 rotational diffusion generator in the tesseral basis
\\(Y\_{2,0}, Y\_{2,2}^{c}, Y\_{2,1}^{c}, Y\_{2,1}^{s}, Y\_{2,2}^{s})\\.

## Usage

``` r
dxyz_dunit_to_overall_modes(
  dxyz_vec,
  dunit_a_matrix,
  dunit_b_matrix = NULL,
  s2_min = 1e-04,
  tol = sqrt(.Machine$double.eps)
)
```

## Arguments

- dxyz_vec:

  numeric vector with diffusion tensor principal values `c(Dx, Dy, Dz)`

- dunit_a_matrix:

  matrix `(pairs, 5)` of unit dipole-dipole tensor averages for vector A
  in the diffusion frame

- dunit_b_matrix:

  optional matrix `(pairs, 5)` of unit dipole-dipole tensor averages for
  vector B in the diffusion frame. If `NULL`, the autocorrelation case
  is assumed and `dunit_a_matrix` is used for both inputs.

- s2_min:

  numeric threshold below which anisotropic directional weights are
  replaced by their limiting fallback values. Defaults to `1e-4` as a
  conservative choice that is also intended to be suitable for later
  single-precision implementations.

- tol:

  numeric tolerance used to collapse degenerate overall tumbling modes

## Value

List with elements `a_overall_matrix` and `lambda_overall_vec`. Equal
overall decay rates are collapsed so the number of columns is the
minimum needed to represent isotropic, axially symmetric, or fully
anisotropic diffusion. The current implementation regularizes the
autocorrelation case only.

## Details

Let \\(D_x, D_y, D_z)\\ denote the principal values of the rotational
diffusion tensor in the diffusion-frame principal-axis system. In this
basis, the rank-2 diffusion generator is \$\$ \mathbf{L}^{(2)} =
\begin{pmatrix} 3(D_x + D_y) & \sqrt{3}(D_x - D_y) & 0 & 0 & 0 \\
\sqrt{3}(D_x - D_y) & D_x + D_y + 4D_z & 0 & 0 & 0 \\ 0 & 0 & D_x +
4D_y + D_z & 0 & 0 \\ 0 & 0 & 0 & 4D_x + D_y + D_z & 0 \\ 0 & 0 & 0 & 0
& D_x + D_y + 4D_z \end{pmatrix}. \$\$ The returned `lambda_overall_vec`
contains the negative decay rates associated with the distinct
eigenvalues of that matrix, so that they can be combined with the
negative internal-motion eigenvalues used elsewhere in the package. The
current implementation assumes that `dxyz_vec` is already ordered in the
same diffusion-frame convention as the generator above. In particular,
the axial-symmetry shortcut is only triggered for \\D_x = D_y\\, so the
unique diffusion axis should correspond to the `z` axis of the supplied
diffusion frame.

For the autocorrelation case currently implemented here,
`dunit_b_matrix` must equal `dunit_a_matrix`. Each row of
`dunit_a_matrix` is interpreted as the average rank-2 unit dipole-dipole
tensor in the diffusion frame. Its squared norm \$\$S^2 = \lVert \mathbf
d^{\mathrm u} \rVert^2\$\$ is used as a measure of residual second-rank
orientational order. `S^2 = 1` corresponds to no orientational
averaging, while `S^2 = 0` corresponds to complete isotropic averaging
of the rank-2 interaction.

When `S^2 > s2_min`, the row is normalized to a unit rank-2 direction
and projected onto the overall tumbling eigenmodes. For fully
anisotropic diffusion, if \\\hat{\mathbf d}\\ is the normalized row and
\\\mathbf v_i\\ are the orthonormal eigenvectors of
\\\mathbf{L}^{(2)}\\, the directional overall-mode weights are
\$\$a\_{pi}^{\mathrm{dir}} = (\hat{\mathbf d}\_p \cdot \mathbf
v_i)^2.\$\$ Because the eigenvectors are orthonormal, these directional
weights sum to one for each row: \$\$\sum_i a\_{pi}^{\mathrm{dir}} =
1.\$\$

For axially symmetric diffusion with \\D_x = D_y\\, the generator is
already diagonal in three grouped mode classes, and the directional
weights reduce to \$\$a\_{p1}^{\mathrm{dir}} = \hat d\_{p1}^2,\$\$
\$\$a\_{p2}^{\mathrm{dir}} = \hat d\_{p2}^2 + \hat d\_{p5}^2,\$\$
\$\$a\_{p3}^{\mathrm{dir}} = \hat d\_{p3}^2 + \hat d\_{p4}^2.\$\$

For fully anisotropic diffusion, the coupled \\(Y\_{2,0},
Y\_{2,2}^{c})\\ block is diagonalized analytically. Writing \$\$ A =
3(D_x + D_y), \qquad B = \sqrt{3}(D_x - D_y), \qquad C = D_x + D_y +
4D_z, \$\$ and \$\$ \theta = \frac{1}{2}\operatorname{atan2}(2B, A - C),
\$\$ the first two directional weights are \$\$ a\_{p1}^{\mathrm{dir}} =
(\cos\theta\\\hat d\_{p1} + \sin\theta\\\hat d\_{p2})^2, \$\$ \$\$
a\_{p2}^{\mathrm{dir}} = (-\sin\theta\\\hat d\_{p1} + \cos\theta\\\hat
d\_{p2})^2, \$\$ with \$\$a\_{p3}^{\mathrm{dir}} = \hat d\_{p3}^2, \quad
a\_{p4}^{\mathrm{dir}} = \hat d\_{p4}^2, \quad a\_{p5}^{\mathrm{dir}} =
\hat d\_{p5}^2.\$\$

The current implementation regularizes the poorly defined limit \\S^2
\to 0\\ by blending the directional weights with symmetry-based limiting
weights using `S^2` itself as the blend coefficient. For each row, \$\$
\mathbf a_p^{\mathrm{overall}} = S_p^2 \\ \mathbf a_p^{\mathrm{dir}} +
(1 - S_p^2)\\ \mathbf a^{\mathrm{lim}}. \$\$ The limiting weights are
chosen to respect the symmetry of the corresponding diffusion model:

- Isotropic diffusion: one mode with weight \\(1)\\.

- Axially symmetric diffusion: three grouped weights \\(1/5, 2/5,
  2/5)\\.

- Fully anisotropic diffusion: five equal weights \\(1/5, 1/5, 1/5, 1/5,
  1/5)\\.

These fallback values were chosen so that when the residual rank-2
direction becomes negligible, no artificial orientation is introduced by
the regularization. In the isotropic case there is only one overall
mode, so its weight must be one. In the fully anisotropic case, loss of
directional information implies that no one eigenmode should be
preferred over any other, so the five weights are taken to be equal. In
the axially symmetric case, the corresponding grouped weights are
obtained by summing the equal fully anisotropic weights over the
degenerate mode pairs, giving \\(1/5, 2/5, 2/5)\\. This makes the
fallback consistent with the symmetry of the diffusion operator and with
the normalization \\\sum_i a\_{pi}^{\mathrm{overall}} = 1\\ used for the
autocorrelation implementation here. Thus the returned rows sum to one
in the autocorrelation case, and `s2_min` controls the point below which
directional information is deemed too weak to normalize reliably.
