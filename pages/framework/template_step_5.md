---
layout: diagram-page
title: 5. {{title}}
type: Content & context
excerpt_separator: <!--more-->
cff_properties:
  id: step_5
  type: template_step
  title: Harmonise content elements
  description: This step establishes which controlled vocabularies, terminologies and ontologies will be used to describe the research object and its associated metadata, and applies their terms in ways that support consistent interpretation and reuse.
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

Semantic resources provide agreed identifiers, labels, definitions and relationships for concepts. They can make the meaning of research object content and metadata clearer to people and machines and help different research objects, services and communities refer consistently to the same concepts.
A controlled vocabulary may define a permitted list of values, while an ontology may also provide formal relationships and constraints. The FAIRification activity should select the level of semantic detail needed for its intended uses.
Use this step during project examination to identify semantic requirements, inventory current vocabulary use, assess available capabilities and select candidate resources. During an implementation cycle, use it to extend or develop semantic resources where necessary, apply annotations and establish the required management arrangements.

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