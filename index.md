---
title: Smith Group GitHub Pages
---

# R Packages

Methods and software from the Smith Group and others for NMR data analysis and related workflows

[![r-universe: smith-group](https://smith-group.r-universe.dev/badges/:name)](https://smith-group.r-universe.dev/)

- [fitnmr](/fitnmr/) multidimensional NMR spectrum analysis [![r-universe version](https://smith-group.r-universe.dev/badges/fitnmr)](https://smith-group.r-universe.dev/fitnmr)

- [deeppicker](/deeppicker/) interface for ANN-based NMR peak picker [![r-universe version](https://smith-group.r-universe.dev/badges/deeppicker)](https://smith-group.r-universe.dev/deeppicker)

- [sparseLM](/sparseLM/) interface for Levenberg-Marquardt with sparse Jacobian [![r-universe version](https://smith-group.r-universe.dev/badges/sparseLM)](https://smith-group.r-universe.dev/sparseLM)

## Install latest GitHub versions from R-universe

### R

Install for standard R with:

```r
install.packages("fitnmr", repos = c("https://smith-group.r-universe.dev", "https://cloud.r-project.org"))
install.packages("deeppicker", repos = c("https://smith-group.r-universe.dev", "https://cloud.r-project.org"))
install.packages("sparseLM", repos = c("https://smith-group.r-universe.dev", "https://cloud.r-project.org"))
```

### webR

Install webR binaries with:

```r
webr::install("fitnmr", repos = c("https://smith-group.r-universe.dev", "https://repo.r-wasm.org"))
webr::install("deeppicker", repos = c("https://smith-group.r-universe.dev", "https://repo.r-wasm.org"))
webr::install("sparseLM", repos = c("https://smith-group.r-universe.dev", "https://repo.r-wasm.org"))
```
