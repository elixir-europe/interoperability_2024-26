---
title: The FAIRification Process
layout: diagram-page
---
{% include image.html file="framework/FAIRificationProcess-menu-00.png" alt="FAIRificationProcess-menu-00" %}

The FAIRification Process structures the FAIRification project into 4 distinct phases described below.


{% assign documentation_pages = site.pages | where_exp: "item", "item.path contains 'phase_'" %}
{% for p in documentation_pages %}
### {{ p.title }}
{{ p.excerpt }}
Continue reading: [{{ p.title }}]({{ p.url | relative_url }})
{% endfor %}


