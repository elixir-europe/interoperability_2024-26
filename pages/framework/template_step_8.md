---
layout: diagram-page
title: 8. {{title}}
type: Hosting environments
excerpt_separator: <!--more-->
cff_properties:
  id: step_8
  type: template_step
  title: Activate sharing and reuse
  description: Now that the dataset is FAIRified, one can share this data to the community with licensing. In case of dealing with sensitive data, data anonymization considerations should be placed prior to sharing.
  capabilities_model: hosting
  capabilities: 
    - ft-data-licensing
    - ft-data-anonymisation
    - ft-data-release
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