---
layout: diagram-page
title: 7. {{title}}
type: Hosting environments
excerpt_separator: <!--more-->
cff_properties:
  id: step_7
  type: template_step
  title: Deploy to hosting solutions
  description: Once the dataset is ready, hosting and search engine optimization inputs for the dataset need to be in place. Alongside hosting, data versioning and data formats need to also be considered.
  capabilities_model: hosting
  capabilities: 
    - ft-data-hosting
    - ft-data-versioning
    - ft-data-transfer
---

<div class="language-mermaid">
{% include cff_process_diagram.mmd.liquid 
    cff_id="templated_steps" 
    highlight=page.cff_properties.id
%}
</div>
{{page.cff_properties.description}}


<!--more-->

{% assign step_id = page.cff_properties.id %}
{%- assign step = site.cff[step_id] %}
{% for cap_item_id in step.capabilities %}
{%- assign cap = site.cff[cap_item_id] %}
### {{ cap.title }}
{{ cap.description }}

#### Resources
{% include cff_library_items.md.liquid cff_id=cap_item_id %}

{%- endfor %}