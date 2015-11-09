---
layout: default
---

<h3><a href="http://thomasleeper.com/blog.html">Blog</a> > <a href='http://thomasleeper.com{{ page.url }}'>{{ page.url }}</a></h3>

<h1>{{ page.title }}</h1>

{{ content }}

<br />
<span style="font-style:italic;font-size:.8em;float:right;">Published: {{ page.date | date:"%Y-%m-%d" }}</span>

<br />

<p>
{% if page.previous %} 
    <a rel="prev" style="float:left;" href="{{ page.previous.url }}">&larr; Older post</a>
{% endif %}
{% if page.next %} 
    <a rel="next" style="float:right;" href="{{ page.next.url }}">Newer post &rarr;</a>
{% endif %}
</p>
<br />
