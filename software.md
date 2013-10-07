---
layout: default
title: Software - Thomas J. Leeper
---

### R Packages ###

* **MTurkR: An R Package for Amazon Mechanical Turk**: MTurkR is a free, open-source ([GPL-2](http://www.gnu.org/licenses/gpl-2.0.html)) package providing robust, flexible access to the Amazon Mechanical Turk platform through R. It requires little to no programming experience (and includes a lightweight, menu-based interface for beginners), but provides access for advanced users to full functionality of MTurk (including more functionality than Requester UI or MTurk command-line tools).<br/>[Learn more about MTurkR and download the package](http://leeper.github.io/MTurkR) and [follow its development on GitHub](https://github.com/leeper/MTurkR).
* **rite: The Right Editor to Write R**: A simple, powerful, multi-platform script editor for R, built with tcl/tk, rite helps ease new R users' transition to R (a major rite of passage) by providing a helpful and straightforward scripting tool. rite also provides a script editor useful to advanced R users through its incorporation of features typically found in standalone editors and IDEs (e.g., syntax highlighting, command completion, shortcut keys, find and go-to-line commands, direct acces R help files, etc.). rite also gives beginners and guRus an easy workflow for reproducible research through integration with LaTeX and the [knitr](http://cran.r-project.org/web/packages/knitr/index.html) package. You can [find rite on CRAN](http://cran.r-project.org/web/packages/rite/index.html) and [follow its development on GitHub](https://github.com/leeper/rite).
* **sparktex: Generate LaTeX sparklines in R**: sparktex is an R companion to the LaTeX [sparklines](http://www.ctan.org/pkg/sparklines) package (by Andreas Loeffler and Dan Luecking), which produces Edward Tufte-inspired [sparklines](http://en.wikipedia.org/wiki/Sparkline) and sparkspikes (in-text histograms) natively in LaTeX. The sparktex package translates R vectors into sparklines syntax and provides an array of control over the size, color, and shape of the resulting in-text plots. You can [find sparktex on CRAN](http://cran.r-project.org/web/packages/sparktex/index.html) and [follow its development on GitHub](https://github.com/leeper/sparktex).
* **dvn: Access to The Dataverse Network APIs**: dvn is an R package providing access to [The Dataverse Network](http://thedata.org) APIs. The package allows you to search for dataverse records via metadata fields or by handles (a dataverse objectid), as well as download codebooks and other files in a variety of formats. From version 0.3, dvn also supports the Data Deposit API, allowing users to create, modify, and release dataverse studies directly from R. You can [find dvn on CRAN](http://cran.r-project.org/web/packages/dvn/index.html) and [follow its development on GitHub](https://github.com/leeper/dvn).

### Some other assorted materials ###

<!--* <a href="code/r/clipboard.r">clipboard]: Paste from (and evaluate) the contents of the clipboard and copy R objects to the clipboard-->
<!--* <a href="code/r/coefpaste.r">coefpaste]: Produce vectors of coefficients and parenthetical standard errors/standard deviations for easy output-->
<!--* <a href="code/r/expResults.r">expResults]: Produce simple experimental results tables, for initial data description and/or output-->
* You can now find most of my software development projects on [GitHub](http://github.com/leeper)
<!--* <a href="code/r/groupImpute.r">groupImpute]: A simple algorithm to impute missing experimental values-->
<!--* <a href="code/r/mergeNA.r">mergeNA]: Combine two variables with mutually exclusive missingness (e.g., for merging responses to questions from two survey forms)-->
<!--* <a href="code/r/sparktex.r">sparktex]: Produce LaTeX code for in-line sparklines, using the <a href="http://get-software.net/help/Catalogue/entries/sparklines.html#Docs">sparkline] environment-->
* [R] [sweave](code/r/sweave.r): An R file (intended to be used as a Windows executable [shell script]) that automatically runs [Sweave](http://www.statistik.lmu.de/~leisch/Sweave/) on the most recently edited .rnw file in a directory and produces the resultant PDF and R code tangles
* [R] [Really Introductory Introduction to R](http://thomasleeper.com/Rcourse/Intro2R/Intro2R.pdf) (See also: source [.rnw](http://thomasleeper.com/Rcourse/Intro2R/Intro2R.rnw))
* [JavaScript] [redirect](code/javascript/redirect.html): Randomly redirect the user to one of several pages.
* [JavaScript] [login](code/javascript/login.txt): Redirect the user to a pre-randomized page, based upon a username, anonymous code, etc.
* [JavaScript] Other JavaScript code specifically for working with Amazon Mechanical Turk is available [here](MTurkR/index.html).
* [LaTeX] The [sparktex](http://cran.r-project.org/web/packages/sparktex/index.html) package, mentioned above, for generating LaTeX sparklines from R
* [LaTeX] [A .bst (bibliography style file for LaTeX)](code/tex/apsa-leeper.bst) that formats according to the APSA/Political Science style guide. I had trouble finding a .bst that correctly formatted citations, so I adapted one to do it. (I use the [natbib](http://www.ctan.org/tex-archive/macros/latex/contrib/natbib/) package to produce parentheticals.)
* [LaTeX] [A .tex file](code/tex/random.tex) including some simple macros (and [examples](code/tex/random.pdf) thereof) for generating uniform and Normally distributed random variables, displaying those values in various ways, and for including random graphics or .tex files.<br />(Example .tex uses the following files:
[a.tex](code/tex/a.tex), [b.tex](code/tex/b.tex), [0.tex](code/tex/0.tex), [1.tex](code/tex/1.tex), [2.tex](code/tex/2.tex), [A.png](code/tex/A.png), [B.png](code/tex/B.png), [0.png](code/tex/0.png), [1.png](code/tex/1.png), [2.png](code/tex/2.png))
