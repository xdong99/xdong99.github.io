---
layout: page
permalink: /publications/
title: Publications
description: 
years: [2025, 2022]
nav: true
nav_order: 2
---

<!-- _pages/publications.md -->
<p>
For full list, see my 
  <a href="https://scholar.google.com/citations?user=xttYlC4AAAAJ" target="_blank" rel="noopener noreferrer">
    Google Scholar profile
  </a>.
</p>

<div class="publications">

{%- for y in page.years %}
  <!-- <h2 class="year">{{y}}</h2> -->
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>
