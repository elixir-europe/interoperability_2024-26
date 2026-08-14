---
title: The FAIRification Template
layout: diagram-page
cff_properties:
  id: template
  type: template
  title: FAIRification template
  steps: templated_steps
  capabilities:
    - hosting
    - representation
    - content
cff_elements:
  templated_steps:
    type: templated_steps
    title: Course of action
    flow:
      phases:
        - step_1
        - step_2
        - step_3
        - step_4
        - step_5
        - step_6
        - step_7
        - step_8
---
<div class="language-mermaid colouring">
{% include cff_process_diagram.mmd.liquid 
    cff_id="templated_steps"
%}
</div>

The FAIRification Template operationalizes the FAIRification Process by outlining a set of clear, distinct steps for the implementation stage within the FAIRification Cycle. It comprises eight steps (covering) grouped in 3 main dimensions :  
* hosting capabilities (e.g., data access, data retrieval, versioning, etc.)
* data representation and format (e.g., applying data standards and aligning vocabularies, etc.)
* data content (e.g., identifier minting and annotation with controlled vocabularies, etc)  

<div class="language-mermaid colouring">
{% include cff_template_diagram.mmd.liquid %}
</div>

The Template supports users as needed by offering concrete tasks commonly encountered across FAIRification efforts. While the Template presents the different steps in a recommended logical sequence (e.g. data cannot be transformed to an interoperable data model if no such model exists or if the data type is not properly understood), not all steps will be required for, nor relevant to each FAIRification scenario.

{% assign pages = page.cff_properties.capabilities %}
{% for p in pages %}
### {{ site.cff[p].title }}
{{ site.cff[p].excerpt -}}
Continue reading: [{{ site.cff[p].title }}]({{ site.cff[p].page_url | relative_url }})
{% endfor %}

