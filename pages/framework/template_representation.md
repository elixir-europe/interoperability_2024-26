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
    title: Standards discovery and reuse
    description: |
      Find, assess and choose existing standards, profiles, formats and serialisations that can represent the research object in ways that support the FAIRification goal and intended uses.

      This capability includes identifying standards used by relevant communities, determining what each standard covers and assessing whether it can represent the selected domain model, identifiers, metadata, components and relationships.

      The capability can be provided through project expertise but also through authoritative guidelines from communities, standards registries, target repositories/hosting environments, standards organisations or other infrastructure providers.
  ft-data-standards-development:
    title: Developing standards
    description: |
      Create, profile, extend and maintain a specification where existing standards cannot adequately represent the research object or support the intended uses.

      This can include creating a new standard, but it also includes less extensive approaches such as defining a community profile, adding constraints, developing an extension or proposing changes to an established standard.
      Standards development usually requires coordination beyond the immediate FAIRification team. Domain communities, intended users, standards maintainers, repositories, software developers and other implementers may need to participate. An important question to ask is whether the required development capability can be established through collaboration.

      This capability should be considered only after relevant existing standards and profiles have been examined.
  ft-apply-data-standards:
    title: Applying standards
    description: |
      Create or transform research objects so that they conform to selected standards, profiles, formats and serialisations.

      This includes applying standards when a research object is first created and applying them retrospectively to existing research objects. It may involve restructuring content, converting formats, generating metadata, packaging components, preserving identifiers and provenance, and documenting transformation decisions.

      The capability can be provided through data-processing tools, export services, repository submission workflows, conversion libraries, schemas, templates, and specialists in the implementation team.
  ft-validate-against-data-standards:
    title: Validating against standards
    description: |
      Assess whether a research object representation conforms to the requirements of a specified standard, version, profile or extension.

      This can include syntactic, structural, schema-based, semantic, rules-based, completeness and cross-component validation. Different validation mechanisms may be required for different parts of a compound research object.

      Validation establishes conformance with defined requirements. It does not by itself establish that the research object is FAIR, scientifically correct or suitable for every intended use.

      The capability can be provided through official validators, schemas, repository submission checks, testing frameworks, quality-control workflows, community services or manual expert review.
  ft-identifier-mapping:
    title: Identifier mapping
    description: |
      Establish and maintain documented relationships between identifiers used by different schemes, authorities, repositories or systems.

      This capability allows integrations to recognise when identifiers refer to the same subject or to subjects connected through version, component, derivation, replacement or other defined relationships. Since mapping are not always assertions of an exact identity match, the relations should be stated explicitly:

      * Exactly the same subject.  
      * Different records describing the same subject.  
      * Different versions or releases.  
      * A collection and one of its components.  
      * An original and a derived research object.  
      * A deprecated and replacement identifier.  
      * Closely related but distinct subjects.

      The capability may be provided through authoritative registries, repository cross-references, identifier-resolution services, community mapping resources, lookup services or project-maintained mappings (that themselves can be shared).
  ft-vocabulary-alignment:
    title: Vocabulary alignment
    description: |
      Establish and maintain documented semantic relationships between concepts from different controlled vocabularies, terminologies, taxonomies or ontologies.

      This capability allows the concepts used in the canonical representation to be interpreted or translated for communities and systems that use other semantic resources. Possible alignment relationships include:

      * Exact match.  
      * Close match.  
      * Broader match.  
      * Narrower match.  
      * Related match.  
      * Context-dependent correspondence.  
      * Composite or one-to-many correspondence.  
      * No suitable match.

      The capability may be provided through mappings published by vocabulary authorities, community alignment projects, ontology services, mapping registries, specialist tools or project-generated mapping sets.
  ft-data-model-mapping:
    title: Model mapping
    description: |
      Relate entities, properties, relationships, structures and constraints across domain, data, metadata or structural models. 

      This capability connects the canonical model and representation to the models expected by target communities, repositories, services, tools and workflows. Model mapping may describe conceptual correspondences, structural crosswalks or executable transformation rules. 

      Mappings are not limited to one-to-one equivalence. A source element may correspond to several target elements, several source elements may be combined, or a target value may need to be derived.

      The capability may be provided through standards crosswalks, repository mappings, schemas, transformation specifications, ETL workflows, query languages or project-developed mapping artefacts.
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
