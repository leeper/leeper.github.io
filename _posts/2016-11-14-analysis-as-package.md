---
layout: post
title: "Packaging Your Reproducible Analysis"
description: "There are a lot of debates about how to structure a reproducible research project. An R package is one easy answer."
tags:
 - reproducible research
 - open science
 - data
 - r
 - reproducibility
 - package
 - software
---

There are a lot of debates about how to structure a reproducible research project. To be reproducible, a quantitative analysis needs to be *open*, that is it must contain the data and software needed to recreate the analyses from start to finish. Or, [as I have written before](http://thomasleeper.com/2015/05/open-science-language/), reproducible research is about recreating output from shared input(s). But once we agree on that general principle, how do we implement it in practice? Of course, the shared inputs (the data, code, etc.) need to be shared via a persistent, citable data archive - [not your personal website](https://politicalsciencereplication.wordpress.com/2014/05/21/guest-post-why-reproducibility-requires-data-archiving-by-thomas-leeper/) - but in what form precisely should that shared input be organized?

One answer that I've been recommending recently is to construct a reproducible analysis as an R package. That premise - going to the effort to organize your code, data, and other files into an R package - can seem daunting if you've never created a package before. But, if you're starting to work reproducibly and you're trying to get your files organized anyway, there are some good reasons to think about your project as a package. The first of these is that you're probably *almost* creating a package anyway. That's crazy you might say. Not so.

Consider, for example, project file structures suggested by [Christopher Gandrud](https://www.crcpress.com/Reproducible-Research-with-R-and-R-Studio/Gandrud/p/book/9781466572843), [Karl Broman](http://kbroman.org/Tools4RR/assets/lectures/06_org_eda_withnotes.pdf), and others, which involve something like:

```
/data
/code
/slides
/paper
/misc
README.md
makefile
```

That structure yields an overarching directory to contain all project files, with subdirectories for data, analysis code, a manuscript and/or presentation slides, and possibly other files. This keeps things neatly organized, with similar files together, and some kind of overarching build process (e.g., [a `make`-based workflow](http://thomasleeper.com/2016/09/make-make-make-again/)) that turns these inputs into the outputs that you care about (the finished paper, slides, etc.).

The key point is that if you already have a structure like the above, you're 95% of the way to having an R package already, which has a structure like so:

```
/data
/R
/inst
/vignettes
README.md
DESCRIPTION
NAMESPACE
```

The only differences between the R package structure and a typical reproducible research workflow is the naming of some key directories (e.g., `/code` or `/analysis` must be `/R`), that `/paper` or `/slides` are now in a directory called `/vignettes`,  and that R packages require two top-level files: `DESCRIPTION`, which describes the package and contains usefully structured metadata, and `NAMESPACE`, which describes what functions from `/R` should be available to those who install the package.

Similar to a `make`-based workflow, an R package provides a natural build workflow, where running `R CMD build package` on the command line will "build" the package, and convert mansucript files (e.g., `/vignettes/paper.Rnw` or `/vignettes/slides.Rmd`) into a finished, fully reproducible research output. 

The packaging itself is painless and, if one prefers, requires no further work. To share your reproducible research then simply requires distribution of the package; end users desiring to reproduce or otherwise examine your results need only `install.packages("yourproject")` and examine the vignette(s).

But packaging offers some additional advantages:

 1. R's quality control tool - `R CMD check` - provides a huge number of useful checks of your code quality and formatting, making sure you have parsable, executable code.
 
 2. Adding additional directories, such as `/man`, further provides resources that are useful to other end users or your future self. These might, for example, describe your data structure and provide a data citation, and describe the use of your package functions with helpful examples. Through [royxgen2](https://cran.r-project.org/web/packages/roxygen2/vignettes/roxygen2.html), that documentation can easily be automatically generated from the kinds of code comments you may already be using to markup your code.
 
 3. Distributing your package via a major repository, such as [CRAN](https://cran.r-project.org/), also means that your project - if at all useful to others - will be perpetually available and constantly checked for reproducibility on new versions of R.
 
 4. Packaging creates a useful framework for adding "tests" of your code. In addition to the main output files produced from `/vignettes`, you can add a `/tests` directory to your package directory that will contain tests, which can be used to achieve many important objectives, including ensuring that your data takes the form you expect (particularly if you will update that data in the future), that your functions behave as you describe them, and that your package's code generates the outputs you believe it should (with respect to object structures, classes, and numeric values).
 
While these advantages are numerous, I think a major psychological hurdle for many researchers is that they do not think of their project as software development. Rather, they are only running existing code and therefore do not see the need for a package. This, however, misses the point that a package need to actually contain any new code (or any data for that matter). The *package structure* is what is most important because it enables the kind of automated workflows and testing that R already provides. If your project only contains a dozen lines of R code that can easily be placed in a knitr document, that's not a reason against packaging! Indeed, that's a sign that it will be really easy to package your project.

To make the point that this is fairly simple, I would point you to a recent R package that I produced which serves both as (1) a hopefully useful tool for those of us running a particular kind of survey-experimental study, and (2) an example of how to package a reproducible analysis. The package, GK2011, is available on [CRAN](https://cran.r-project.org/package=GK2011) and [GitHub](https://github.com/leeper/GK2011). My purpose in writing the package was to provide an easy-to-use function for performing a particular experimental treatment effect estimate from a paper by [Gaines and Kuklinski (2011)](http://doi.org/10.1111/j.1540-5907.2011.00518.x). But to demonstrate that the package worked correctly, I included Gaines and Kuklinski's original data and used the top-level `README.Rmd` to reproduce their empirical analysis. Thus the package is a simple example of a reproducible project, where the single analytic function is included in `/R`, the data is included in `/data`, some tests of the single function are in `/tests`, and the complete analysis is in the README (which could have just as easily been in the vignette directory). Using roxygen2 markup, [the code](https://github.com/leeper/GK2011/blob/master/R/estimate.R) and [the data](https://github.com/leeper/GK2011/blob/master/R/ajps.R) are fully documented, with examples that reproduce the results reported in the README. By making this an R package, `R CMD build` and `R CMD check` will verify that the code works as expected and can be installed by any other R user.

The GK2011 package is intentionally incredibly simple. It showcases how easy it is to make a reproducible research project into an R package and hopefully showcases that making that small leap comes with the advantages of natural and easy-to-use quality control tools.

Good luck with your packaging!



