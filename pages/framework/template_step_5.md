---
layout: diagram-page
title: 5. {{title}}
type: Content & context
excerpt_separator: <!--more-->
cff_properties:
  id: step_5
  type: template_step
  title: Harmonise vocabulary elements
  description: At this step, you would look in depth about the data content and harmonize it with ontologies either pre-existing or formulate an application ontology for your use case.
  capabilities_model: content
  capabilities: 
    - ft-select-data-vocabularies
    - ft-develop-data-vocabularies
    - ft-anotate-with-data-vocabularies
    - ft-manage-vocabularies
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