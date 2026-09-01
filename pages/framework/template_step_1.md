---
layout: diagram-page
title: 1. {{title}}
type: Hosting environments
toc: false
excerpt_separator: <!--more-->
cff_properties:
  id: step_1
  type: template_step
  title: Obtain the research object
  description: This step establishes how the project team will obtain the research object and the metadata, documentation, dependencies and provenance required to be able to analyse and work on it.
  capabilities_model: hosting
  capabilities: 
    - ft-data-access
    - ft-data-retrieval
---
<div class="language-mermaid">
{% include cff_process_diagram.mmd.liquid 
    cff_id="templated_steps" 
    highlight=page.cff_properties.id
%}
</div>

{{page.cff_properties.description}}

<!--more-->


Access may be open or controlled and may be provided through an API, query interface, repository download, version-control system, bulk-transfer service, object store or secure processing environment. The output may be a local or staged working copy, or authorised access within an environment where the object cannot be exported.

This step requires sufficient information to repeat and verify acquisition. It does not focus on the final exchange formats or the eventual release mechanism for the FAIRified research object.

The hosting environment considered here acts as a source for the FAIRification activity. It may also be retained, improved or complemented as a target environment where the FAIRified research object is deployed to in a later step. Where limitations in its access or retrieval capabilities need to be addressed, record these as potential tasks for later implementation.

During project examination you can use the related capabilities as a guide to determine what access and retrieval capabilities are required, what is already available and what gaps could prevent the work from proceeding. 

During an implementation cycle, you can use the related capabilities to identify potential tasks and relevant resources to establish and validate the required access and retrieval arrangements.


{% assign step_id = page.cff_properties.id %}
{%- assign step = site.cff[step_id] %}
{% for cap_item_id in step.capabilities %}
{%- assign cap = site.cff[cap_item_id] %}
### {{ cap.title }}
{{ cap.description }}

#### Resources
{% include cff_library_items.md.liquid cff_id=cap_item_id %}

{%- endfor %}