---
layout: diagram-page
title: 1. {{title}}
type: Hosting environments
toc: false
excerpt_separator: <!--more-->
cff_properties:
  id: step_1
  type: template_step
  title: Get from hosting solutions
  description: This step involves getting access to the underlying dataset via a restricted or open access API and capturing information on how to query the data via the API.
  capabilities_model: hosting
  capabilities: 
    - ft-data-access
    - ft-data-retrieval
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