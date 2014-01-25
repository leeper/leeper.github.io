---
layout: default
title: Software - Thomas J. Leeper
---

## R Packages ##

* **colourlovers: R client for the COLOURlovers API**: colourlovers is an R package providing access to the [COLOURlovers](http://www.colourlovers.com/) API. COLOURlovers is a social networking site for sharing colors, color palettes, and color-rich visual designs. The social networking features of the site mean that COLOURlovers provides not only rich, original color palettes to use in R graphics but also provides ratings and community evaluations of those palettes, helpings R graphics designers to utilize visually pleasing color combinations. You can <!--[find colourlovers on CRAN](http://cran.r-project.org/web/packages/colourlovers/index.html) and--> [follow its development on GitHub](https://github.com/leeper/colourlovers).

* **dvn: Access to The Dataverse Network APIs**: dvn is an R package providing access to [The Dataverse Network](http://thedata.org) APIs. The package allows you to search for dataverse records via metadata fields or by handles (a dataverse objectid), as well as download codebooks and other files in a variety of formats. From version 0.3, dvn also supports the Data Deposit API, allowing users to create, modify, and release dataverse studies directly from R. You can [find dvn on CRAN](http://cran.r-project.org/web/packages/dvn/index.html) and [follow its development on GitHub](https://github.com/leeper/dvn).

* **MTurkR: An R Package for Amazon Mechanical Turk**: MTurkR is a free, open-source ([GPL-2](http://www.gnu.org/licenses/gpl-2.0.html)) package providing robust, flexible access to the Amazon Mechanical Turk platform through R. It requires little to no programming experience (and includes a lightweight, menu-based interface for beginners), but provides access for advanced users to full functionality of MTurk (including more functionality than Requester UI or MTurk command-line tools).<br/>[Learn more about MTurkR and download the package](http://leeper.github.io/MTurkR) and [follow its development on GitHub](https://github.com/leeper/MTurkR).

* **rite: The Right Editor to Write R**: A simple, powerful, multi-platform script editor for R, built with tcl/tk, rite provides features typically found in standalone editors and IDEs (e.g., syntax highlighting, command completion, shortcut keys, find and go-to-line commands, one-click access to documentation, etc.) and a helpful color-coded output "sink". rite thus provides users with a powerful alternative to both the command line and native R editor, and helps ease new R users' transition to R (a major rite of passage). It also creates an easy workflow for reproducible research through integration with the [knitr](http://cran.r-project.org/web/packages/knitr/index.html) package. You can [Learn more about rite](http://leeper.github.io/rite), [find it on CRAN](http://cran.r-project.org/web/packages/rite/index.html), and [follow its development on GitHub](https://github.com/leeper/rite).

* **slopegraph: Edward Tufte-inspired Slopegraphs in R**: A simple, one-function R package to produce Edward Tufte-inspired [slopegraph plots](http://www.edwardtufte.com/bboard/q-and-a-fetch-msg?msg_id=0003nk). You can [follow slopegraph's development on GitHub](https://github.com/leeper/slopegraph).

* **sparktex: Generate LaTeX sparklines in R**: sparktex is an R companion to the LaTeX [sparklines](http://www.ctan.org/pkg/sparklines) package (by Andreas Loeffler and Dan Luecking), which produces Edward Tufte-inspired [sparklines](http://en.wikipedia.org/wiki/Sparkline) and sparkspikes (in-text histograms) natively in LaTeX. The sparktex package translates R vectors into sparklines syntax and provides an array of control over the size, color, and shape of the resulting in-text plots. You can [find sparktex on CRAN](http://cran.r-project.org/web/packages/sparktex/index.html) and [follow its development on GitHub](https://github.com/leeper/sparktex).

* **UNF: Tools for creating universal numeric fingerprints for data**: UNF is an R package for generating variable- and dataset-level universal numeric fingerprint signatures to uniquely identify data. UNF signatures provide a way to uniquely and persistently identify (a version of) a dataset. [The UNF algorithm](http://thedata.org/book/universal-numerical-fingerprint) was created by [Micah Altman](http://micahaltman.com/) and was updated to version 5 of the UNF algorithm in the current package, which I maintain. The UNF package also provides UNF-based functions to identify discrepancies between dataframes and works well with the **dvn** package, listed above, for comparing Dataverse-stored datasets against local copies. You can [follow UNF's development on GitHub](https://github.com/leeper/UNF).


---
## Some other assorted materials ##

You can find most of my software development projects on [GitHub](http://github.com/leeper).

### R ###
* [slopegraph](https://github.com/leeper/slopegraph): An R function to to draw Edward Tufte-inspired [Slopegraphs](http://www.edwardtufte.com/bboard/q-and-a-fetch-msg?msg_id=0003nk).
* [sweave-executable](https://gist.github.com/leeper/7333995): An R file (intended to be used as a Windows executable [shell script]) that automatically runs [Sweave](http://www.statistik.lmu.de/~leisch/Sweave/) on the most recently edited .rnw file in a directory and produces the resultant PDF and R code tangles.
* [Really Introductory Introduction to R](http://thomasleeper.com/Rcourse/Intro2R/Intro2R.pdf) (See also: source [.rnw](http://thomasleeper.com/Rcourse/Intro2R/Intro2R.rnw)).

### JavaScript ###
* [redirect](https://github.com/leeper/leeper.github.io/blob/master/code/javascript/redirect.html): Randomly redirect the user to one of several pages.
* [login](https://github.com/leeper/leeper.github.io/blob/master/code/javascript/login.html): Redirect the user to a pre-randomized page, based upon a username, anonymous code, etc.
* Other JavaScript code specifically for working with Amazon Mechanical Turk is available [here](MTurkR/index.html).

### LaTeX ###
* [A .bst (bibliography style file for LaTeX)](https://github.com/leeper/leeper.github.io/blob/master/code/tex/apsa-leeper.bst) that formats according to the APSA/Political Science style guide. I had trouble finding a .bst that correctly formatted citations, so I adapted one to do it. (I use the [natbib](http://www.ctan.org/tex-archive/macros/latex/contrib/natbib/) package to produce parentheticals.)
* [A .tex file](https://github.com/leeper/leeper.github.io/blob/master/code/tex/random.tex) including some simple macros (and [examples](code/tex/random.pdf) thereof) for generating uniform and Normally distributed random variables, displaying those values in various ways, and for including random graphics or .tex files. (Example .tex uses the following files:
[a.tex](code/tex/a.tex), [b.tex](code/tex/b.tex), [0.tex](code/tex/0.tex), [1.tex](code/tex/1.tex), [2.tex](code/tex/2.tex), [A.png](code/tex/A.png), [B.png](code/tex/B.png), [0.png](code/tex/0.png), [1.png](code/tex/1.png), [2.png](code/tex/2.png))
