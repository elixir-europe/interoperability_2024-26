---
layout: diagram-page
title: "{{title}} (phase 3)"
type: Phase
page_id: phase_3
excerpt_separator: <!--more-->
cff_properties:
  id: phase_3
  type: process_phase
  title: Design & implement
  description: Define and deliver on *practical, achievable objectives* across one or more release cycles to realise the overall FAIRification goal.
  inputs:
    - id: phase_2_outputs
      edge_label: Used to inform scope, initial backlog and implementation design decisions
  outputs:
    - id: phase_3_outputs
      shape: docs
      edge_label: Outputs
  flow:
    layout: TB
    pre_conditions: 
      annotation: |-
        Target requirements
        Capabilities & resources
        FAIRification backlog
      requirements: 
        - TBC
    post_conditions:  
      annotation: |-
        Decisions
        Tasks&nbsp;&amp;&nbsp;statuses
        Improvements
      requirements: 
        - Assessment results indicate to what degree the requirements and gaps have been addressed.
        - Final FAIR implementation design with underlying decisions and assumptions documented.
        - Completion statuses, results and lessons learned from FAIRification work captured.
        - Achieved state compared with the starting state using the agreed assessment approach.
        - Remaining gaps and proposed follow-up work recorded.
    nodes:
      backlog:
        title: Design decisions
        description: >-
          For identifiers, metadata, ontologies, supporting systems and research object sharing.
      task_tracker:
        title: FAIRification task list
        description: >-
          Planned, active and completed tasks, including responsibilities, status, dependencies, supporting resources and results.
      assessment_report:
        title: Pre & post assessment reports
        description: >-
          Updated assessment of what has been put in place and which requirements/gaps remains to be addressed.

cff_elements:
  phase_3_outputs:
    type: process_object
    title: FAIRification updates
    description: |-
      Design decisions, FAIRification task tracker record and assessment reports from each iteration.
---

<div class="language-mermaid">
{% include cff_process_diagram.mmd.liquid 
    cff_id="process" 
    highlight=page.cff_properties.id
%}
</div>

{{page.cff_properties.description}}

The practical phase of the FAIRification Process turns the selected FAIRification tasks into concrete changes. It brings together four connected activities: Pre-assessment, Design, Implementation and Post-assessment. The work may be completed as one bounded implementation effort or divided into several iterations where this is useful for managing scope, dependencies, resources or uncertainty.

1. **Pre-assessment**   
   Conducted at the beginning to clearly indicate the starting state, and being able to compare / contrast with the end state. Focusing on what is within scope of the team’s capabilities.  
2. **Design**   
   During the design stage, concrete steps are identified to achieve the FAIRification tasks identified for this cycle. If needed, one could also use the concrete steps identified from the FAIRification template. These steps form the FAIRification workplan to be realised during the implementation stage.  
3. **Implementation**   
   During this phase, the planned tasks are executed within the established timeframe. However, it is important to note that some tasks may remain incomplete, be postponed, or even abandoned during a given iteration.  
4. **Post-assessment**  
   Assess the achieved state using the same criteria or comparable evidence as the pre-assessment. Compare the results with the starting state and agreed objectives to identify demonstrated FAIR improvements, remaining gaps and any further work required.

### Phase overview
<div class="language-mermaid colouring">
{% include cff_phase_diagram-outline.mmd.liquid %}
</div>

<!--more-->
### Process elements
{% include cff-phase.md.liquid %}

### Resources
{% include cff_library_items.md.liquid cff_id=page.cff_properties.id %}
