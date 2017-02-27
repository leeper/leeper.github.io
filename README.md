# Thomas J. Leeper

[![Build Status](https://travis-ci.org/leeper/leeper.github.io.png?branch=master)](https://travis-ci.org/leeper/leeper.github.io)

This is the git repository for my webpage, which is hosted with [GitHub Pages](http://pages.github.com/).

---
## Setting up GH Pages

Some things I learned setting up my custom domain redirect (from [thomasleeper.com](http://www.thomasleeper.com)), which weren't very well documented on the GitHub Pages [help files ](https://help.github.com/articles/setting-up-a-custom-domain-with-pages) are as follows. If you set up the redirect according to the instructions, it still may not work. My domain is registered with [mydomain](http://www.mydomain.com/) and I had to do the following configurations to get the redirect to work and to avoid an infinite looping redirect between mydomain and GH pages:
* Make a `CNAME` file containing the domain in your gh-pages repository.
* At mydomain, I had to setup:
  * a "standard pointer" (not stealth) to `leeper.github.io`. (This creates an infinite loop, though, so see below.)
  * a CNAME Alias for www.thomasleeper.com pointing to `leeper.github.io`.
  * an A record for www.thomasleeper.com pointing to `192.30.252.153` and `192.30.252.154`.
  * an A record for @.thomasleeper.com pointing to `192.30.252.153` and `192.30.252.154`.

This is based on some advice from [this StackOverflow question](http://stackoverflow.com/questions/9082499/custom-domain-for-github-project-pages), which was pretty helpful. It was really frustrating getting this setup but once those settings were in place everything started working almost immediately. Hopefully this is helpful for anyone else experiencing similar problems. 

---
## Share button

The share button on all of my webpages is created using @carrot's [share-button](https://github.com/carrot/share-button).

---
## Jekyll-related things

The website uses the [Moon Jekyll Theme]](https://taylantatli.github.io/Moon) -- [![Donate](https://img.shields.io/badge/paypal-donate-blue.svg)](https://www.paypal.me/taylantatli/0usd)  

---
![CC-BY 4.0](https://i.creativecommons.org/l/by/4.0/80x15.png) Except where noted, this website is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).
  
