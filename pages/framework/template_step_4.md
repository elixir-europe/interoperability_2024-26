---
layout: diagram-page
title: 4. {{title}}
type: Formats & representation
excerpt_separator: <!--more-->
cff_properties:
  id: step_4
  type: template_step
  title: Convert to standard formats
  description: At this step, data standard validation and identification is done to ensure that the representation of the data is in community or domain specified formats for interoperability purposes.
  capabilities_model: representation
  capabilities: 
    - ft-data-standards-reuse
    - ft-data-standards-development
    - ft-apply-data-standards
    - ft-validate-against-data-standards
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