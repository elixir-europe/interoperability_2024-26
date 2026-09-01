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

FAIRification is challenging if the capabilities and resources available to the activity are not fully understood from the beginning. It is therefore essential to:
- **Identify Research Object Requirements**
  Identify indicators and associated targets that specify what is needed to curate the research object to fulfil the FAIRification Goal. For example, goals relating to data hosting improvements cannot be fulfilled if the data is unavailable or inaccessible, or if project partners have not agreed on appropriate licensing and data-use conditions.  
- **Identify FAIRification Capabilities & Resources**
  Given the research object requirements, identify the capabilities and resources needed to complete the FAIRification. These may include personnel with relevant skills and expertise, the ability to deploy changes to databases or APIs, and a general course of action that can be supported by the available budget and personnel.  
  * *FAIRification Capabilities* – Such as annotation, validation, search and indexing capabilities needed to enable and support the FAIRification activity.  
  * *FAIRification Resources* – Such as tools, databases, standards and vocabulary services needed to provide those capabilities.  
- **Determine the FAIRification Gaps to address (Backlog)**  
  Compare the current state with the projected state after FAIRification and identify the gaps to be addressed. This may include gaps relating to the indicators and targets, the capabilities and resources needed to complete the FAIRification, and other financial, technical, legal or organisational constraints. Together, these form the FAIRification roadmap and backlog for the practical work.

In this phase, you can optionally use the [Template]({% link pages/framework/fairification_template.md %}) to identify relevant actions, capabilities and resources needed to execute the FAIRification activity.

**Assessment approach**  
Select an assessment approach that can establish the current state and later determine whether the projected state has been reached. The approach may combine tool-based assessment with expert or user evaluation, but should focus on indicators relevant to the FAIRification Goal and record sufficient evidence to support comparison before and after implementation.

**Practical and important considerations**  
Consider the financial costs and expected benefits; the available technical infrastructure, tools and methodologies; legal requirements relating to rights, access and reuse; and organisational requirements such as responsibilities, training and support. These considerations help determine what is feasible, what is within the team’s control or influence, and which gaps depend on other people, organisations or services.

### Phase overview
<div class="language-mermaid colouring">
{% include cff_phase_diagram-outline.mmd.liquid %}
</div>
<!--more-->
### Process elements
{% include cff-phase.md.liquid %}

### Resources
{% include cff_library_items.md.liquid cff_id=page.cff_properties.id %}
