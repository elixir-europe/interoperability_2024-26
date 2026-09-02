---
layout: diagram-page
title: Course of action
excerpt_separator: <!--more-->
toc: false
cff_properties:
  id: templated_steps
  type: templated_steps
  title: Course of action
  description: Concrete tasks commonly encountered across FAIRification efforts. While the Template presents the different steps in a recommended logical sequence, not all steps will be required for, nor relevant to each FAIRification scenario.
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

{{ page.cff_properties.description }}

Each step is linked to related capabilities across three dimensions: *Hosting environment*, *Representation & format*, and *Content & context*. 

<!--more-->

<div class="language-mermaid colouring">
{% include cff_process_diagram.mmd.liquid 
    cff_id="templated_steps"
%}
</div>

<div class="row row-cols-1 row-cols-md-2 row-cols-lg-2 g-4 mb-5 navigation-tiles">
{% for step in page.cff_properties.flow.phases %}
{%- assign source = site.cff[step].capabilities_model %}
{%- assign title = site.cff[step].title %}
{%- assign description = site.cff[step].description %}
    <div class="col" data-affiliations="">
        <div class="card h-100">
            <div class="card-body d-flex flex-column">
                <div class="d-flex align-items-center">
                    <span class=""><small>{{ site.cff[source].title }}</small></span>
                </div>
                <a class="stretched-link section-title" href="{{site.cff[step].page_url | relative_url}}">
                    <b>{{forloop.index}}. {{ title }}</b>
                </a>
                <p class="card-text h-100">{{ description }}</p>
            </div>
        </div>
    </div>
{%- endfor %}
</div>
