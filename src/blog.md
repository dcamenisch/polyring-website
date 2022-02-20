---
title: My Blog
layout: blog.njk
---

This is my personal blog 📔. Here I try to write about anything I find interesting 🔎 and that I want to share. I got inspired to try this by the other blogs on the [Polyring](https://polyring.ch), go check them out! By no means will I provide content on a regular basis, as until now I did not really find writing that enjoyable. But lets see where this is gonna take me!

{% for page in collections.blogposts %}
<div class="blog-entry"> 
<a href="{{ page.url | url }}"><h2> {{ page.data.title }}</h2></a>
<h3>{{ page.data.desc }}</h3>
</div>
{%- endfor %}

