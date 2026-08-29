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
---
<div class="language-mermaid colouring">
{% include cff_process_diagram.mmd.liquid 
    cff_id="templated_steps"
%}
</div>

The FAIRification Template supports the FAIRification Process by outlining a general course of action in  
eight steps with links to related capabilities across three dimensions:
* **Hosting environment**   
  e.g., research object access, retrieval, versioning, etc.  
* **Formats & representation**   
  e.g., applying standards and aligning vocabularies, etc.  
* **Content & context**  
  e.g., identifier minting and annotation with controlled vocabularies, etc

<div class="language-mermaid colouring">
{% include cff_template_diagram.mmd.liquid %}
</div>

The Template supports users as needed by offering concrete tasks commonly encountered across FAIRification efforts. While the Template presents the different steps in a recommended logical sequence (e.g. research object cannot be transformed to an interoperable research object model if no such model exists or if the research object type is not properly understood), not all steps will be required for, nor relevant to each FAIRification scenario.


{% assign pages = page.cff_properties.capabilities | unshift: page.cff_properties.steps %}
{% for p in pages %}
### {{ site.cff[p].title }}
{{ site.cff[p].excerpt -}}
Continue reading: [{{ site.cff[p].title }}]({{ site.cff[p].page_url | relative_url }})
{% endfor %}

