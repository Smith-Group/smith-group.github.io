# Select groups of protons that are typically detectable with unique chemical shifts

Select groups of protons that are typically detectable with unique
chemical shifts

## Usage

``` r
coord_proton_groups(
  coord_mat,
  alpha_group = FALSE,
  beta_group = FALSE,
  gamma_group = FALSE,
  delta_group = FALSE,
  epsilon_group = FALSE,
  amine_group = FALSE,
  methyl_group = FALSE,
  aromatic_group = TRUE,
  exclude_exchangeable = TRUE,
  include = character(),
  amber = FALSE
)
```

## Arguments

- coord_mat:

  3xN matrix with a column for every atom

- alpha_group:

  logical indicating whether to group aliphatic alpha protons

- beta_group:

  logical indicating whether to group aliphatic beta protons

- gamma_group:

  logical indicating whether to group aliphatic gamma protons

- delta_group:

  logical indicating whether to group aliphatic delta protons

- epsilon_group:

  logical indicating whether to group aliphatic epsilon protons

- amine_group:

  logical indicating whether to group asparagine/glutamine amine protons

- methyl_group:

  logical indicating whether to group methyl protons

- aromatic_group:

  logical indicating whether to group phenylalanine/tyrosine
  delta/epsilon protons

- exclude_exchangeable:

  logical indicating whether rapidly exchangeable protons should be
  excluded

- include:

  character vector of exchangeable protons to be explicitly included

- amber:

  logical indicating if names are from Amber force field

## Value

Vector with selected protons. The names give the group the proton
belongs to. The name will be the heavy atom name if all of the protons
bound to that heavy atom are in the same group. Otherwise, the name will
be the proton name.
