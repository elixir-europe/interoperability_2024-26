---
layout: diagram-page
title: 3. {{title}}
type: Content & context
excerpt_separator: <!--more-->
cff_properties:
  id: step_3
  type: template_step
  title: Select an identifier scheme
  description: Here, the establishment of an identifier for identification of the dataset is done. This could be achieved by generation of new identifiers or reusing of existing ones
  capabilities_model: content
  capabilities: 
    - ft-identifier-minting
    - ft-identifier-reuse
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