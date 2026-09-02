---
title: The FAIRification Template
layout: diagram-page
cff_properties:
  id: template
  type: template
  title: FAIRification template
  description: Outlines a general course of action in eight steps with links to related capabilities across the dimensions Hosting, Format and Content
  steps: templated_steps
  capabilities:
    - hosting
    - representation
    - content
---

The Template is not required but can be a helpful place to start, as it offers links to guidance for tasks commonly encountered across FAIRification efforts.

### {{ site.cff.templated_steps.title }}
{{ site.cff.templated_steps.excerpt -}}


<div class="language-mermaid colouring">
{% include cff_process_diagram.mmd.liquid 
    cff_id="templated_steps"
%}
</div>

{% assign pages = page.cff_properties.capabilities %}
{% for p in pages %}

### {{ site.cff[p].title }}
{{ site.cff[p].excerpt -}}


<div class="language-mermaid colouring">
{% include cff_template_diagram.mmd.liquid cff_ids=p %}
</div>
{% endfor %}

