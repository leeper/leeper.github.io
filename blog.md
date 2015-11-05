---
title: Posts
layout: default
---

<h3><a href="http://thomasleeper.com/blog.html">Blog</a> > {{ page.title}} </h3>

<h2>Latest Post: <a href="{{ site.url }}{{ site.posts.first.url }}">{{ site.posts.first.title }}</a></h2>
{{ site.posts.first.excerpt }}

<h2>Past Posts</h2>

<ul class="listing">
{% for post in site.posts %}
  {% capture y %}{{post.date | date:"%Y"}}{% endcapture %}
  {% if year != y %}
    {% assign year = y %}
    <b>{{ y }}</b>
  {% endif %}
  <li class="listing-item">
    <time datetime="{{ post.date | date:"%Y-%m-%d" }}">{{ post.date | date:"%Y-%m-%d" }}</time>
    <a href="{{ site.url }}{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a>
  </li>
{% endfor %}
</ul>

<a href="http://thomasleeper.com/feed.xml">[RSS Feed]</a>

<h2>Tags</h2>

<div id='tag_cloud'>
{% for tag in site.tags %}
<a href="blog/tags.html#{{ tag[0] }}" title="{{ tag[0] }}" rel="{{ tag[1].size }}">{{ tag[0] }}</a>
{% endfor %}
</div>

<script src="http://www.thomasleeper.com/js/jquery.tagcloud.js" type="text/javascript" charset="utf-8"></script> 
<script language="javascript">
$.fn.tagcloud.defaults = {
    size: {start: 1, end: 1, unit: 'em'},
      color: {start: '#f8e0e6', end: '#ff3333'}
};

$(function () {
    $('#tag_cloud a').tagcloud();
});
</script>
