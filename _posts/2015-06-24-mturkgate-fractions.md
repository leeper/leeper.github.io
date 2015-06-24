---
layout: post
title: MTurkGate Is A Good Reminder To Practice Our Fractions
categories:
 - mturk
tags:
 - mturk
 - crowdsourcing
 - fractions
 - math
 - budget
---

On the morning of June 23, 2015, I received an email from Amazon Web Services describing the final details of [previously announced fee changes](http://mechanicalturk.typepad.com/blog/2015/05/bringing-future-innovation-to-mechanical-turk.html) in celebration of [Amazon Mechanical Turk](https://www.mturk.com/mturk/welcome)'s 10th anniversary. Here's the email:

    Hello Mechanical Turk Requester,

    We’re writing to follow-up on our post “Bringing Future Innovation to Mechanical Turk” published May 21st to the Mechanical Turk blog (http://mechanicalturk.typepad.com/). In the post, we indicated that we were analyzing changes to our commission structure, including changing our base commission to somewhere between 20% and 35%. We have settled on changing our base commission to 20% and modifying other elements of our pricing. These changes take effect at midnight on July 21st, 2015. We are introducing the following updates:

    •       Amazon Mechanical Turk’s base commission will be 20% with a $0.01 minimum per transaction. This commission applies to HIT reward amounts and any bonuses paid to Workers.
    •       HITs requiring 10 or more assignments will incur an additional 20% commission above the base commission. These HITs comprise less than 0.3% of Mechanical Turk’s overall HITs, and are most commonly used by Requesters to survey Workers and conduct market research.
    •       The incremental commission for using Masters Workers will decrease to 5%, making it even easier for Requesters to access the marketplace’s highest-rated Workers.

    These changes will help allow Amazon to continue growing the Amazon Mechanical Turk marketplace and innovating on behalf of our customers. You can learn more about these changes here: http://requester.mturk.com/pricing.

    If you have any questions, you can contact us at: https://requester.mturk.com/contactus.

    Sincerely,
    Amazon Mechanical Turk
    https://requester.mturk.com
    
The [SPSP Blog has a good summary](http://www.spspblog.org/mechanical-turk-quadruples-survey-fees-mturkgate-ensues/) of the underlying issues and the emergence of the [`#mturkgate`](https://twitter.com/search?q=%23mturkgate) hashtag. The email matters because MTurk has become a major platform for two things: (1) crowdsourcing human computation tasks (e.g., image moderation, transcription, etc.), and (2) academic survey-experimental research. The fee changes affect the latter group particularly hard because a "HIT" for an academic study will typically involve several hundred or thousand assignments (see the second bullet point in the email). This means that in reality, the fee increase from is actually from 10% to 40% rather than 10% to 20%, as for HITs with fewer than 10 assignments. 

Less discussed is the fact that the fee changes also affect projects with many HITs but few assignments per HIT. So called "penny HITs" are typically incredibly simple tasks that can be performed in a matter of seconds and simply require, for example, an up/down vote on whether an image matches a certain description. These HITs will typically pay just $0.01 or maybe $0.05, but offer workers thousands of individual tasks in a "batch". The first bullet point in the email mentions that the minimum per transaction fee will increase to $0.01 (up from $0.005). Amazon charges this minimum because penny HITs would, at the previous rate, only pay Amazon $0.002 per assignment. The change (from $0.005 to $0.01) doesn't seem like a lot, but for penny HITs that fee increase is enormous. Imagine, for example, that you are a requester posting 100,000 images to be categorized and you pay $0.01 per task. Under the old pricing, you would pay $1,000 to workers (`100,000 * 0.01 = 1000`) plus $0.005/assignment to Amazon (`100,000 * 0.005 = 500`), for a grand total project cost of $1500. Under the new pricing scheme, the fees to Amazon have doubled, making the total cost of this penny HIT project twice what it is under the current scheme. If you, for example, have built an image-focused web app that relies on MTurk for persistent image moderation (perhaps sending thousands of images per day to the platform), the cost of that crowdsourcing may have just doubled.

To express the fee change, [I tweeted a pretty simple graph](https://twitter.com/thosjleeper/status/613223405983281153) displaying the total cost of a project at varying reward amounts from $0.01 to $1.00 per HIT with a y-axis representing the total cost of the project. As one can see, the fee increase means a pretty simple shift in the slope of the cost of a project, except at the very low end where penny HITs get caught by the new minimum commission:

![Project Cost Graph](https://pbs.twimg.com/media/CIKbRaRWoAIroMW.png)

I thought this was pretty straightforward and was aimed at requesters: how much more is your project going to cost compared to how much it cost before, if you held per-assignment reward amount the same. (Carey Morewedge wasn't satisfied with my graph, and [produced one](https://twitter.com/morewedge/status/613438957859250177) emphasizing how the proportion of the total cost of a project going to Amazon would now be higher.)

The part of the Twitter discussion on the `#mturkgate` hashtag that I found fascinating was how people were conceptualizing the cost increase (i.e., how large they understood the cost increase to be when they expressed it in their minds in different ways). Here are some different ways we can think about the cost increase, all of which result from the same basic fact that the commission will increase from 10% to 40% for the kinds of HITs academic researchers often use:

 - The commission paid to Amazon will quadruple.
 - The commission paid to Amazon is 400% of what is today.
 - There will be a 300% increase in commissions paid to Amazon.
 - There will be a 30-percentage point increase in commission fees.
 - There will be a 27.3% increase in the total cost of a project.
 - The proportion of the total cost of a project going to Amazon will increase from 9.1% percent to 28.6%.
 - The proportion of the total cost of a project going to workers will decrease 91.0% to 71.4%.
 - The ratio of worker payments to Amazon commission fees will decrease from 10:1 to 5:2.
 - The ratio of Amazon commission fees to worker payments will increase from 1:10 to 2:5.
 - If requesters hold total project costs constant, workers can expect to receive 21.4% less.
 - If requesters hold total project costs constant, workers can expect to receive 79.6% of what they previously received.
 - If requesters hold total project costs constant, workers received 25.7% more under the old fees.
 - If requesters hold total project costs constant, workers received 125.7% of what they will receive now.
 
The fact that I can express a relatively simple change (fees moving from 10% to 40%) is a good reminder to take a minute and think about how best to express that change. Obviously, "fees quadruple" sounds horrendous and "300% increase in fees" sounds bad, but may not quite as a bad. A "27.3% increase in total costs" sounds bad, but maybe not that bad given that Amazon has never previous raised their fees. When we express the change as the share of total costs going to workers decreasing from 91.0% to 71.4% or that workers can expect to receive 21.4% less highlights why `#mturkgate` emerged: requesters talking about fleeing MTurk because they will pay 27.3% more is interesting given that workers might expect to receive 21.4% less for the same work.

It's incredibly easy to frame numbers both to serve one's objectives and to mislead about the size of the underlying values. Graphing can help, but it's also important to remember that the fee increase is a slope change, not a change in functional form, so regardless of the cost of your MTurk project the cost will only be 27.3% higher. There is no exponential increase in cost. If one were to extend the axes of my graph to infinity, the picture would remain the same with the new line being 27.3% higher than the line representing current costs. (Though a graph with an expanded x-axis would cover up the enormous increase in total cost for penny HIT projects.) As a requester, I was concerned about total cost, so I graphed that in what I thought was the most useful way. If one's concerns are different, they can follow any of the different ways of framing the change listed above and draw a different graph that emphasizing the change most relevant to them.

But, the key point I want to make is that there was a lot of confusion, or perhaps even miscommunication, about the implications of the new fees because individuals expressed that change in different terms (percentages, changes in percentages, ratios, fractions, etc.). I'll run away from a 300% increase but I can probably cope with a 27.3% increase (unfortunately for many, achieved through a mix of smaller samples and lower worker rewards). It's easy to get caught up in the numerical framing and lose the larger picture. Fractions, percentages, and changes are the bread and butter of scientific communication, so I thought this conversation was an excellent case study in the challenges of communicating numbers. Hopefully it serves as a reminder to be clear (both to ourselves and to others) about what we mean when we talk about a numeric change or effect.
