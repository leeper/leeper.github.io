---
title: Blog
layout: page
permalink: /blog.html
---

<h2>Latest Post: <a href=".{{ site.posts.first.url }}">{{ site.posts.first.title }}</a></h2>
<div>
{{ site.posts.first.excerpt }} <a style="font-size: .8em; font-style: italic;" href=".{{ site.posts.first.url }}">...continue reading</a>
</div>

<br />

<h2>Past Posts</h2>

<ul>
{% for post in site.posts %}
  {% capture y %}{{post.date | date:"%Y"}}{% endcapture %}
  {% if year != y %}
    {% assign year = y %}
    <br /><b>{{ y }}</b>
  {% endif %}
  <li style="list-style-type: none;">
    <time datetime="{{ post.date | date:"%Y-%m-%d" }}">{{ post.date | date:"%Y-%m-%d" }}</time>
    <a href=".{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a>
  </li>
{% endfor %}
</ul>

<a href="./feed.xml">[RSS Feed]</a>

<br />

<h2>Tags</h2>

{% capture site_tags %}{% for tag in site.tags %}{{ tag | first }}{% unless forloop.last %},{% endunless %}{% endfor %}{% endcapture %}
{% assign tags_list = site_tags | split:',' | sort %}

<ul>
  {% for item in (0..site.tags.size) %}{% unless forloop.last %}
    {% capture this_word %}{{ tags_list[item] | strip_newlines }}{% endcapture %}
    <a href="./tags.html#{{ this_word }}"><span>{{ this_word }}</span></a> [<span>{{ site.tags[this_word].size }}</span>] 
  {% endunless %}{% endfor %}
</ul>
