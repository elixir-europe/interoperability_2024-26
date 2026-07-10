---
title: The FAIRification Template
---

{% include image.html file="framework/FAIRplusFAIRificationTemplate-upper-bar.png" caption="The FAIRification Template." alt="FAIRificationTemplate" %}

The FAIRification Template operationalizes the FAIRification Process by outlining a set of clear, distinct steps for the implementation stage within the FAIRification Cycle. It comprises eight steps (covering) grouped in 3 main dimensions :  
* hosting capabilities (e.g., data access, data retrieval, versioning, etc.)
* data representation and format (e.g., applying data standards and aligning vocabularies, etc.)
* data content (e.g., identifier minting and annotation with controlled vocabularies, etc)  

The Template supports users as needed by offering concrete tasks commonly encountered across FAIRification efforts. While the Template presents the different steps in a recommended logical sequence (e.g. data cannot be transformed to an interoperable data model if no such model exists or if the data type is not properly understood), not all steps will be required for, nor relevant to each FAIRification scenario.
  
    
{% include_relative capabilities_domain/hosting.md %}
{% include_relative capabilities_domain/content.md %}
{% include_relative capabilities_domain/representation.md %}