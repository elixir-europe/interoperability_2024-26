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
---
<div class="language-mermaid figure-img img-fluid rounded">
{% include cff_process_diagram.mmd.liquid %}
</div>


The FAIRification Process structures the FAIRification project into 4 distinct phases described below.


{% assign documentation_pages = site.pages | where_exp: "item", "item.path contains 'phase_'" %}
{% for p in documentation_pages %}
### {{ p.title }}
{{ p.excerpt }}
Continue reading: [{{ p.title }}]({{ p.url | relative_url }})
{% endfor %}


