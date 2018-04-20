---
layout: page
title: Tag Archive
description: "An archive of posts sorted by tag."
comments: false
permalink: /tags.html
---

{% capture site_tags %}{% for tag in site.tags %}{{ tag | first }}{% unless forloop.last %},{% endunless %}{% endfor %}{% endcapture %}
{% assign tags_list = site_tags | split:',' | sort %}

<ul>
  {% for item in (0..site.tags.size) %}{% unless forloop.last %}
    {% capture this_word %}{{ tags_list[item] | strip_newlines }}{% endcapture %}
  	<li><a href="#{{ this_word }}"><span>{{ this_word }}</span></a> <span>[{{ site.tags[this_word].size }}]</span></li>
  {% endunless %}{% endfor %}
</ul>

{% for item in (0..site.tags.size) %}{% unless forloop.last %}
  {% capture this_word %}{{ tags_list[item] | strip_newlines }}{% endcapture %}
    <h2 id="{{ this_word }}">{{ this_word }}</h2>
        <ul>
    {% for post in site.tags[this_word] %}{% if post.title != null %}
            <li><a href="{{ site.url }}{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a></li>
    {% endif %}{% endfor %}
        </ul>
{% endunless %}{% endfor %}
