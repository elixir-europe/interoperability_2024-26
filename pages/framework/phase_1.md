---
layout: diagram-page
title: "{{title}} (phase 1)"
type: Phase
page_id: phase_1
excerpt_separator: <!--more-->
cff_properties:
  id: phase_1
  type: process_phase
  title: Define FAIRification goals
  description: Determine the goals for FAIRification, in terms of desired *usability of data* that isn't currently possible.
  inputs:
    - id: idea
      shape: cloud
      edge_label: Made explicit in
  outputs:
    - id: phase_1_outputs
      edge_label: Outputs
  flow:
    pre_conditions: 
      annotation: |-
        FAIR compliance 
        challenges and 
        use cases
      requirements: 
        - You have a FAIR compliance challenge or use case
    post_conditions:  
      annotation: |-
        Targeted assets
        Intended usability
        Broader impact
      requirements: 
        - You have identified targeted assets
        - You have defined their intended use or a FAIR compliance target
        - You have ideintified what broader impact this will have, i.e. what it’s worth
    nodes:
      scoped_input:
        title: Targeted research assets
        description: >-
          E.g. datasets, training materials, workflows to be made FAIR. This can also include references to known constraints that will influence the work.
      usability_outcome:
        title: Desired usability outcomes
        description: >-
          Purpose and specific outcomes of the FAIRification activity, i.e. what will become possible? 
          What degree of compliance with a policy / directive will be achieved?
      stakeholder_impact:
        title: Impact and value assessment
        description: >-
          Reflections on how much effort the outcomes are worth and where to set the threshold for what is “good enough”. 
          This can also account for resources developed for / lessons learned from the FAIRification.
    edges:
      - source: scoped_input 
        target: usability_outcome
        label: |-
          Made FAIR 
          to achieve
      - source: usability_outcome
        target: scoped_input
        label: |-
          Achieved by 
          FAIRifying
      - source: usability_outcome
        target: stakeholder_impact
        label: Realises
      - source: stakeholder_impact
        target: usability_outcome
        label: Justifies
cff_elements:
  idea:
    type: process_object
    title: FAIRification idea
    description: |-
      Community use case, FAIR compliance challenge or any idea that involves FAIRification.
  phase_1_outputs:
    type: process_object
    title: FAIRification goals
    description: |-
      Community use case, FAIR compliance challenge or any idea that involves FAIRification.
---

<div class="language-mermaid">
{% include cff_process_diagram.mmd.liquid 
    cff_id="process" 
    highlight=page.cff_properties.id
%}
</div>

Before any FAIRification work is undertaken, it is essential to identify the intended usability of the data that cannot be achieved in its current state. From this, one or more clear and specific FAIRification goals should be defined—these will make sure that the activity is shaped by tangible impact and associated value to the communities served by the FAIRified resource. At this stage, it is also advisable to make an estimate of how much effort reaching the goals are worth and set priorities for a “FAIR enough” outcome – one in which the most critical uses are enabled, while useful but less impactful enhancements may be set aside for later. In the subsequent Project Examination phase, the goals must also be useful when determining specific requirements on the results of and resources to allocate to the FAIRification work.


### Phase overview
<div class="language-mermaid colouring">
{% include cff_phase_diagram-outline.mmd.liquid %}
</div>

<!--more-->

### Process elements
{% include cff-phase.md.liquid %}

### Resources
{% include cff_library_items.md.liquid cff_id=page.cff_properties.id %}