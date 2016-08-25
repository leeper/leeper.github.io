---
layout: post
title: "Assessing Clinton's Conflicts of Interest Requires Unobservable Counterfactuals"
description: "An AP headline today describes an observed relationship in data and calls upon the reader to draw a causal inference. That is a terrible thing to do."
tags:
 - politics
 - counterfactuals
 - description
 - causation
 - causal inference
 - statistics
---

This morning, the Associated Press put out [a story with the headline "Many Donors to Clinton Foundation Met with Her at State"](http://hosted.ap.org/dynamic/stories/U/US_CAMPAIGN_2016_CLINTON_FOUNDATION?SITE=AP). [Vox.com describe a number of flaws in the article](http://www.vox.com/2016/8/24/12618446/ap-clinton-foundation-meeting). But I want to focus on one aspect they didn't pick up. The article (and its headline) make a fantastic example of a *descriptive* claim that is meant to be interpreted *causally*. That is, the headline describes an observed relationship in data - between charitable contributions and political access - and then calls upon the reader to draw inferences about a causal linkage between those two variables. Political specifics aside, the story highlights why this kind of inferential leap is a terrible thing to do.

The key data for the story is in the second paragraph:

> At least 85 of 154 people from private interests who met or had phone conversations scheduled with Clinton while she led the State Department donated to her family charity or pledged commitments to its international programs, according to a review of State Department calendars released so far to The Associated Press. Combined, the 85 donors contributed as much as $156 million. At least 40 donated more than $100,000 each, and 20 gave more than $1 million.

The descriptive evidence is clear: a majority of those who met with Clinton donated to her family's charity. Seems straightforward enough and it is. But the article wants the reader to reach a causal, not descriptive conclusion: "the frequency of the overlaps shows the intermingling of access and donations, and fuels perceptions that giving the foundation money was a price of admission for face time with Clinton." In other words, the AP is suggesting a causal influence of donations on access.

There are two problems. The first is mathematical. The second is inferential. The mathematical issue is that we aren't interested in how likely people were to have donated given they met with Clinton (the quantity `Pr(Donation|Access)`) but instead in the reverse: the proportion of those who donated who obtained access (that is, `Pr(Access|Donation)`). If donation is causal, we want to know how successful donations were in obtaining access. The AP story doesn't give us that. Despite its appearances, the article is pretty uninformative.

The number of donors to the Clinton Foundation is [fairly enormous](https://www.clintonfoundation.org/contributors), so the the value of `Pr(Access|Donation)` is pretty near to zero. Taking a conservative ballpark guess of about 3000 total donors places the number somewhere around 3%. (Many donors are corporations, governments, or NGOs, so those actually reflect multiple individuals. Other donors are small so might not be expected to buy any access. The specific numbers are less important than the intuition.)

The inferential issue is whether we should understand this 3% (or whatever) number to be large or small. Researchers typically think about causality in terms of ["potential outcomes"](https://en.wikipedia.org/wiki/Rubin_causal_model). The causal influence of donations would be seen in comparing the access given to donors in the observed data to a counterfactual condition in which those individuals who were donors instead did not give any money. In other words, if X% of donors obtained access in reality, would the percentage of those individuals given access have been larger, smaller, or the same had they instead not donated to the Clinton Foundation?

This is, of course, a directly unobservable quantity. We don't have access to that counterfactual, so we cannot know for certain what kind of access the donors would have had to Clinton if they instead hadn't donated. That's what's called [the "fundamental problem of causal inference"](https://en.wikipedia.org/wiki/Rubin_causal_model#The_fundamental_problem_of_causal_inference).

So what could the AP have done? Many things, but the simplest would have been to discuss the implicit bounds on the size of donation effect. It's pretty unlikely that *more* individuals would have been given access had they instead *not* donated (though, I suppose that's possible if Clinton actively avoided meeting with known donors) and much more likely that fewer individuals would have gained access. If none of these individuals would have gained access without donating, then the effect of donation on access is the difference between the observed level of access and the counterfactual level (`0.03 - 0.00 = 0.03`), or about 3%, assuming the guess above is accurate. If we assume no one was denied access because they donated, the largest possible effect of donation is approximately 3%.

But is it reasonable to assume that the counterfactual rate of access would have been 0? There is a good reason to believe many donors would have had access even if they hadn't donated because they were not just obscure rich people. Instead many of them are corporate, charity, and governmental leaders. Much of the AP story discusses Muhammad Yunus, a Nobel laureate, as one of them. If any of the donors would have had access had they intead been non-donors - Yunus seems like somehow who might fit in that camp - then the causal effect of donation is actually smaller. The more these donors would have had access even if they hadn't donated, the less influential donation was in obtaining access.

Now, again assuming 3% is the right number here - that is, the effect of donation is a 3 percentage point increase in access, we have to consider whether this is a sizeable causal effect. Is this large or small? That's left as an exercise to the reader. Indeed, that's what the AP wanted you to think about, but their story didn't provide the information or context necessary to draw any meaningful conclusions on the matter.

If journalists want to reach causal inferences or aim to have their readers make those inferences on their own, they need to report the right statistics and give context for what the possible counterfactuals might be. The AP didn't do that.
