---
layout: default
---

<h3><a href="http://thomasleeper.com/blog.html">Blog</a> > <a href='http://thomasleeper.com{{ page.url }}'>{{ page.url }}</h3>

<h1>{{ page.title }}</h1>

{{ content }}

<br />
<span style="font-style:italic;font-size:.8em;float:right;">Published: {{ page.date | date:"%Y-%m-%d" }}</span>
