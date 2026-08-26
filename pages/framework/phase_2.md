---
layout: diagram-page
title: "{{title}} (phase 2)"
type: Phase
page_id: phase_2
excerpt_separator: <!--more-->
cff_properties:
  id: phase_2
  type: process_phase
  title: Examine requirements
  description: Assess the current state of the activity against the FAIRification goal, including available tools, software, expertise, budget, and time constraints.
  inputs:
    - id: phase_1_outputs
      edge_label: Used to determine target state characteristics, requirements and priorities
  outputs:
    - id: phase_2_outputs
      edge_label: Outputs
  flow:
    layout: LR
    pre_conditions: 
      annotation: |-
        Targeted assets
        Intended usability
        Broader impact
      requirements: 
        - You have identified targeted assets
        - You have defined their intended use or a FAIR compliance target
        - You have identified what broader impact this will have, i.e. what it’s worth
    post_conditions:  
      annotation: |-
        Target requirements
        Capabilities & resources
        FAIRification backlog
      requirements: 
        - You have identified what the requirements to realise the goals are
        - You have determined what you kind of changes you plan to make to meet the requirements 
        - You have secured the capabilities & resources needed to do the work
    nodes:
      reqs:
        title: Research object requirements
        description:
        subgraph:
          - target_state
          - object_types
      strategy:
        title: Capabilities & resources
        description: >-
          
        subgraph:
          - capabilities
          - resources
      use_case:
        title: Use case requirements & gaps   
        description: >-
          
        subgraph:
          - initial_state
          - backlog
      object_types: 
        title: Research objects by category
        description: >-
          Categories at appropriate levels of granularity, including object type, references to files, DTAs, documentation and other context.
      capabilities: 
        title: FAIRification capabilities
        description: >-
          The courses of action and capabilities available to realise and later sustain the FAIRified research objects.
      resources: 
        title: FAIRification resources & staff
        description: >-
          The assets, skills, repositories, vocabulary systems, knowledge resources selected / designed to realise and sustain the results.
      target_state: 
        title: Use case requirements
        description: >-
          Conditions that the results of the FAIRification activity must satisfy. Note: This can also include constraints on how these requirements are to be met.
      initial_state: 
        title: Initial assessment
        description: >-
          Assessment of what already is in place and which requirements remains to be met.
      backlog: 
        title: Gaps and remediation backlog
        description: >-
          Which gaps to address and, where applicable, the chosen courses of action / allocated resources.
    edges:
      - source: object_types
        target: target_state
        label: |-
          Constrained by
      - source: target_state
        target: initial_state
        label: |-
          Used as 
          basis for
      - source: initial_state
        target: backlog
        label: |-
          Determines
      - source: object_types
        target: capabilities
        label: |-
          What do
          you need?
      - source: capabilities
        target: object_types
        label: |-
          What can 
          you do?
      - source: capabilities
        target: resources
        label: |-
          What do
          you need?
      - source: resources
        target: capabilities
        label: |-
          What can 
          you do?
cff_elements:
  phase_2_outputs:
    type: process_object
    title: FAIRification roadmap
    description: |-
      Current and projected states, requirements and gaps.
---

<div class="language-mermaid">
{% include cff_process_diagram.mmd.liquid 
    cff_id="process" 
    highlight=page.cff_properties.id
%}
</div>

{{page.cff_properties.description}}

FAIRification is challenging if the project’s capabilities and resources are not fully understood from the beginning. It is therefore essential to:  
- **Identify Research Object Requirements**
  Indicators and associated targets that specify the actions needed to curate the research object to fulfil the FAIRification Goal. For example, goals relating to data hosting improvements cannot be fulfilled if data is not available or accessible or if the project partners have not reached an agreement on the appropriate licensing and data use conditions.
- **Identify FAIRification Capabilities & Resources**
  Given the research object requirements, what capabilities and resources will be needed to complete the FAIRification. For example, personnel with certain skills and expertise, access to deploying (changes to) databases/APIs, and a general course of actions that can be supported by available budget and personnel.
  * *FAIRification Capabilities* – Such as annotation, search and indexing capabilities needed to enable and support the FAIRification process.
  * *FAIRification Resources* – Such as tools, databases, vocabulary services needed to enable and support the FAIRification process.
- **Determine the FAIRification Gaps to address (Backlog)**  
  Gaps to address, i.e. current to projected state after FAIRification. For example, for some or all sections above, list the gaps to address for each indicator and for the capabilities and resources needed to complete the FAIRification.


### Phase overview
<div class="language-mermaid colouring">
{% include cff_phase_diagram-outline.mmd.liquid %}
</div>
<!--more-->
### Process elements
{% include cff-phase.md.liquid %}

### Resources
{% include cff_library_items.md.liquid cff_id=page.cff_properties.id %}
