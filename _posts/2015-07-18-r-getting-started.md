---
layout: post
title: How Can I Get Started Using R?
categories:
 - R
tags:
 - R
 - software
 - teaching
 - mturk
 - statistics
---

I received an email this week that included the following:

> Your posts, a long with those of numerous others, have convinced me that I should give R a shot. I am hoping that you would be so kind as to suggest some essential packages for political science research.

I appreciate the email and I'm thrilled to see another person interested in jumping into R. Here's what I'd suggest: *don't think in terms of specific packages*. Instead, *think in terms of problems you have that you want to solve*.

As some autobiographical background for this advice, I came to R through my PhD coursework at Northwestern University. I had learned SPSS during undergrad and then learned Stata at Northwestern. I had a brief - actually, let's say rough - introduction to R during the last course of the political science methods sequence, and then I forgot about it for about a year. But then, I had a problem I needed to solve. It was 2011 and I wanted to use [Amazon Mechanical Turk](https://www.mturk.com/mturk/welcome) for a research project where I contacted survey respondents at multiple points in time. MTurk allowed this, but there wasn't an easy way to do it through the web interface. 

I learned however, that MTurk had a thing called an "API", a term I had never heard before. I figured out that an API was an "Application Programming Interface" - a structured way of accessing a software application using programming rather than a graphical interface. And, it turned out that I could access the MTurk API through R, I just [had to write an R package](cran.r-project.org/web/packages/MTurkR/index.html) to do it. So, I came to R because I had a problem I needed to solve and while the solution was feasible within R, it wasn't feasible in the other tools I already knew (SPSS and Stata). Of course, one could access MTurk through other languages (Java, Python, Javascript, Perl, Ruby, etc.) but I didn't really know any of those. And aside from my ignorance of those languages, R was extremely well-suited to the rest of the science I wanted to do with the data I was retrieving from MTurk (namely, statistical analyses of the resulting data). It was natural to make the whole process work in R rather than use Python for accessing MTurk and then move to Stata to do the analysis.

For me, then, R was something that made sense because it was powerful, it solved a problem I had that didn't have an easy alternative, and it helped structure my broader scientific workflow. 

My advice is therefore that the best way to dive into R is to identify a problem you already have (or think you'll soon have) and figure out how R can help you achieve it. There are a handful of problems that scientists, including political scientists, regularly have that R can help them solve quite easily:

 - **Producing high-quality scientific graphics**. Whether you use the base R graphics or [ggplot2](http://cran.r-project.org/web/packages/ggplot2/index.html), R has unparalleled graphics capabilities. These are becoming even better as more and more tools are developed for interactive, web-native graphics through services like [plot.ly](https://plot.ly/r/), [ggvis](http://ggvis.rstudio.com/), and [rcharts](http://rcharts.io/). 
 - **Creating reproducible research**. Reproducibility simplifies the task of linking scientific results into final publications (through packages like [knitr](http://cran.r-project.org/web/packages/knitr) and [stargazer](https://cran.r-project.org/web/packages/stargazer/index.html)) and increases the credibility and transparency of your work, through tools for archiving and sharing research in public archives (like the [dvn](https://cran.r-project.org/web/packages/dvn/index.html) package provides for [Dataverse](http://dataverse.org) or the [rfigshare](https://cran.r-project.org/web/packages/rfigshare/index.html) package provides for [figshare](http://figshare.com/)) or tools that help to make analyses more reproducible like [checkpoint](https://cran.r-project.org/web/packages/checkpoint/index.html), [miniCRAN](https://cran.r-project.org/web/packages/miniCRAN/index.html), or [packrat](https://cran.r-project.org/web/packages/packrat/index.html).
 - **Obtaining data**. The [rOpenSci](https://ropensci.org/), [rOpenGov](http://ropengov.github.io/), and [rOpenHealth](https://github.com/rOpenHealth) projects provide a huge number of packages for retrieving various kinds of web-based data. Our [Open Data Task View](https://github.com/ropensci/opendata/) describes a ton of these data sources and the packages available for working with them. For social scientists, I'd also highlight Anthony Damico's ["analyze survey data for free" website](http://www.asdfree.com/), which provides R-based tutorials for working with a huge number of publicly available survey data sources.
 - **Specific types of data problems.** Maybe you have text data you want to analyze; try [quanteda](http://cran.r-project.org/web/packages/quanteda/index.html). Maybe your data structure is a complete mess; try [dplyr](https://cran.r-project.org/web/packages/dplyr/index.html). Maybe you have data so massive it's hard to work with; try [data.table](https://cran.r-project.org/web/packages/data.table/index.html). Maybe you have a data analysis task that's unimaginably time consuming or computationally intensive; try some of the ideas on the [High Performance Computing Task View](https://cran.r-project.org/web/views/HighPerformanceComputing.html). There are many other problems social scientists commonly face, so I can't list them all here.
 
There are thousands of R packages on CRAN and hundreds more on Github. Recommending which you should try is pretty challenging, unless you have a specific problem you want to solve. For scientists, some of the above scenarios are pretty standard problems and R has great facilities for solving those problems. But, maybe you have problem that hasn't been solved in R (like my need for a programmatic interface to MTurk). That's a "problem" that's often not really a problem because any time there's a challenge that hasn't been addressed yet, it means there's a great opportunity to take a deep dive into learning R and using it to solve that problem.
