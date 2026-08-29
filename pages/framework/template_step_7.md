---
layout: diagram-page
title: 7. {{title}}
type: Hosting environments
excerpt_separator: <!--more-->
cff_properties:
  id: step_7
  type: template_step
  title: Deploy to hosting environments
  description: This step deploys the research object, its alternative representations and any supporting resources to one or more hosting environments that meet the functional, operational, security and preservation requirements of the FAIRification activity.
  capabilities_model: hosting
  capabilities: 
    - ft-data-hosting
    - ft-data-versioning
    - ft-data-transfer
---

<div class="language-mermaid">
{% include cff_process_diagram.mmd.liquid 
    cff_id="templated_steps" 
    highlight=page.cff_properties.id
%}
</div>
{{page.cff_properties.description}}


<!--more-->

A hosting environment may be a domain repository, general-purpose repository, institutional service, object store, package registry, version-control platform, workflow repository, catalogue, knowledge-graph platform, secure processing environment or project-operated infrastructure.

The environment from which the research object was obtained may be retained, upgraded or complemented as part of the deployment. Source and target are roles: they may be fulfilled by the same environment, by overlapping services or by different systems.

Deployment does not have to wait until every FAIRification task is complete. Canonical and alternative representations may be deployed iteratively to development, staging or production environments during successive FAIRification cycles.


{% assign step_id = page.cff_properties.id %}
{%- assign step = site.cff[step_id] %}
{% for cap_item_id in step.capabilities %}
{%- assign cap = site.cff[cap_item_id] %}
### {{ cap.title }}
{{ cap.description }}

#### Resources
{% include cff_library_items.md.liquid cff_id=cap_item_id %}

{%- endfor %}