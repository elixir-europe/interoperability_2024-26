---
layout: diagram-page
title: Formats & representation
excerpt_separator: <!--more-->
cff_properties:
  id: representation
  title: Formats
  description: |-
    What is reported in the Dataset (data) & the Dataset Descriptor (metadata)
  capabilities: 
    - ft-data-standards-reuse
    - ft-data-standards-development
    - ft-apply-data-standards
    - ft-validate-against-data-standards
    - ft-identifier-mapping
    - ft-vocabulary-alignment
    - ft-data-model-mapping
cff_elements:
  ft-data-standards-reuse:
    title: Reusing existing data standards
    description: How to reuse existing data standards
  ft-data-standards-development:
    title: Developing data standards
    description: How to develop a new data standard if no appropriate standards exist
  ft-apply-data-standards:
    title: Applying data standards
    description: How to apply data standards to datasets, especially retroactively
  ft-validate-against-data-standards:
    title: Validating against data standards
    description: How to use validation to ensure that a dataset is compliant with a data standard
  ft-identifier-mapping:
    title: Identifier mapping
    description: How to map between different types of equivalent identifiers
  ft-vocabulary-alignment:
    title: Vocabulary alignment
    description: How to map between different equivalent vocabulary terms
  ft-data-model-mapping:
    title: Data model mapping
    description: How to map equivalent concepts from different data models

---

{{ page.cff_properties.description }}

<!--more-->

<div class="row row-cols-1 row-cols-md-2 row-cols-lg-2 g-4 mb-5 navigation-tiles">
{%- assign steps = site.cff.templated_steps.flow.phases 
                      | where_exp: "e", "site.cff[e].capabilities_model == page.cff_properties.id" %}
{% for step_id in steps %}
{%- assign step = site.cff[step_id] %} 
{%- assign caps = step.capabilities %}
{% for cap_id in caps %}
{%- assign cap = site.cff[cap_id] %} 
    <div class="col" data-affiliations="">
        <div class="card h-100">
            <div class="card-body d-flex flex-column">
                <div class="d-flex align-items-center">
                    <span class=""><small>{{ step.title }}</small></span>
                </div>
                <a class="stretched-link section-title" href="{{step.page_url | relative_url}}">
                    <b>{{cap.title}}</b>
                </a>
                <div class="card-text h-100">{{ cap.description }}</div>
            </div>
        </div>
    </div>
{%- endfor %}
{%- endfor %}
</div>

### Resources
{% include cff_library_items.md.liquid cff_id=page.cff_properties.id %}
