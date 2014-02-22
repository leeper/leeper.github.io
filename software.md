---
layout: default
title: Software - Thomas J. Leeper
---

## R Packages ##

You can find all of my software development projects on [GitHub](http://github.com/leeper).

**colourlovers: R client for the COLOURlovers API**<br/>
colourlovers is an R package providing access to the [COLOURlovers](http://www.colourlovers.com/) API. COLOURlovers is a social networking site for sharing colors, color palettes, and color-rich visual designs. The social networking features of the site mean that COLOURlovers provides not only rich, original color palettes to use in R graphics but also provides ratings and community evaluations of those palettes, helpings R graphics designers to utilize visually pleasing color combinations.<br/>[CRAN](http://cran.r-project.org/web/packages/colourlovers/index.html) [GitHub](https://github.com/leeper/colourlovers)


**dvn: Access to The Dataverse Network APIs**<br/>
dvn is an R package providing access to [The Dataverse Network](http://thedata.org) APIs. The package allows you to search for dataverse records via metadata fields or by handles (a dataverse objectid), as well as download codebooks and other files in a variety of formats. From version 0.3, dvn also supports the Data Deposit API, allowing users to create, modify, and release dataverse studies directly from R. It is now part of the [rOpenSci](http://ropensci.org/) project.<br/>[CRAN](http://cran.r-project.org/web/packages/dvn/index.html) [GitHub](https://github.com/rOpenSci/dvn)


**mpg: Fuel economy data from FuelEconomy.gov**<br/>
This lightweight package extracts fuel economy data from [FuelEconomy.gov](FuelEconomy.gov). It is released as part of the [rOpenGov](http://ropengov.github.io/) project.<br/>[GitHub](https://github.com/rOpenGov/mpg)


**MTurkR: An R Package for Amazon Mechanical Turk**<br/>
MTurkR is a client library providing robust, flexible access to the Amazon Mechanical Turk platform through R. It requires little to no programming experience (and includes a lightweight, menu-based interface for beginners), but provides access for advanced users to full functionality of MTurk (including more functionality than Requester UI or MTurk command-line tools).<br/>[CRAN](http://cran.r-project.org/web/packages/MTurkR/index.html) [GitHub](https://github.com/leeper/MTurkR) [Wiki](https://github.com/leeper/MTurkR/wiki)


**pollstR: R client for the Pollster API**<br/>
pollstR is a lightweight client for accessing the [Huffington Post's](http://www.huffingtonpost.com/) [Pollster](http://www.huffingtonpost.com/news/pollster/) API. The package allows users to download poll toplines and aggregated survey results by topic and state. The package builds on some functionality originally crafted by [Drew Linzer](http://votamatic.org/about-me/). It is released as part of the [rOpenGov](http://ropengov.github.io/) project.<br/>[GitHub](https://github.com/rOpenGov/pollstR)


**rite: The Right Editor to Write R**<br/>
A simple, powerful, multi-platform script editor for R, built with tcl/tk, rite provides features typically found in standalone editors and IDEs (e.g., syntax highlighting, command completion, shortcut keys, find and go-to-line commands, one-click access to documentation, etc.) and a helpful color-coded output "sink". rite thus provides users with a powerful alternative to both the command line and native R editor, and helps ease new R users' transition to R (a major rite of passage). It also creates an easy workflow for reproducible research through integration with the [knitr](http://cran.r-project.org/web/packages/knitr/index.html) package.<br/>[CRAN](http://cran.r-project.org/web/packages/rite/index.html) [GitHub](https://github.com/leeper/rite)


**RPublica: ProPublica API Client**<br/>
A slim client library for the (currently) three [ProPublica](http://www.propublica.org/) data journalism APIs: [Nonprofit Explorer](http://projects.propublica.org/nonprofits/api), [Forensics](http://projects.propublica.org/forensics/api), and [Free the Files](https://projects.propublica.org/free-the-files/api).<br/>[GitHub](https://github.com/rOpenGov/RPublica)


**slopegraph: Edward Tufte-inspired Slopegraphs in R**<br/>
A simple, one-function R package to produce Edward Tufte-inspired [slopegraph plots](http://www.edwardtufte.com/bboard/q-and-a-fetch-msg?msg_id=0003nk).<br/>[GitHub](https://github.com/leeper/slopegraph)


**sparktex: Generate LaTeX sparklines in R**<br/>
sparktex is an R companion to the LaTeX [sparklines](http://www.ctan.org/pkg/sparklines) package (by Andreas Loeffler and Dan Luecking), which produces Edward Tufte-inspired [sparklines](http://en.wikipedia.org/wiki/Sparkline) and sparkspikes (in-text histograms) natively in LaTeX. The sparktex package translates R vectors into sparklines syntax and provides an array of control over the size, color, and shape of the resulting in-text plots.<br/>[CRAN](http://cran.r-project.org/web/packages/sparktex/index.html) [GitHub](https://github.com/leeper/sparktex)


**UNF: Tools for creating universal numeric fingerprints for data**<br/>
UNF is an R package for generating variable- and dataset-level universal numeric fingerprint signatures to uniquely identify data. UNF signatures provide a way to uniquely and persistently identify (a version of) a dataset. [The UNF algorithm](http://thedata.org/book/universal-numerical-fingerprint) was created by [Micah Altman](http://micahaltman.com/) and was updated to version 5 of the UNF algorithm in the current package, which I maintain. The UNF package also provides UNF-based functions to identify discrepancies between dataframes and works well with the **dvn** package, listed above, for comparing Dataverse-stored datasets against local copies.<br/>[GitHub](https://github.com/leeper/UNF)


**usbroadband: Data for the U.S. National Broadband Map**<br/>
usbroadband is an R client library for the various APIs underlying the [United States National Broadband Map](http://www.broadbandmap.gov/), an open government initiative of the [National Telecommunications & Information Administration](http://www.ntia.doc.gov/) (U.S. Department of Commerce) and [Federal Communications Commission](http://www.fcc.gov/). The package can retrieve broadband avaialility, speed, and provider data, as well as demographics and U.S. Census geography information, at various levels of geographic aggregation.<br/>[GitHub](https://github.com/rOpenGov/usbroadband)


---
## Some other assorted materials ##

* R: [Update R packages if newer versions available on DESCRIPTION-listed GitHub URL field](https://gist.github.com/leeper/9123584)
* R: [Identify gender of first names, by country, using the Gender API](https://gist.github.com/leeper/9021068)
* R: [Really Introductory Introduction to R](http://thomasleeper.com/Rcourse/Intro2R/Intro2R.pdf) (See also: source [.rnw](http://thomasleeper.com/Rcourse/Intro2R/Intro2R.rnw)).
* R: [Materials for learning and teaching R](http://thomasleeper.com/Rcourse/)

* JavaScript: [redirect](https://github.com/leeper/leeper.github.io/blob/master/code/javascript/redirect.html): Randomly redirect the user to one of several pages.
* JavaScript: [login](https://github.com/leeper/leeper.github.io/blob/master/code/javascript/login.html): Redirect the user to a pre-randomized page, based upon a username, anonymous code, etc.
* JavaScript: Other JavaScript code specifically for working with Amazon Mechanical Turk is available [here](MTurkR/index.html).

* LaTeX: [A .bst (bibliography style file for LaTeX)](https://github.com/leeper/leeper.github.io/blob/master/code/tex/apsa-leeper.bst) that formats according to the APSA/Political Science style guide. I had trouble finding a .bst that correctly formatted citations, so I adapted one to do it. (I use the [natbib](http://www.ctan.org/tex-archive/macros/latex/contrib/natbib/) package to produce parentheticals.)
* LaTeX:  [A .tex file](https://github.com/leeper/leeper.github.io/blob/master/code/tex/random.tex) including some simple macros (and [examples](code/tex/random.pdf) thereof) for generating uniform and Normally distributed random variables, displaying those values in various ways, and for including random graphics or .tex files. (Example .tex uses the following files:
[a.tex](code/tex/a.tex), [b.tex](code/tex/b.tex), [0.tex](code/tex/0.tex), [1.tex](code/tex/1.tex), [2.tex](code/tex/2.tex), [A.png](code/tex/A.png), [B.png](code/tex/B.png), [0.png](code/tex/0.png), [1.png](code/tex/1.png), [2.png](code/tex/2.png))
