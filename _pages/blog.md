---
layout: archive
permalink: /blog/
title: "Blog"
author_profile: true
---

{% for post in site.posts %}
  {% include archive-single.html %}
{% endfor %}