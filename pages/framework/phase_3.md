---
layout: diagram-page
title: C. Iterative FAIRification Cycles
excerpt_separator: <!--more-->
cff_properties:
  id: phase_3
  type: process_phase
  title: Iterative FAIRification cycles
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
        - TBC
    nodes:
      backlog:
        title: Refined FAIRification backlog
        description: >-
          Design decisions for identifiers, metadata, ontologies, supporting systems and research object sharing.
      task_tracker:
        title: FAIRification task tracker
        description: >-
          Planned, active and completed tasks, including responsibilities, status, dependencies, supporting resources and results.
      assessment_report:
        title: Current state assessment report
        description: >-
          Updated assessment of what has been put in place and which requirements/gaps remains to be addressed.
    edges:
      - source: backlog
        target: task_tracker
        label: Guides *implementation* activities
      - source: task_tracker
        target: assessment_report
        label: Serves as the basis for *assessment* activities
      - source: assessment_report
        target: backlog
        label: Informs remaining *design* activities
cff_elements:
  phase_3_outputs:
    type: process_object
    title: FAIRification updates
    description: |-
      Design decisions, FAIRification task tracker record and assessment reports from each iteration.
---

> {{page.cff_properties.description}}

<div class="language-mermaid figure-img img-fluid rounded">
{% include cff_phase_diagram-outline.mmd.liquid %}
</div>

The practical phase of the FAIRification Process centers on the FAIRification Cycle, which consists of three distinct stages: Assessment, Design, and Implementation. This phase typically involves multiple FAIRification Cycles applied iteratively. Each cycle focuses on a defined set of tasks within an agreed timeframe.
-	Assessment
Pre- and post-assessments are conducted at the beginning and end of each FAIRification Cycle iteration to evaluate FAIR improvements and track the status of individual tasks.
-	Design
During the design stage, concrete steps are identified to achieve the FAIRification tasks identified for this cycle. If needed, one could also use the concrete steps identified from the FAIRification template.
These steps form the FAIRification workplan to be realised during the implementation stage.
-	Implementation
During this phase, the planned tasks are executed within the established timeframe. However, it is important to note that some tasks may remain incomplete, be postponed, or even abandoned during a given iteration.

<!--more-->

### Flowchart
<div class="language-mermaid figure-img img-fluid rounded">
{% include cff_phase_diagram.mmd.liquid %}
</div>
