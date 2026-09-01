---
layout: diagram-page
title: 2. {{title}}
type: Content & context
excerpt_separator: <!--more-->
cff_properties:
  id: step_2
  type: template_step
  title: Adopt a domain model
  description: This step establishes a shared understanding of the types of research objects, components, domain concepts and relationships involved in the FAIRification activity, and selects or defines a domain model to guide the work.
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

A domain model describes the entities, concepts, properties, relationships and constraints that are relevant to a particular subject area or intended use. It provides a conceptual basis for later decisions about identifiers, metadata, standards, vocabularies, mappings and hosting.
The model may already be explicit in a schema, metadata profile or community specification. It may instead be implicit in the structure, documentation or practices surrounding the existing research object. The project may reuse an established model, adapt or extend one, combine compatible models, or define a new model where no suitable option exists.

This step builds on the research object scope, component inventory, metadata, documentation, provenance and dependencies obtained in Step 1. It identifies what the current research object represents, what the intended uses require and where the current and required models differ.
Adopting a domain model does not mean that the research object must be transformed immediately. This step makes and records the modelling decisions that will guide implementation in later Template steps.

Use this step during project examination to identify relevant types, models and requirements and to compare the current and required states. During an implementation cycle, use it to select, adapt or define the domain model that will guide the agreed FAIRification work.


{% assign step_id = page.cff_properties.id %}
{%- assign step = site.cff[step_id] %}
{% for cap_item_id in step.capabilities %}
{%- assign cap = site.cff[cap_item_id] %}
### {{ cap.title }}
{{ cap.description }}

#### Resources
{% include cff_library_items.md.liquid cff_id=cap_item_id %}

{%- endfor %}