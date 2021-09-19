---
jupytext:
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
kernelspec:
  display_name: R
  language: R
  name: ir
---

# Managing `R` dependencies

## Functionality in `base` `R`

Get a list of all currently-loaded libraries:

```{code-cell}
(.packages())
```

See it change as we load a new library:

```{code-cell}
library(dplyr)
```

```{code-cell}
(.packages())
```

To install a new library:

```r
install.packages("dplyr", dependencies=TRUE)
```

Using `RStudio`, select the `Tools` menu, then, `Install packages`.

## The `DESCRIPTION` file

The `R` analog to Python's `requirements.txt` is a [DESCRIPTION](https://r-pkgs.org/description.html) file.
Any package that you `library()` and use can go in this file.

A very minimal file may look like this:

```
Depends:
    R (>= 4.1)
Imports:
    dplyr
```

```{note}
A `DESCRIPTION` file is one of many files needed for a "proper" `R` package.
By "proper", I mean one that you intend to distribute via [CRAN](https://cran.r-project.org/).
Here, I am only illustrating its use as a way to list dependencies.
```

### The `remotes` library

The [remotes](https://cran.r-project.org/web/packages/remotes/index.html) library can install the things listed in your `DESCRIPTION` file:

```r
remotes::install_deps(dependencies=TRUE)
```

## The `renv` library

To install `R` packages into a separate, clean, environment, use [renv](https://rstudio.github.io/renv/articles/renv.html).
You will want to experiment/play with this on your own before "diving in".
Using `renv` affects your work flow, but it will work as advertised.
