---
layout: diagram-page
title: 6. {{title}}
type: Formats & representation
excerpt_separator: <!--more-->
cff_properties:
  id: step_6
  type: template_step
  title: Transform to match use cases
  description: This step creates mappings, translations and alternative representations that allow the research object to meet integration and interoperability requirements of the primary  use cases.
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

Different communities, repositories, services, tools and workflows may use other identifier schemes, vocabularies, models or representations. This step connects the canonical representation, developed through the previous steps, to those external requirements through documented mappings and transformations.

An alternative representation may be stored, generated on demand or exposed through a service. Its relationship to the canonical representation and its status as an authoritative, derived, provisional or application-specific representation should be explicit.

This step does not require every transformation to be bidirectional or lossless. A one-way or simplified representation may be appropriate where it meets the intended use, provided that its direction, limitations and information loss are documented.

Use this step during project examination to identify integration requirements, assess available mapping and transformation capabilities and define the required outputs. During an implementation cycle, use it to create, apply and validate the mappings, translations and alternative representations within scope.

<div class="language-mermaid">
{% assign highlight = page.cff_properties.capabilities | join: "," %}
{% include cff_template_diagram.mmd.liquid 
    cff_ids=page.cff_properties.capabilities_model 
    highlight=highlight
%}
</div>

{% assign step_id = page.cff_properties.id %}
{%- assign step = site.cff[step_id] %}
{% for cap_item_id in step.capabilities %}
{%- assign cap = site.cff[cap_item_id] %}
### {{ cap.title }}
{{ cap.description }}

#### Resources
{% include cff_library_items.md.liquid cff_id=cap_item_id %}

{%- endfor %}