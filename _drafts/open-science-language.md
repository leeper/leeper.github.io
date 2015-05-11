---
layout: post
title: Language of Open Science
categories:
 - reproducibility
tags:
 - reproducibility
 - reproducible research
 - replication
 - open science
 - verification
 - research
 - open data
---

Michael Clemens [recently posted on the LSE Impact Blog](http://blogs.lse.ac.uk/impactofsocialsciences/2015/04/15/the-meaning-of-replication-and-robustness/) about confusion surrounding the terminology used in discussing scientific replication. Reporting on [a working paper](http://www.cgdev.org/publication/meaning-failed-replications-review-and-proposal-working-paper-399), he documents dozens of conflicting definitions of key terms, including "replication," "reproducibility," "robustness," "verification," etc. We need a common vocabulary for talking about open science in order to solve the various - often unrelated - challenges that currently threaten scientific credibility. My goal here is to highlight that such a common language of open science may be challenging to construct precisely because of consequential disciplinary differences in the production of science. That said, we can increase the clarity of our discussions by being explicit about what scientific output is being created from what set of scientific inputs and the extent to which we expect identical, similar, and dissimilar inputs to create outputs identical, similar, or dissimilar to those of an original study.

The problem Clemens outlines is clear: without a common language to use when discussing the various aspects of a research study's scientific robustness or credibility, it is hard to advance scientific literatures. More importantly, however, lacking some consensus on basic terminology means that participants in ongoing discussions about replication, reproducible research, and open science often talk past one another and propose solutions that can seem in appropriate solely because they are actually targeting conceptually distinct aspects of scientific practice. Clemens proposes the following matrix of terminology:

[![Proposed Definitions](http://blogs.lse.ac.uk/impactofsocialsciences/files/2015/04/clemens-table-1.jpg)](http://blogs.lse.ac.uk/impactofsocialsciences/2015/04/15/the-meaning-of-replication-and-robustness/)

Lest we run the risk of [creating yet another standard](https://xkcd.com/927/), I want to push back slightly against the outline proposed by Clemens. His review of the semantic confusion is incredibly valuable, as is the typology he offers to make sense of it. I disagree with some of his labels, but as I thought about *why* I disagree with those labels, I am reminded that at least some portion of our disagreement (and the semantic confusion more broadly) is due to deeper-rooted disagreements about the nature of science.

## Reproducibility and Replication ##

When [I talk about open science and the idea of reproducible research](http://thomasleeper.com/rrcourse/Slides/WhatWhyHow.pdf), I often define the core idea of reproducibility in the negative: that is, I distinguish the concept of reproducible research by highlighting what is *not* reproducible. Among the possible features of non-reproducible research are fraud, human error, lack of methodological transparency, privately held data, data loss, use of proprietary software, hardware, or file formats, etc. Many things make research lose the property of being reproducible. I'm somewhat partial to [the quip that "reproducible research is redundant. Irreproducible research just used to be known as 'bullshit'."](https://twitter.com/kaythaney/status/464543147083968513). Okay, so that's all good fun, but what is reproducible research, really?

In my own field of political science, we are hopelessly addicted to the term "replication" due to [a 1995 article by Gary King](http://gking.harvard.edu/files/abs/replication-abs.shtml). The paper is an enormous contribution that has been the foundation for contemporary efforts to improve the transparency of analyses and data collection within our field, including [the DA-RT initiative](http://www.dartstatement.org/). But like Donald Rubin's [atrocious choice of terminology to describe the brilliant distinctions between types of missing data](http://en.wikipedia.org/wiki/Missing_data#Types_of_missing_data), the use of "replication" here is flawed. King's argument was that published research should be reproducible: its analysis should be sufficiently clear and data made public so that other scholars can reproduce (i.e., "replicate") the original results using the same data. King is talking about a form of reproducibility: given data (as originally collected) and a complete description of the steps needed to arrive at the results, could a reasonably competent person with a minimum of contemporary computer technology obtain numerical results that match those reported by the original authors. This is reproducible research.

Every time I read or hear about this article or the "replication" revolution it has spawned in political science, I cringe a little bit. I love what the article has done for open political science (e.g., leading to the creation and ever-expanding use of [Dataverse](http://dataverse.org/)), but I have always felt that King is talking about "reproducibility" and that "replication" is something reserved for new research, involving new data, new operationalizations, or new analytic methods rather than the pure reproduction of the original results. Should I be this bothered by what is ultimately semantics? Yes and no.

On the one hand, this is really a semantic complaint. If King's article were retitled "Reproduction, Reproduction" and all references to it were changed from "replication" to "reproducibility," "reproducible research", or "reproduction" as appropriate, I would - at some surface level - be thrilled.

On the other hand, however, my discomfort with this language of open science stems from a rarely discussed lack of conceptual agreement (as opposed to shallow semantic agreement) about the core steps of the scientific process and which of those various steps should be transparent and in what ways. All of these terms refer to various forms of *recreating an output from a given set of inputs*. The reason why different labels are thought to refer to the same concept is that scholars often implicitly are referring to distinct inputs and outputs when they refer to the "replication" or "reproduction" or "verification" etc. of a research project.

## Concepts and Language in Recreating Science ##

Science involves (1) the observation of phenomena, (2) the translation and interpretation of those observations into data, (3) possibly the further restructuring or recoding of those data into a particular form, (4) the analysis of those data, (5) the production of particular outputs from those analyses (statistics, figures, tables, papers, presentations, etc.), and (6) the repetition of these steps to construct a cumulative, multi-study literature.

When we talk about "replication" or "reproducibility", which of these stages of the scientific process are at stake? Potentially all of them. And that is the fundamental, conceptual disagreement underlying the confused terminology surrounding open science. 

I think it is useful to restrict "reproduction" to the recreation of an output from a study's original input (or set of inputs). This means that I typically refer to "reproducibility" as the open, completely transparent sharing of the details of steps 3-5 in the above process (including shared data and analysis files). Similarly, I suggest we reserve *replication* for processes whereby new outputs are created from new inputs. In general, this means replication occurs at step 6, wherein some or all of steps 1-5 are repeated with new inputs in order to update our beliefs about the underlying phenomenon using new observations, data, or analysis.



But the problem with this basic dichotomy - reproduction as creation of output from the same input and replication as creation of output from new input - becomes problematic as soon as we apply it to different stages of the scientific process. While I can casually offer that replication is the production of new outputs from new inputs, the practical meaning of replication depends on what output is of interest. If I gather observations about countries, analyze those data, and publish my analysis, another scientist who collects their own data on those countries





Specifically, where is the starting point of an act of "reproduction"? If I provide my data as collected and the code to reproduce my published results, have I supplied a fully reproducible research project? At one level, yes, because one can take the inputs as given and reproduce the outputs - my research is reproducible. But is my data collection process reproducible? It depends on what steps 1 and 2 of my scientific process looked like and what objects I observed. If my units of observation are human beings, my scientific process is almost definitionally not reproducible. Individuals change and no one will ever be able to reproduce my data collection about those individuals unless the data were generated purely from administrative records. As soon as I, as a scientist, observe a phenomenon, both my involvement in the process and the dynamic nature of the underlying phenomenon make 



But researchers can correctly use the same labels (reproduction and replication) to refer to specific steps in the scientific process. King, for example, uses replication to refer largely to steps 4 and 5 because his article was written at a time when social scientists were largely working with large, publicly available datasets but when there was little infrastructure for the sharing of the computer code or software needed to recreate outputs from those data. King wanted his students to "replicate" the results without having access to the original scientists' code or software, using whatever tools they had at their disposal. In that sense, "replication" is correct because something (code) is produced anew. But now that it is commonplace to share data, analysis code, and software, one can see that step as either "replication" (if one works from the authors' mere description of an analytic process) or "reproduction" (if one has access to those shared files).

Similarly, one could say that a "replication" is a reanalysis of original data from step 2 using new methods, approaches, or coding in order to create a new output from largely the same inputs. This is a major part of the scientific process as analyses are refined in light of new technology, new statistical understanding, or new insights into phenomena. In this sense, a study's findings might be "replicated" by testing whether those findings are robust to alternative coding or model specification.

One might also attempt to "replicate" a data collection effort by returning to original objects of observation and assigning values to those observations on variables of interest. This is replication because it takes a set of human activities (i.e., the act of observation) as a new effort to replicate the original dataset. But, one might also describe this as an act of "reproduction" because the inputs (i.e., observable features of the universe) are held constant and the intent is to reproduce the original step 2 dataset.


## The Implications of Terminology ##

Other uses of the terms than those just described are, of course, also possible. This means that when one says "the study failed to replicate," that sentence is fundamentally unclear because it may mean (a) that the study's data did not yield substantively similar findings when tested with alternative methods, (b) that the study's described methods could not be reconstructed by other scientists, or (c) that new data (analyzed in the same or a different way) was inconsistent with the study's findings. Without being explicit about what step of the scientific process is being "replicated" (i.e., what input is being used to create what output), the implications of a "replication failure" are also unclear. In case (a) or (b) we should be particularly suspect about using that study's findings when accumulating our knowledge about the underlying phenomenon, whereas in case (c) we simply aggregate the findings of the original study and its replication(s).

Replication failures as in case (c) are a healthy part of science and should be simply accepted as part of the cumulative scientific process. As we update our beliefs about the underlying phenomenon, we simply weight the contribution of the study and its replication(s) using some well-specified method of aggregation. Failures as in case (a) are also a healthy part of science, but they mean that we should discount or replace the original study's findings when aggregating our collective beliefs about the phenomenon. Failures as in case (b), however, imply that disciplines and journals should set higher standards for reproducibility because the study is so intransparent as to lack credibility. In severe cases (e.g., apparent fraud or devastating human error), such failures may also merit retraction of publications and the removal of those findings from our accumulated knowledge.

As should be clear, when a specific input fails to produce the originally described output, actions should be taken. But the type of action taken depends on what steps of the scientific process are being recreated. Because one can reasonably use "replication" or "reproduction" to refer to multiple distinct parts of the scientific process, there is no single reasonable response to a "replication failure." Instead, we need to be clear - regardless of what terminology we use - about what output is being recreated (or failing to be recreated) from what input when we consider why reproducibility or replicability are important features of science.

## Can We Have a Common Language for Open Science? ##



 - assumptions being made about the stages of the scientific process
 - some physical properties can always be observed; others cannot
 - measurement error, sampling error, etc. etc.







 - reanalysis?
