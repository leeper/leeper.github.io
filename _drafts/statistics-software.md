---
layout: post
title: "Just enough tech to be dangerous"
description: ""
tags:
 - r
 - software
 - statistics
 - teaching
 - learning
 - spss
 - stata
---

I recently complained (as I suppose I am known to do) about SPSS on Twitter:

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Just because SPSS has a feature doesn&#39;t mean you should use it. Case in point: if you are doing cross-sectional regression to make causal claims, &quot;hierarchical regression&quot; sounds sophisticated but it&#39;s not. It&#39;s also not hierarchical in the sense used anywhere else in statistics.</p>&mdash; Thomas Leeper (@thosjleeper) <a href="https://twitter.com/thosjleeper/status/996679187028217857?ref_src=twsrc%5Etfw">May 16, 2018</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

The visceral cringe at a misunderstood software feature was triggered by a (published, and shall-remain-unnamed) academic article that claimed so-called "hierarchical linear regression" helped to "enter independent variables into the regression based on their assumed causal order". This SPSS feature is simply a form of forward stepwise regression, wherein variables are added to the righthand side of a standard OLS regression in "blocks" of variables. That is, it is a technique that might be useful in some kind of dimensionality reduction exercise. The article, however, used this software feature for causal inference: the variables in the final block were the ones that were of substantive interest to research.

(I imagine they did not think to reverse the order of the blocks in order to learn that the coefficient estimates and R-squared of the final model is the same regardless of what column a particular variable occupies in the design matrix. I can only take it from that claim that the authors think "hierarchical linear regression" is perhaps some form of structural equation modelling where causal precedence can be specified through variable order.)

The episode highlighted some of the difficulties that lie at the software<>statistics nexus. I don't want to dwell on this specific feature, this specific software, or this article but it perfectly demonstrates the core issue. 



https://thepoliticalmethodologist.files.wordpress.com/2013/09/tpm_v3_n21.pdf

https://thepoliticalmethodologist.files.wordpress.com/2013/09/tpm_v4_n11.pdf



PS. Someone will inevitably read this as a "base R versus tidyverse" post. It's not. That debate is about people having different goals for what they expect beginners to know and different pedagogical theories about how to obtain those goals. Or, even less interestingly, that debate is often about base versus ggplot2 graphics - I think that's basically settled that ggplot2 is superior in the cases it is optimised for (visualization of rectangular data) but base graphics are occasionally helpful in other circumstances. Or, even less interesting than that, it's a semantic debate about the meaning of the "tidyverse". All of that is narrow. This point is menat to be broader.
