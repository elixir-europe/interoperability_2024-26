---
layout: diagram-page
title: Content & context
excerpt_separator: <!--more-->
cff_properties:
  id: content
  title: Content
  description: |-
    How the data object & metadata object are represented and formatted.
  capabilities: 
    - ft-identify-data-types
    - ft-identifier-minting
    - ft-identifier-reuse
    - ft-select-data-vocabularies
    - ft-develop-data-vocabularies
    - ft-anotate-with-data-vocabularies
    - ft-manage-vocabularies
cff_elements:
  ft-identify-data-types:
    title: Identify data types
    description: Data type identification informs the selection of appropriate data standards, ontologies and target repositories
  ft-identifier-minting:
    title: Identifier minting
    description: How to create unique, persistent and resolvable identifiers
  ft-identifier-reuse:
    title: Reusing community identifiers
    description: How to reuse existing identifiers in a dataset
  ft-select-data-vocabularies:
    title: Selecting data vocabularies
    description: How to select the most appropriate vocabularies to annotate a dataset
  ft-develop-data-vocabularies:
    title: Developing data vocabularies
    description: How to develop new vocabularies from scratch
  ft-anotate-with-data-vocabularies:
    title: Annotating with data vocabularies
    description: How to annotate data and metadata with terms from vocabularies
  ft-manage-vocabularies:
    title: Managing vocabularies
    description: How to manage vocabularies and ontologies
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
                <div><strong>Resources:</strong>
                {% include cff_library_items.md.liquid cff_id=cap_id %}
                </div>
            </div>
        </div>
    </div>
{%- endfor %}
{%- endfor %}
</div>

### Resources
{% include cff_library_items.md.liquid cff_id=page.cff_properties.id %}
