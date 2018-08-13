---
layout: post
title: "Make 'make' Make Again!"
description: "Despite the existence of a tool to radically simplify reproducibility and avoid the hassle of re-running computational procedures, we rarely use it. Let's make 'make' make (things) again! #MMMA"
twittercardtype: summary_large_image
twitterimage: http://i.imgur.com/m8Ynqm0.png
tags:
 - reproducible research
 - reproducibility
 - transparency
 - academia
 - open science
 - workflow
 - software
 - R 
 - make
---

A research project typically consists of a handful of outputs: a paper, a presentation, maybe a blog post. These outputs are composed of text and citations, tables and figures, and so forth. Tables and figures and reported results in turn depend on code files and data, and that data may itself be the output of some earlier procedure to turn "raw" data into an organized data structure. If one of these pieces changes, we often have to redo things, possibly everything. This annoyance - the endless need to reproduce research outputs - is the motivating problem behind *reproducible research*.

If a workflow is fully reproducible, then those outputs can be recreated from the set of input objects. (That's [the definition of "reproducible research" that I try to follow](http://thomasleeper.com/2015/05/open-science-language/): "recreating output from a shared input".) And ideally, that reproducibility is automated, so that one need only push a button to obtain outputs from inputs.

The recent push for analytic transparency has meant that researchers increasingly share code files that produce the results reported in research outputs. That's a good thing. But the push for transparency is slightly askew from the goal of fully reproducible research. Reproducibility strives toward a goal of automation, whereas transparency strives only toward a goal of publicity. Put as a terrible metaphor: showing how you make your research sausage is similar to but not quite the same as building a research sausage-making robot. If we want to have reproducibility, striving to work transparently will get us part way there but not all the way.

The difference between transparent research and (fully) reproducible research is *automation*. One way to automate a workflow is to use something like a [literate programming](https://en.wikipedia.org/wiki/Literate_programming) workflow, such as [knitr](http://yihui.name/knitr/). (I have [some introductory slides on that](http://thomasleeper.com/rrcourse/Slides/knitr.pdf).) But for complex projects - those involving multiple research outputs (paper, presentation, blog, etc.) or those involving complex inputs (complex or time-consuming analyses, merged data, etc.) - knitr only automates the final step of the process: the creation of output manuscript. It's a great tool, but it has some limitations. For that reason, this post is about an older and more general tool that has widespread use in software development but isn't used enough in data analysis. It's called [**make**](https://en.wikipedia.org/wiki/Make_(software)). And I want to make make make research, again.

What is make? It is a simple, powerful piece of software that defines output files as a [directed, acyclic graph](http://software-carpentry.org/) of dependencies on other files. For example, a PDF depends on a LaTeX source, some figures and tables, and those figures and tables further depend on data.

![DAG](https://raw.githubusercontent.com/leeper/make-example/master/fig-dag-1.svg)

make allows us to define those potentially complex dependencies in the form of a "makefile", which is a file that contains a set of "rules", each of which consists of a "target" (the output node), the set of input nodes (files) that output depends on, along with the commands needed to produce the output node from the input node(s). Here's an example makefile for a simple paper consisting of one figure and one table made from a single dataset:

```

all: paper.pdf

figure/figure1.pdf: R/figure1.R data/mtcars.csv
	Rscript R/figure1.R

table/table1.tex: R/table1.R data/mtcars.csv
	Rscript R/table1.R

paper.pdf: paper.tex figure/figure1.pdf table/table1.tex
	pdflatex $<
	pdflatex $<
	bibtex $<
	pdflatex $<

```

That looks extremely verbose, but it's quite simple. `paper.pdf` is the final output of interest, which depends on the source `paper.tex` file, the figure `figure1.pdf`, and `table1.tex`. The table and figure each depend on separate R script files that generate them and on the data. The first line `all: paper.pdf` tell us what make should do by default. If we open a command line (Terminal, command prompt, bash, etc.) and type `make`, the above makefile will generate the figure, then the table, then the paper without needing any further human input. [This complete example and associated files is available on GitHub](https://github.com/leeper/make-example).

Because the language of make can seem foreign to new users, it can be valuable to compare it to something that's more easily understood. If you're familiar with R, the makefile above is identical to the following R code:

```R

## Figure 1
if (!file.exists("figure/figure1.pdf") || file.mtime("R/figure1.R") > file.mtime("figure/figure1.pdf")) {
    message("Making figure1.pdf")
    source("R/figure1.R", echo = FALSE)
}

## Table 1
if (!file.exists("table/table1.tex") || file.mtime("R/table1.R") > file.mtime("table/table1.tex")) {
    message("Making table1.tex")
    source("R/table1.R", echo = FALSE)
}

## Paper
p <- "paper.tex"
if (!file.exists("paper.pdf") || file.mtime(p) > file.mtime("paper.pdf")) {
    message("Making paper.pdf")
    system(paste("pdflatex", p))
    system(paste("pdflatex", p))
    system(paste("bibtex", p))
    system(paste("pdflatex", p))
}

```

This hopefully makes the process more explicit. If the figure doesn't exist, or if the figure exists but is older than the code that generates it, the figure is recreated. Similarly, if the table does not exist, or if it exists but is older than the code that generates it, the table is recreated. Finally, if the PDF does not exist, or the PDF is older than the LaTeX source, the PDF is recreated. Note how the `$<` notation in the makefile is simply a variable abstraction referring to the `paper.tex` file (in R: `p <- "paper.tex"`). The verbosity of the R code highlights the expressiveness of the `makefile`.

If every output is up to date, then running `make` again, does nothing. If only one piece of project changes - say, the code needed to generate the table - then only the nodes that depend on the table-generating code are rerun. We have achieved both full automation *and* the ability to avoid any superfluous re-execution of code. The explicitness of the makefile can seem tedious at first, but the pay-off is being able to quickly and fully reproduce outputs if any part of the dependency graph changes. And if nothing has changed, we get to enjoy the pleasantly reassuring message:

```bash
$ make
make: Nothing to be done for `all'.
```

Finally, I have to confess that I'm a recent convert to make. While I've been working in a transparent and relatively reproducible way for a while, I've hesitated to make the leap to fully automated reproducibility because of the start-up cost of learning and implementing a make-based workflow. But for any kind of complex project, make offers something that is valuable regardless of whether you care about open science. It just makes your life easier. And, as many of us say, reproducibility is first and foremost about making life easier for your own future self. I have no doubt my future self will appreciate me using make to make things.

Wait, but where do you go from here? [Zach Jones](http://zmjones.com/) has [a slightly more detailed introduction to make](http://zmjones.com/make/). [Karl Broman](http://kbroman.org/) offers some [detailed, annotated examples](http://kbroman.org/minimal_make/) of makefiles. [Keiran Healy](https://kieranhealy.org/) has [a fairly advanced tutorial](http://plain-text.co/make.html). [Software Carpentry](http://software-carpentry.org/) offers [a four-hour lesson on make](http://swcarpentry.github.io/make-novice/). Start there, check out [my example project](https://github.com/leeper/make-example).

Now let's make 'make' make again!
