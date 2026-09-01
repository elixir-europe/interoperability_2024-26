---
title: Library
toc: false
excerpt_separator: <!--more-->
cff_properties:
  id: library
  catalogues:
    - faircookbook
    - fairmetroline
    - rdmkit
    - elixirstories
  structure:
    process:
      phase_1:
      phase_2:
      phase_3:
      phase_4:
    template:
      step_1:
        ft-data-access:
        ft-data-retrieval:
      step_2:
        ft-identify-data-types:
      step_3:
        ft-identifier-minting:
        ft-identifier-reuse:
      step_4:
        ft-data-standards-reuse:
        ft-data-standards-development:
        ft-apply-data-standards:
        ft-validate-against-data-standards:
      step_5:
        ft-select-data-vocabularies:
        ft-develop-data-vocabularies:
        ft-anotate-with-data-vocabularies:
        ft-manage-vocabularies:
      step_6:
        ft-identifier-mapping:
        ft-vocabulary-alignment:
        ft-data-model-mapping:
      step_7:
        ft-data-hosting:
        ft-data-versioning:
        ft-data-transfer:
      step_8:
        ft-data-licensing:
        ft-data-anonymisation:
        ft-data-release:
      hosting:
      representation:
      content:
---

{% assign cats = page.cff_properties.catalogues %}

<div class="row row-cols-1 row-cols-md-2 row-cols-lg-2 g-4 mb-5 navigation-tiles">
{%- assign steps = page.cff_properties.catalogues %}
{% for step_id in steps %}
{%- assign step = site.cff[step_id] %} 
    <div class="col" data-affiliations="">
        <div class="card h-100">
            <div class="card-body d-flex flex-column">
                <div class="d-flex align-items-center">
                    <span class=""><small>FAIRification resource</small></span>
                </div>
                <a class="stretched-link section-title" href="{{step.page_url | relative_url}}">
                    <b>{{step.title}}</b>
                </a>
                <div class="card-text h-100">{{ step.description }}</div>
            </div>
        </div>
    </div>
{%- endfor %}
</div>