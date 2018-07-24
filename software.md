---
layout: page
title: Software
description: This page showcaes a few highlights from my software development portfolio.
permalink: /software.html
---

I am a passionate R hacker and have authored more than 30 packages for R ranging from cloud computing clients, to original statistical tools, to just-for-fun packages like [**meme**](https://github.com/leeper/meme). Most of my work now focuses on tooling for [cloudyr](http://cloudyr.github.io) open source projects, a handful of projects for [rOpenSci](http://ropensci.org/), and tools to replicate advanced Stata functionality in R. You can find source code for all of my open source projects on [GitHub](https://github.com/leeper).

A few highlights are as follows:

[**The cloudyr project**](http://cloudyr.github.io) is an effort to connect R to cloud computing applications. My main contribution is a fully featured client for Amazon Web Services tools called [**awspack**](https://cran.r-project.org/package=awspack). See the cloudyr website or [GitHub page](https://github.com/cloudyr) for more details.

[**dataverse**](https://CRAN.R-project.org/package=dataverse) provides access to [The Dataverse Network](http://dataverse.org) APIs. *dataverse* is the current generation package, providing access to the complete functionality of current Dataverse installations.

[**MTurkR**](https://CRAN.R-project.org/package=MTurkR) is a client library providing access to the Amazon Mechanical Turk crowdsourcing platform through R. It also has a [Graphical User Interface](https://CRAN.R-project.org/package=MTurkRGUI) and [Wiki](https://github.com/cloudyr/MTurkR/wiki) with advice on using the package and MTurk more generally.

[**prediction**](https://CRAN.R-project.org/package=prediction) and [**margins**](https://CRAN.R-project.org/package=margins) together form an R port of Stata's `margins` command. prediction provides tidy, type-safe predictions from model objects and Stata-style predictive margins. margins can calculate (average) marginal effects and their variances from regression models. The latter is especially helpful for models with power terms, non-linear transformations, and interaction terms, and for generalized linear models.

[**rio**](https://CRAN.R-project.org/package=rio) makes data file import and export as easy as possible by relying on file extensions to make a (reasonable) assumption about how to read a file into a data.frame or, conversely, save a data.frame to disk. It greatly simplifies data import and export and offers a function for easily converting between file formats (possibly from the command line).

[**tabulizer**](https://github.com/rOpenSci/tabulizer) provides R bindings to the [Tabula java library](https://github.com/tabulapdf/tabula-java/), which extracts tables from PDF documents using a small set of really powerful and accurate algorithms. tabulizer provides a thin client around Tabula, and provides a handy interactive mode to identifying tables in PDFs directly within an R graphics window.

[**UNF**](https://CRAN.R-project.org/package=UNF) is an R package for generating variable- and dataset-level universal numeric fingerprint signatures to uniquely identify data. UNF signatures provide a way to uniquely and persistently identify (a version of) a dataset. [The UNF algorithm](http://thedata.org/book/universal-numerical-fingerprint) was created by [Micah Altman](http://micahaltman.com/) and was updated to version 5 of the UNF algorithm in the current package, which I maintain. The UNF package also provides UNF-based functions to identify discrepancies between data frames and works well with the **dataverse** package, listed above, for comparing Dataverse-stored datasets against local copies.
