---
title: The FAIRification Template
layout: diagram-page
cff_properties:
  id: template
  type: template
  title: FAIRification template
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
cff_elements:
  step_1: 
    title: Get the data
    description: This step involves getting access to the underlying dataset via a restricted or open access API and capturing information on how to query the data via the API.
    capabilities_model: hosting
    capabilities: 
      - id: ft-data-access
      - id: ft-data-retrieval
  step_2:
    title: Model the domain
    description: Here, the data types involved in the dataset are identified. Also, the community or domain standards for representation of the data are also captured to align the FAIRification work, if any, along those lines.
    capabilities_model: content
    capabilities: 
      - id: ft-identify-data-types
  step_3:
    title: Select the identifier scheme
    description: Here, the establishment of an identifier for identification of the dataset is done. This could be achieved by generation of new identifiers or reusing of existing ones
    capabilities_model: content
    capabilities: 
      - id: ft-identifier-minting
      - id: ft-identifier-reuse
  step_4:
    title: Apply data standards
    description: At this step, data standard validation and identification is done to ensure that the representation of the data is in community or domain specified formats for interoperability purposes.
    capabilities_model: representation
    capabilities: 
      - id: ft-data-standards-reuse
      - id: ft-data-standards-development
      - id: ft-apply-data-standards
      - id: ft-validate-against-data-standards
  step_5:
    title: Choose data vocabularies
    description: At this step, you would look in depth about the data content and harmonize it with ontologies either pre-existing or formulate an application ontology for your use case.
    capabilities_model: content
    capabilities: 
      - id: ft-select-data-vocabularies
      - id: ft-develop-data-vocabularies
      - id: ft-anotate-with-data-vocabularies
      - id: ft-manage-vocabularies
  step_6:
    title: Transform data for interoperability
    description: Not only would you represent the data in one ontology but also link or map to corresponding ontologies such that the data is interoperable with multiple vocabularies and terminologies rather than just one.
    capabilities_model: representation
    capabilities: 
      - id: ft-identifier-mapping
      - id: ft-vocabulary-alignment
      - id: ft-data-model-mapping
  step_7:
    title: Host your data
    description: Once the dataset is ready, hosting and search engine optimization inputs for the dataset need to be in place. Alongside hosting, data versioning and data formats need to also be considered.
    capabilities_model: hosting
    capabilities: 
      - id: ft-data-hosting
      - id: ft-data-versioning
      - id: ft-data-transfer
  step_8:
    title: Share your data
    description: Now that the dataset is FAIRified, one can share this data to the community with licensing. In case of dealing with sensitive data, data anonymization considerations should be placed prior to sharing.
    capabilities_model: hosting
    capabilities: 
      - id: ft-data-licensing
      - id: ft-data-anonymisation
      - id: ft-data-release
  ft-data-access:
    title: Data access
    description: Considerations relating to how data is accessed, eg through APIs, via controlled access
  ft-data-retrieval:
    title: Data retrieval
    description: Considerations relating to data retrieval, eg query language, results representation and exporting capabilities
  ft-identify-data-types:
    title: Identify data types
    description: Data type identification informs the selection of appropriate data standards, ontologies and target repositories
  ft-identifier-minting:
    title: Identifier minting
    description: How to create unique, persistent and resolvable identifiers
  ft-identifier-reuse:
    title: Reusing community identifiers
    description: How to reuse existing identifiers in a dataset
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
  ft-identifier-mapping:
    title: Identifier mapping
    description: How to map between different types of equivalent identifiers
  ft-vocabulary-alignment:
    title: Vocabulary alignment
    description: How to map between different equivalent vocabulary terms
  ft-data-model-mapping:
    title: Data model mapping
    description: How to map equivalent concepts from different data models
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
  hosting:
    title: Hosting environment capabilities
    description: |-
      What capabilities of the hosting environment that enables and supports the use of FAIR data.
    capabilities: 
      - id: ft-data-access
      - id: ft-data-retrieval
      - id: ft-data-hosting
      - id: ft-data-versioning
      - id: ft-data-transfer
      - id: ft-data-licensing
      - id: ft-data-anonymisation
      - id: ft-data-release
  representation:
    title: Representation and format
    description: |-
      What is reported in the Dataset (data) & the Dataset Descriptor (metadata)
    capabilities: 
      - id: ft-data-standards-reuse
      - id: ft-data-standards-development
      - id: ft-apply-data-standards
      - id: ft-validate-against-data-standards
      - id: ft-identifier-mapping
      - id: ft-vocabulary-alignment
      - id: ft-data-model-mapping
  content:
    title: Content & Context
    description: |-
      How the data object & metadata object are represented and formatted.
    capabilities: 
      - id: ft-identify-data-types
      - id: ft-identifier-minting
      - id: ft-identifier-reuse
      - id: ft-select-data-vocabularies
      - id: ft-develop-data-vocabularies
      - id: ft-anotate-with-data-vocabularies
      - id: ft-manage-vocabularies
---

{% include_relative templated_task_lists/fairplus_template.md %}
{% include_relative capabilities_domain/hosting.md %}
{% include_relative capabilities_domain/content.md %}
{% include_relative capabilities_domain/representation.md %}