---
layout: post
title: "Experiments: Always LATE"
description: "Deaton and Cartwright rightly point out that RCTs have become too focused on the ATE and too little focused on exclusion restrictions."
tags:
 - experiments
 - RCT
 - randomization
 - social science
 - methods
 - blinding
 - LATE
 - treatment effect
 - exclusion restriction
 - instrumetnal variables
---

*This is the second of a series of posts on Angus Deaton and Nancy Cartwright's working paper, "[Understanding and Misunderstanding Randomized Controlled Trials](http://www.nber.org/papers/w22595)." The first post [is available here](http://thomasleeper.com/2016/10/deaton-cartwright/).*

Deaton and Cartwright's paper makes an excellent point about the distinction between an average treatment effect (ATE) and the local average treatment effect (LATE). While commonly distinguished in instrumental variables analyses of observational data, the distinction is not regularly made in experiments (except those where non-compliance is rampant and easily observable). They raise this point on (p.24) in a discussion of blinding:

> Blinding	is	rarely	possible	in	economics	or	social	science	trials,	and	this	is	one	of	the major differences from	most	(although	not	all)	RCTs	in	medicine, where	blinding	is standard,	both	for	 those	receiving	the	treatment	and	those	administering	it.	Indeed,	the	ability	to	blind	has	been	 one	of	the	key	arguments	in	favor	of	randomization,	from	Bradford-Hill	in	the	1950s,	see	 Chalmers	(2003),	to	welfare	trials	today,	Gueron	and	Rolston	(2013).	Consider	first	the	blinding	 of	subjects.	Subjects	in	social	RCTs usually	know	whether	they	are	receiving	the	treatment	or	not	 and	so	can	react	to	their	assignment	in	ways	that	can	affect	the	outcome	other	than	through	the	 operation	of	the	treatment;	in	econometric	language,	this	is	akin	to	a	violation	of	exclusion	restrictions, or	a	failure	of	exogeneity.	In	terms	of	(1),	there	is	a	pathway	from	the	treatment	assignment to	another	unobserved	cause,	which	will	result	in	a	biased	ATE.	This	is	not	to	argue	in	 favor	of	instrumental	variables	over	RCTs,	or	vice	versa,	but	simply	to	note	that,	without	blinding, RCTs	do	not	automatically	solve	the	selection	problem	any	more	than	IV	estimation automatically solves the	selection	problem.	In	both	cases,	the	exogeneity	(exclusion	restriction)	argument needs	to	be	explicitly	made	and	justified.	Yet	the	literature	in	economics	gives	great	attention to	the	validity	of	exclusion	restrictions	in	IV	estimation,	while	tending	to	shrug	off	the	 essentially	identical	problems	with	lack	of	blinding in	RCTs.

This is a really important point and one that we tend to gloss over. In field experiments and in medical trials where compliance is often directly observable (answer the phone; take the pill; etc.), it is easy to estimate the LATE and thus obtain an estimate of the average treatment effect local to the population of those who comply with treatment assignment. In many other contexts, however, compliance is undefined or unobservable and thus we estimate ATEs but are in practice estimating "intention to treat" (ITT) effects (in essence, the LATE averaged with apparent zero effects for those who are unwilling to accept treatment assignment).

What we forget in this exercise is that there is always noncompliance, it just cannot always be seen. Consider for example, a "framing" experiment in which I randomly assign participants to read either a "free speech" message about a hate rally or a "public safety" message about a hate rally. There are two ways to look at this design.

The first interpretation is that this is a *political communication* experiment. In this case, we are estimating an ATE. One group has the free speech treatment and the other has the public safety treatment. Everyone is treated. The estimate derived from comparing mean outcomes in the two groups is the (S)ATE. There is no compliance concern per se because the treatment we care about is, in essence, a policy: we are studying the effect of making something available to some and withholding it from others.

The second interpretation, however, is that this is a *political psychology* experiment. In this case, we are estimating an ITT or - depending on how we conceptualize our treatment - a LATE. Let me explain. From this perspective, we are not so much interested in the difference in response to exposure but rather we are interested in differences in outcomes between those that think about the hate rally in different ways. Thus the effect we want to know is about the *frames in thought*, not the *frames in communication*. As such, our treatment is actually just an instrument. We think it will change how people think. When we compare the two groups then, we are estimating an ITT where we as the researchers are blind to compliance (i.e., thinking the way we induced the subjects to think). If we can conceptualize and measure *frames in thought*, then we can instead estimate a LATE using treatment assignment as an instrument for reasoning

That, however, assumes that the exclusion restriction is not violated (i.e., that there is no other path by which our treatment affects the outcome but through the specific reasoning process we are interested in). An observational IV paper would spend considerable time discussing the plausibility of the exclusion restriction. Deaton and Cartwright's point above is that experimental papers rarely do the same. (Though see [my research trying to tease out what part of "framing" treatments are actually changing opinions](https://dl.dropboxusercontent.com/u/414906/CanCitizensBeFramed.pdf).) I agree we should do more to defend the plausibility of our treatments as instruments, when we are using them as such.

In short, for this second lens on the experiment, we are only able to estimate an ITT or a LATE, never an ATE. To achieve that we would have to envision a way to actually set the value of *frames in thought* perfectly (in the way that we can set the value of media content perfectly in the political communication interpretation of the study). Because we randomize, we are inclined to think that the thing we are randomizing is the independent variable that we are care about. But often we randomize something because it can be manipulated and ignore the causal process that we are actually trying to instrument for. We pretend when we can estimate the ATE we care about but find ourselves always LATE.
