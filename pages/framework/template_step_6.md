---
layout: diagram-page
title: 6. {{title}}
type: Formats & representation
excerpt_separator: <!--more-->
cff_properties:
  id: step_6
  type: template_step
  title: Transform for broad reusability
  description: Not only would you represent the data in one ontology but also link or map to corresponding ontologies such that the data is interoperable with multiple vocabularies and terminologies rather than just one.
  capabilities_model: representation
  capabilities: 
    - ft-identifier-mapping
    - ft-vocabulary-alignment
    - ft-data-model-mapping
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