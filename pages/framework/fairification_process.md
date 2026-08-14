---
title: The FAIRification Process
layout: diagram-page
cff_properties:
  id: process
  type: process
  title: Common FAIRification Process
  flow:
    pre_annotation: |-
      FAIR compliance
      challenges & 
      use cases
    post_annotation: |-
      Uses and research 
      impact realised by 
      FAIR implementation
    phases:
      - phase_1
      - phase_2
      - phase_3
      - phase_4
---
<div class="language-mermaid colouring">
{% include cff_process_diagram.mmd.liquid %}
</div>


The FAIRification Process structures the FAIRification project into 4 distinct phases described below.
{% assign pages = page.cff_properties.flow.phases %}
{% for p in pages %}
1. **[{{ site.cff[p].title }}]({{ site.cff[p].page_url | relative_url }})**\
   {{ site.cff[p].description }}
{% endfor %}


