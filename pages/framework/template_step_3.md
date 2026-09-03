---
layout: diagram-page
title: 3. {{title}}
type: Content & context
excerpt_separator: <!--more-->
cff_properties:
  id: step_3
  type: template_step
  title: Select identifier schemes
  description: This step defines what needs to be assigned an identifier and selects appropriate identifier schemes. Established identifiers should be reused where possible, with new unique, persistent and resolvable identifiers introduced only where required.
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

Identifiers allow research objects, their versions, components and the entities they describe to be referenced unambiguously across systems and over time. Appropriate identifiers support discovery, citation, provenance, linking, integration and reproducibility.

A FAIRification activity may require several identifier schemes. Different schemes may be appropriate for the research object as a whole, individual objects, versions, components, domain entities, people, organisations, instruments and related resources.

This step builds on the research object inventory established in Step 1 and the types, relationships and domain model defined in Step 2. These determine what needs to be identified, at what level of granularity and for which intended uses.

An identifier scheme includes more than the identifier’s syntax. It also includes its namespace, issuing authority, uniqueness scope, resolution mechanism, persistence commitment and lifecycle policy.
Not every internal component requires a globally resolvable persistent identifier. The level of identification should be proportionate to the intended uses, while ensuring that research objects and components that need to be independently discovered, cited, accessed, versioned or referenced can be identified reliably.

Use this step during project examination to inventory existing identifiers, define identifier requirements, assess candidate schemes and identify dependencies. During an implementation cycle, use it to reuse established identifiers, mint new identifiers where needed and validate the resulting identification and resolution arrangements.

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