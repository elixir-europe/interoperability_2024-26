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
    title: Research object access
    description: |
      Ensure that the FAIRification team is permitted and technically able to reach the research object and its associated metadata. 

      Examples of concerns:

      * Open, registered or controlled access  
      * Authentication and authorisation  
      * Data-access applications and approvals  
      * Secure-environment requirements  
      * API or repository availability  
      * Applicable conditions affecting acquisition and project use 
  ft-data-retrieval:
    title: Research object retrieval
    description: |
      Ensure that the required research object, version, components and metadata can be selected, obtained/downloaded and verified by the FAIRification team.

      Considerations relating to research object retrieval, eg query language, results representation and exporting capabilities
  ft-data-hosting:
    title: Research object deposition
    description: |
      Persist, manage, expose and operate research objects, metadata, mappings, alternative representations and supporting services in an environment suitable for their intended uses.

      This capability includes selecting or confirming a hosting environment, deploying the required objects and services, and establishing the storage, preservation, discovery, security, operational and sustainability arrangements needed to support them.

      The capability may be provided by an external repository, institutional infrastructure, community platform, secure environment, commercial provider or project-operated service. The FAIRification team does not necessarily have to operate the environment itself.
  ft-data-versioning:
    title: Research object versioning
    description: |
      Identify, relate, preserve and manage changes to deployed research objects and their associated metadata, mappings, representations and services.

      This capability allows users and machines to distinguish a changing research object from a particular reproducible version and to understand how versions, releases, components and derived representations relate.

      The capability may be provided by a repository, version-control system, package registry, storage service, workflow platform or project-operated versioning process.
  ft-data-transfer:
    title: Research object transfer
    description: |
      Move, ingest, synchronise or register research objects and associated information between environments securely, completely and verifiably.

      This capability may involve transferring files or packages, migrating databases or object stores, depositing through a repository interface, synchronising environments or registering an object in place without copying it.

      Transfer is distinct from retrieval. Retrieval concerns what a user or service can select and receive. Transfer concerns the operational movement or ingestion of research objects between source, staging and target environments.

      Transfer is not required where the research object remains in place and the existing environment is upgraded to fulfil the target role.
  ft-data-licensing:
    title: Rights and reuse conditions
    description: |
      Authorise and communicate the terms under which a research object and its components may be accessed, used, modified, combined and redistributed.

      This capability includes declaring  rights holders and release authorities; evaluating licences, contracts and third-party terms; selecting suitable licences or rights statements; defining permitted uses; and communicating the resulting conditions to people and machines.

      The capability may be provided by rights holders, legal advisers, research organisations, repositories, data-access committees, ethics or information-governance functions, community authorities or other authorised decision-makers.
  ft-data-anonymisation:
    title: Privacy and disclosure control
    description: |
      Identify, assess and manage the risk that releasing a research object, metadata or associated information could expose personal, confidential, sensitive or otherwise restricted information.

      This capability is broad and complex and its nature will vary greatly depending on the research object and intended use. For example, anonymisation may be inappropriate or insufficient where the information is highly distinctive, where external information creates linkage risks or where removing sufficient detail would undermine the intended use. 

      The capability may be provided by information-governance, data-protection, statistical-disclosure, ethics, security or domain specialists and by authorised data-access or release bodies.
  ft-data-release:
    title: Release management
    description: |
      Define, approve, activate, document and manage a specific release of the research object.

      This capability controls when and  what is being released through which channels and interfaces, which version and representations are included, where they are available, who may access them and which conditions apply.

      The capability may be provided through repository deposition and approval workflows, institutional release procedures, community governance, project release management or combinations of these.
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
