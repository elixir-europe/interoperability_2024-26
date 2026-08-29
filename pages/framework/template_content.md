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
    title: Identify research object types
    description: |
      Identify and describe the types of research objects and components included in the FAIRification activity.

      Research object type identification informs the selection of appropriate domain models, metadata profiles, identifier schemes, standards, vocabularies and target hosting environments. It also helps determine which relationships and dependencies must be preserved.

      Distinguish between:

      * **Research object types**, such as datasets, software, workflows, models, notebooks, protocols, and compound research objects.  
      * **Components**, such as files, records, modules, workflow steps, metadata documents and referenced resources.  
      * **Domain entity types**, such as samples, organisms, participants, observations, assays, images, sequences and variables.  
      * **Representation types**, such as schemas, file formats and serialisations, which are examined and implemented in later steps.

      A research object may have more than one type or contain several different types of components. Classification should therefore describe the composition of the research object set rather than force each object into a single category.
  ft-select-domain-model:
    title: Select or define a domain model
    description: |
      Select, adapt or define a model that adequately represents the concepts, entities, relationships and constraints required by the FAIRification activity.

      This connects the research object and domain model to practical identification requirements. It determines whether identifiers are needed for the research object set, individual objects, versions, components, domain entities and related resources, and whether existing identifiers can meet those needs.  
      The capability may be provided through expertise within the project or through support from data stewards, repository specialists, domain communities, identifier-service providers or other infrastructure operators.
  ft-identifier-reuse:
    title: Identifier discovery and reuse
    description: | 
      Recognise, assess, retain and apply established identifiers for research objects, components and domain entities.

      This capability enables consistent identification across systems and communities. It relies on and preserves existing links, avoids duplicate identities and enables information about the same subject to be connected across research objects, repositories, services and workflows.
      Identifier reuse may depend on external authorities, registries, repositories, lookup services or community expertise. It includes determining what existing identifiers represent, whether they are suitable for reuse and how they should be used and referenced in the FAIRification activity.
  ft-identifier-minting:
    title: Identifier minting
    description: |
      Create, assign and register new identifiers—unique, persistent and resolvable.

      This capability is required when no suitable established identifier exists or when a new research object, version or independently identifiable component is created. It includes selecting an appropriate identifier scheme and issuing authority; preventing duplicate assignment; associating identifiers with the correct subjects and metadata; and supporting the required resolution, persistence, versioning and lifecycle arrangements.

      Identifier minting would normally be provided by a repository, registry, institutional service or infrastructure provider rather than brought in by the FAIRification team itself.
  ft-select-data-vocabularies:
    title: Vocabulary discovery and selection
    description: |
      Find, assess and choose semantic resources that provide appropriate identifiers and descriptions for the concepts represented in the research object and its associated metadata.

      This capability includes determining which concepts need controlled terms, identifying relevant community resources and evaluating whether those resources provide sufficient coverage, granularity, semantic precision and operational support.

      The capability may be provided through project expertise, domain communities, vocabulary registries, lookup services, ontology portals, standards organisations, repositories or other FAIR-enabling resources.

  ft-develop-data-vocabularies:
    title: Vocabulary extension and development
    description: |
      Add or develop new concepts when established semantic resources do not adequately cover the requirements of the FAIRification activity.

      This capability may involve requesting a new term from an existing authority, contributing corrections or relationships, creating a governed local extension, defining an application ontology or developing a new semantic resource.

      The preferred sequence is to:

      1. Reuse a suitable existing term.  
      2. Request a new term, definition or correction from the maintaining authority.  
      3. Use an established extension mechanism.  
      4. Create a governed local extension that reuses existing identifiers where possible.  
      5. Combine or extract modules from compatible semantic resources.  
      6. Develop a new vocabulary or ontology only where no suitable alternative exists.

      Vocabulary development usually requires coordination with domain communities, intended users, ontology or terminology specialists, repositories and software implementers. The required capability may therefore be provided outside the immediate FAIRification team.
  ft-anotate-with-data-vocabularies:
    title: Semantic annotation
    description: |
      Associate research objects, components, metadata elements and values with identifiable concepts from selected semantic resources.

      This capability includes selecting the correct concept, representing its identifier in the appropriate context and recording sufficient provenance to understand how and why the annotation was made.

      In addition to a term from a vocabulary, an annotation usually also includes the subject being described and the relationship between the subject and the concept that the term represents. For example, stating that a research object “is about” a disease, “uses” a method or “has specimen type” a biological material expresses different meanings.

      The capability may be provided through manual curation, data-entry systems, transformation workflows, text-mining or annotation tools, repository services or combinations of automated and expert processes.

  ft-manage-vocabularies:
    title: Vocabulary management
    description: |
      Maintain reliable and reproducible use of semantic resources over time.

      For most FAIRification activities, this means managing the project’s use of externally maintained vocabularies: recording versions, monitoring changes, updating annotations and preserving reproducibility.

      Where the project or community maintains a vocabulary, ontology, value set or extension, the capability additionally includes editorial governance, identifiers, releases, publication, support and long-term maintenance.

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
