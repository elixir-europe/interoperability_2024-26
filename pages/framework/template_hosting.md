---
layout: diagram-page
title: Hosting environments
excerpt_separator: <!--more-->
cff_properties:
  id: hosting
  type: capability_dimension
  title: Hosting
  description: |-
    Capabilities of the environment(s) where the research objects are hosted and made available for access and distributions. Exchange formats for the research objects are covered under *Formats & representation*, while APIs, indexing and query interfaces are covered here.
  capabilities: 
    - ft-data-access
    - ft-data-retrieval
    - ft-data-hosting
    - ft-data-versioning
    - ft-data-transfer
    - ft-data-licensing
    - ft-data-anonymisation
    - ft-data-release
cff_elements:
  ft-data-access:
    title: Data access
    description: Considerations relating to how data is accessed, eg through APIs, via controlled access
  ft-data-retrieval:
    title: Data retrieval
    description: Considerations relating to data retrieval, eg query language, results representation and exporting capabilities
  ft-data-hosting:
    title: Data hosting
    description: Considerations around data hosting infrastructure such as markup and search engine optimisation
  ft-data-versioning:
    title: Data versioning
    description: Considerations around data versioning
  ft-data-transfer:
    title: Data transfer
    description: Considerations around data transfer such as file formats, repository types and checksumming
  ft-data-licensing:
    title: Data licensing
    description: Data licensing considerations such as data which license is most appropriate for a given scenario
  ft-data-anonymisation:
    title: Data anonymisation
    description: Data anonymisation considerations
  ft-data-release:
    title: Data release
    description: Data release considerations such as when to release a dataset and where to release it
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
