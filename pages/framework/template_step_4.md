---
layout: diagram-page
title: 4. {{title}}
type: Formats & representation
excerpt_separator: <!--more-->
cff_properties:
  id: step_4
  type: template_step
  title: Convert to standard formats
  description: This step establishes which community or domain standards, profiles, formats and serialisations will be used to represent the research object and applies and validates them in ways that support the intended uses.
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

Standards can make research objects easier to interpret, exchange, process and combine across people, tools, services and communities. They can define required information, structural elements, datatypes, relationships, metadata, file formats, serialisations, packaging arrangements, terminology requirements and conformance rules.

A standard is not necessarily the same as a file format. A file may use a common format without complying with a community standard, while a standard may support several formats or serialisations. A research object can require more than one standard or representation.

{% assign step_id = page.cff_properties.id %}
{%- assign step = site.cff[step_id] %}
{% for cap_item_id in step.capabilities %}
{%- assign cap = site.cff[cap_item_id] %}
### {{ cap.title }}
{{ cap.description }}

#### Resources
{% include cff_library_items.md.liquid cff_id=cap_item_id %}

{%- endfor %}