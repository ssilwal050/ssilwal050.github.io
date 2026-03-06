---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% if site.author.googlescholar %}
  <div style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); color: white; padding: 1.5em; border-radius: 8px; margin-bottom: 2em; box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);">
    <p style="margin: 0; font-size: 1.1em;">
      📖 You can also find my articles on <a href="https://scholar.google.com/citations?hl=en&user=RZAbmdMAAAAJ" target="_blank" style="color: #fff; text-decoration: underline; font-weight: bold;">my Google Scholar profile</a>
    </p>
  </div>
{% endif %}

{% include base_path %}

{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}