---
layout: diagram-page
title: 2. {{title}}
type: Content & context
excerpt_separator: <!--more-->
cff_properties:
  id: step_2
  type: template_step
  title: Adopt a domain model
  description: Here, the data types involved in the dataset are identified. Also, the community or domain standards for representation of the data are also captured to align the FAIRification work, if any, along those lines.
  capabilities_model: content
  capabilities: 
    - ft-identify-data-types
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