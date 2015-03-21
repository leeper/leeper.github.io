---
layout: default
title: Software - Thomas J. Leeper
---

## R Packages ##

Here are a few of the R packages I've developed on my own, and as part of the [rOpenSci](http://ropensci.org/), [rOpenGov](http://ropengov.github.io/), and [cloudyr](http://cloudyr.github.io) open source projects.

**cloudyr**
The [cloudyr project](http://cloudyr.github.io) is an effort to connect R to cloud computing applications, starting with Amazon Web Services. I've written API clients for many of the AWS applications. See the cloudyr website or GitHub page for more details.


**colourlovers: R client for the COLOURlovers API**<br/>
colourlovers is an R package providing access to the [COLOURlovers](http://www.colourlovers.com/) API. COLOURlovers is a social networking site for sharing colors, color palettes, and color-rich visual designs. <br/>[CRAN](http://cran.r-project.org/web/packages/colourlovers/index.html) [GitHub](https://github.com/leeper/colourlovers)


**dvn: Access to The Dataverse Network APIs**<br/>
dvn is an R package providing access to [The Dataverse Network](http://thedata.org) APIs. It is now part of the [rOpenSci](http://ropensci.org/) project. <br/>[CRAN](http://cran.r-project.org/web/packages/dvn/index.html) [GitHub](https://github.com/rOpenSci/dvn)


**imguR: Imgur API Client Package for R**<br/>
imguR is an R package, initated by Aaron Statham, that binds the imguR API to R, thus enabling the uploading and management of images on imguR. It might be particularly useful for web-based R projects and knitr documents written in R markdown. <br/> [GitHub](https://github.com/leeper/imguR)


**margins: An R port of Stata's margins command**<br/>
margins is an R port of Stata's margins command, which can be used to calculate marginal effects and their variances from regression models. It is especially helpful for models with power terms, non-linear transformations, and interaction terms, and for generalized linear models. <br/> [GitHub](https://github.com/leeper/margins)


**meme: Meme Generation in R**<br/>
meme is an R package that helps users generate internet memes from template images. It's just for fun. <br/> [GitHub](https://github.com/leeper/meme)


**MTurkR: R Client for the MTurk Requester API**<br/>
MTurkR is a client library providing access to the Amazon Mechanical Turk crowdsourcing platform through R.<br/> [CRAN](http://cran.r-project.org/web/packages/MTurkR/index.html) [GitHub](https://github.com/leeper/MTurkR) [Wiki](https://github.com/leeper/MTurkR/wiki)


**rio: A Swiss-army knife for data I/O**<br/>
The aim of rio is to make data file I/O in R as easy as possible by implementing data import and export for R that relies on file extensions to make a (reasonable) assumption about how to read a file into a data.frame or, conversely, save a data.frame to disk. It greatly simplifies data import and export and offers a function for easily converting between file formats (possibly from the command line). <br/> [GitHub](https://github.com/leeper/rio)


**rite: The Right Editor to Write R**<br/>
A simple, powerful, multi-platform script editor for R, built with tcl/tk, rite provides features typically found in standalone editors and IDEs (e.g., syntax highlighting, command completion, shortcut keys, find and go-to-line commands, one-click access to documentation, etc.) and a helpful color-coded output "sink". It also creates an easy workflow for reproducible research through integration with the [knitr](http://cran.r-project.org/web/packages/knitr/index.html) package. <br/>[CRAN](http://cran.r-project.org/web/packages/rite/index.html) [GitHub](https://github.com/leeper/rite)


**Rmonkey: A Survey Monkey R Client**<br/>
Rmonkey is a simple package for retrieving survey data from [Survey Monkey](http://www.surveymonkey.com/) and creating new surveys and survey collectors from within R. <br/>[GitHub](https://github.com/leeper/Rmonkey)


**slopegraph: Edward Tufte-inspired Slopegraphs in R**<br/>
A simple, one-function R package to produce Edward Tufte-inspired [slopegraph plots](http://www.edwardtufte.com/bboard/q-and-a-fetch-msg?msg_id=0003nk). <br/>[GitHub](https://github.com/leeper/slopegraph)


**sparktex: Generate LaTeX sparklines in R**<br/>
sparktex is an R companion to the LaTeX [sparklines](http://www.ctan.org/pkg/sparklines) package (by Andreas Loeffler and Dan Luecking), which produces Edward Tufte-inspired [sparklines](http://en.wikipedia.org/wiki/Sparkline) and sparkspikes (in-text histograms) natively in LaTeX. <br/>[CRAN](http://cran.r-project.org/web/packages/sparktex/index.html) [GitHub](https://github.com/leeper/sparktex)


**UNF: Tools for creating universal numeric fingerprints for data**<br/>
UNF is an R package for generating variable- and dataset-level universal numeric fingerprint signatures to uniquely identify data. UNF signatures provide a way to uniquely and persistently identify (a version of) a dataset. [The UNF algorithm](http://thedata.org/book/universal-numerical-fingerprint) was created by [Micah Altman](http://micahaltman.com/) and was updated to version 5 of the UNF algorithm in the current package, which I maintain. The UNF package also provides UNF-based functions to identify discrepancies between dataframes and works well with the **dvn** package, listed above, for comparing Dataverse-stored datasets against local copies.<br/>[GitHub](https://github.com/leeper/UNF)


You can find all of my software development projects on [GitHub](http://github.com/leeper).

---
## Some other assorted materials ##

* R: [Identify gender of first names, by country, using the Gender API](https://gist.github.com/leeper/9021068)

* R: [Materials for learning and teaching R](http://thomasleeper.com/Rcourse/)

* R: [Really Introductory Introduction to R](http://thomasleeper.com/Rcourse/Intro2R/Intro2R.pdf) (See also: source [.rnw](http://thomasleeper.com/Rcourse/Intro2R/Intro2R.rnw)).

* JavaScript code specifically for working with Amazon Mechanical Turk is available [here](MTurkR/index.html).

* LaTeX: [A .bst (bibliography style file for LaTeX)](https://github.com/leeper/apsa-leeper.bst) that formats according to the APSA/Political Science style guide. I had trouble finding a .bst that correctly formatted citations, so I adapted one to do it. (I use the [natbib](http://www.ctan.org/tex-archive/macros/latex/contrib/natbib/) package to produce parentheticals.)
