---
layout: diagram-page
title: "{{title}} (phase 4)"
type: Phase
page_id: phase_4
excerpt_separator: <!--more-->
cff_properties:
  id: phase_4
  type: process_phase
  title: Review & report
  description: Review *outcomes* and assess success against original goals, also disseminating lessons learned to support future FAIRification activities.
  inputs:
    - id: phase_1_outputs
      edge_label: Used as benchmark to evaluate the overall success of the process
    - id: phase_2_outputs
      edge_label: Used as basis for high-level post-implementation assessment
    - id: phase_3_outputs
      shape: docs
      edge_label: Used as basis for accountability and lessons learned
  outputs:
    - id: phase_4_outputs
      edge_label:
  flow:
    pre_conditions: 
      annotation: |-
        Cumulative outputs of all activities
      requirements: 
        - TBC
    post_conditions:  
      annotation: |-
        Requirements met
        Uses enabled
        Lessons learned
      requirements: 
        - TBC
    nodes:
      key_achievements:
        title: Key achievements
        description: >-
          In terms of the initial goals, including requirements met, uses enabled etc but also in terms of FAIR compliance improvements.
      overview_of_the_FAIRification_processes:
        title: FAIR implementation record
        description: >-
          Structured overview of the design decisions and steps involved as well as an annotated manifest of references to new/updated research objects, resources and other outputs.
      lessons_learned:
        title: Lessons learned
        description: >-
          Summary of any learnings from the FAIRification process, including suggested improvements to the framework or any of its supporting resources.
    edges:
      - source: key_achievements
        target: overview_of_the_FAIRification_processes
        link_type: ~~~
      - source: overview_of_the_FAIRification_processes
        target: lessons_learned
        link_type: ~~~
cff_elements:
  phase_4_outputs:
    type: process_object
    title: FAIRification story
    description: |-
      Structured case study report on key achievements, FAIR implementation approach, and lessons learned.


---

<div class="language-mermaid">
{% include cff_process_diagram.mmd.liquid 
    cff_id="process" 
    highlight=page.cff_properties.id
%}
</div>

{{page.cff_properties.description}}


In this final phase, the cumulative outputs of all FAIRification activities are reviewed against the initial project goals to evaluate the overall success of the process. The review includes a check to ensure all documentation on the FAIRification activity is complete, all outputs are recorded, and downstream actions are in progress. The review should include a summary of key achievements, documented FAIR improvements, an overview of the FAIRification processes, and any lessons learned.

### Phase overview
<div class="language-mermaid colouring">
{% include cff_phase_diagram-outline.mmd.liquid %}
</div>

<!--more-->
### Phase elements
{% include cff-phase.md.liquid %}

### Resources
{% include cff_library_items.md.liquid cff_id=page.cff_properties.id %}
