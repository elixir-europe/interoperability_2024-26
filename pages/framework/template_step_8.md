---
layout: diagram-page
title: 8. {{title}}
type: Hosting environments
excerpt_separator: <!--more-->
cff_properties:
  id: step_8
  type: template_step
  title: Activate sharing and reuse
  description: This step authorises and activates the release of the validated research object deployment under appropriate rights, access and privacy conditions, and provides the documentation, support and monitoring needed for its intended reuse.
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


\<\!--more--\>

A research object does not need to be openly accessible to be FAIR. Depending on its content, intended users and applicable conditions, release may be:

* Public and open.  
* Publicly discoverable but available under registered access.  
* Available only to approved users.  
* Available only within a secure processing environment.  
* Embargoed until a defined date or event.  
* Shared with a defined consortium, service or community.  
* Limited to public metadata while the research object remains controlled.  
* Divided into public, controlled and restricted representations.

Rights, privacy and release requirements should be considered throughout the FAIRification activity. This step performs the final review of these requirements against the specific release candidate and authorises the resulting release.

Use this step during project examination to identify rights, privacy, release and reuse-support requirements and the authorities responsible for them. During an implementation cycle, use it to review and approve a release candidate, activate the agreed access mechanisms, publish the required information and establish ongoing support and monitoring.

{% assign step_id = page.cff_properties.id %}
{%- assign step = site.cff[step_id] %}
{% for cap_item_id in step.capabilities %}
{%- assign cap = site.cff[cap_item_id] %}
### {{ cap.title }}
{{ cap.description }}

#### Resources
{% include cff_library_items.md.liquid cff_id=cap_item_id %}

{%- endfor %}