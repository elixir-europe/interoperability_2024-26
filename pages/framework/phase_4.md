---
layout: diagram-page
title: D. Post-FAIRification Review
excerpt_separator: <!--more-->
cff_properties:
  id: phase_4
  type: process_phase
  title: Post-FAIRification review
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
  cff_maintenance:
    id: cff_maintenance
    type: process_phase
    title: Maintaining the FAIRification framework
    inputs:
    - id: phase_4_outputs
      edge_label: Used to identify improvements
  cff_content_creation:
    id: cff_content_creation
    type: process_phase
    title: Contributing to FAIRification resources
    inputs:
    - id: phase_4_outputs
      edge_label: Used to develop content for

---

> {{page.cff_properties.description}}

<div class="language-mermaid figure-img img-fluid rounded">
{% include cff_phase_diagram-outline.mmd.liquid %}
</div>

In this final phase, the cumulative outputs of all FAIRification activities are reviewed against the initial project goals to evaluate the overall success of the process. The review should include a summary of key achievements, documented FAIR improvements, an overview of the FAIRification processes, and any lessons learned.

<!--more-->

### Flowchart
<div class="language-mermaid figure-img img-fluid rounded">
{% include cff_phase_diagram.mmd.liquid %}
</div>
