---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

<style>
.pub-section-title {
  font-size: 0.75rem;
  font-weight: 700;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  color: #1a7a6e;
  margin: 2em 0 0.8em;
  padding-bottom: 6px;
  border-bottom: 2px solid #d0e8f0;
}
.scholar-banner {
  display: flex;
  align-items: center;
  gap: 12px;
  background: #f0f8fa;
  border: 1px solid #d0e8f0;
  border-left: 4px solid #1a7a6e;
  padding: 14px 18px;
  border-radius: 8px;
  margin-bottom: 2em;
  font-size: 0.9rem;
  color: #0e4d6b;
}
.scholar-banner a {
  color: #1a7a6e;
  font-weight: 600;
  text-decoration: none;
}
.scholar-banner a:hover {
  text-decoration: underline;
}
.pub-card {
  background: #fff;
  border: 1px solid #d0e8f0;
  border-radius: 8px;
  padding: 16px 18px;
  margin-bottom: 12px;
  transition: box-shadow 0.2s, transform 0.2s;
  position: relative;
}
.pub-card:hover {
  box-shadow: 0 4px 14px rgba(14, 77, 107, 0.1);
  transform: translateY(-2px);
}
.pub-badge {
  display: inline-block;
  font-size: 0.65rem;
  font-weight: 700;
  letter-spacing: 0.05em;
  text-transform: uppercase;
  padding: 2px 9px;
  border-radius: 20px;
  margin-bottom: 8px;
}
.badge-journal {
  background: #e0f2f1;
  color: #00695c;
}
.badge-preprint {
  background: #fff3e0;
  color: #e65100;
}
.badge-conference {
  background: #e8eaf6;
  color: #283593;
}
.pub-title {
  font-size: 0.95rem;
  font-weight: 600;
  color: #0e4d6b;
  margin: 0 0 5px;
  line-height: 1.4;
}
.pub-authors {
  font-size: 0.8rem;
  color: #557;
  margin: 0 0 4px;
}
.pub-authors strong {
  color: #0e4d6b;
}
.pub-venue {
  font-size: 0.8rem;
  color: #1a7a6e;
  font-style: italic;
  margin: 0 0 10px;
}
.pub-links {
  display: flex;
  flex-wrap: wrap;
  gap: 6px;
}
.pub-link {
  font-size: 0.72rem;
  font-weight: 600;
  padding: 3px 10px;
  border-radius: 20px;
  text-decoration: none;
  border: 1px solid;
  transition: background 0.15s;
}
.link-pdf   { color: #c62828; border-color: #c62828; }
.link-doi   { color: #0e4d6b; border-color: #0e4d6b; }
.link-code  { color: #1a7a6e; border-color: #1a7a6e; }
.link-arxiv { color: #b26a00; border-color: #b26a00; }
.pub-link:hover { background: #f0f8fa; }
</style>

{% if site.author.googlescholar %}
<div class="scholar-banner">
  📖 Find my full list of articles on
  <a href="https://scholar.google.com/citations?hl=en&user=RZAbmdMAAAAJ" target="_blank">
    Google Scholar ↗
  </a>
</div>
{% endif %}

{% include base_path %}

<p class="pub-section-title">Journal Articles</p>

<div class="pub-card">
  <span class="pub-badge badge-journal">Journal Article</span>
  <p class="pub-title">Parameter-Expanded Data Augmentation for Analyzing Discrete Nominal Measures with Missing Values Using Multinomial Probit Models</p>
  <p class="pub-authors"><strong>Silwal, S.</strong>, & [Co-authors]</p>
  <p class="pub-venue">The American Statistician, May 2025</p>
  <div class="pub-links">
    <a class="pub-link link-doi" href="#">DOI ↗</a>
    <a class="pub-link link-pdf" href="#">PDF ↗</a>
    <a class="pub-link link-code" href="#">Code ↗</a>
  </div>
</div>

<p class="pub-section-title">Conference Papers & Presentations</p>

{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}