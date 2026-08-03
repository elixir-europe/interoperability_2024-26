---
layout: diagram-page
title: B. Project Examination
excerpt_separator: <!--more-->
cff_properties:
  id: phase_2
  type: process_phase
  title: Project examination
  description: Initial project examination
  inputs:
    - id: phase_1_outputs
      edge_label: Used to determine target state characteristics, requirements and priorities
  outputs:
    - id: phase_2_outputs
      edge_label: Outputs
  flow:
    pre_conditions: 
      annotation: |-
        Targeted assets
        Intended usability
        Broader impact
      requirements: 
        - You have identified targeted assets
        - You have defined their intended use or a FAIR compliance target
        - You have ideintified what broader impact this will have, i.e. what it’s worth
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
      strategy:
        title: FAIRification strategy
        description: >-
          
        subgraph:
          - object_types
          - capabilities
          - resources
      use_case:
        title: Use case requirements
        description: >-
          
        subgraph:
          - target_state
          - initial_state
          - backlog
      object_types: 
        title: Research object categories
        description: >-
          Scoped at appropriate levels of granularity, including their types, references to related input files, documentation, DTAs and other context.
      capabilities: 
        title: Courses of action & capabilities
        description: >-
          The broad sequence of steps and abilities available to realise and later sustain the FAIRified research objects.
      resources: 
        title: Supporting resources & staff
        description: >-
          The assets, skills, repositories, vocabulary systems, knowledge resources selected / designed to realise and sustain the results.
      target_state: 
        title: Target state requirements
        description: >-
          Conditions that the results of the FAIRification activity must satisfy. Note: This can also include constraints on how these requirements are to be met.
      initial_state: 
        title: Initial state assessment report
        description: >-
          Assessment of what already is in place and which requirements remains to be met.
      backlog: 
        title: Gaps and remediation backlog
        description: >-
          Which gaps to address and, where applicable, the chosen courses of action / allocated resources.
    edges:
      - source: strategy
        target: use_case
        label: |-
          Sets scope of
      - source: use_case
        target: strategy
        label: |-
          Depends on
      - source: target_state
        target: initial_state
        label: Used as basis for
      - source: initial_state
        target: backlog
        label: Used as basis for
      - source: object_types
        target: capabilities
        label: FAIRified by
      - source: capabilities
        target: object_types
        label: |-
          Enabling
          FAIRification of
      - source: capabilities
        target: resources
        label: Relying on
      - source: resources
        target: capabilities
        label: Can support
cff_elements:
  phase_2_outputs:
    type: process_object
    title: FAIRification roadmap
    description: |-
      Current and projected states, requirements and gaps.
---

> {{page.cff_properties.description}}

<div class="language-mermaid figure-img img-fluid rounded">
{% include cff_phase_diagram-outline.mmd.liquid %}
</div>

FAIRification is challenging if the project's capabilities and resources are not fully understood from the beginning. It is therefore essential to:  
- Identify Data Requirements  
For example, goals relating to data hosting improvements cannot be fulfilled if data is not available or accessible or if the project partners have not reached an agreement on the appropriate licensing and data use conditions.
- Identify FAIRification Capabilities & Resources  
For example, assess the needed expertise and plan accordingly for budget and personnel availability.
- Produce the FAIRification Backlog  
For example, for some or all sections of the project examination, list the current and projected status of each individual task. The FAIRification Workplan may support this process – see below for details.  

<!--more-->

### Flowchart
<div class="language-mermaid figure-img img-fluid rounded">
{% include cff_phase_diagram.mmd.liquid %}
</div>
