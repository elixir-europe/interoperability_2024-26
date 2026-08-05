---
title: The FAIRification Workplan
layout: diagram-page
cff_properties:
  id: workplan
  type: workplan
  title: FAIRification Workplan
  flow:
    layout: TB
    nodes:
      goal:
        title: FAIRification goal
        description: In terms of intended *usability of the research object* that isn’t currently possible.
      requirements:
        title: Research object requirements
        description: Indicators and associated targets that specify the actions needed to curate the research object to fulfil the FAIRification goal.
      capabilities:
        title: FAIRification Capabilities
        description: Such as annotation, search and indexing capabilities needed to enable and support the FAIRification process.
      resources:
        title: FAIRification resources
        description: Such as tools, databases, vocabulary services needed to enable and support the FAIRification process.
      pre_assessment:
        title: Pre-FAIRification assessment results
        description: Gaps to address, current to projected state after FAIRification.
      design:
        title: Design decisions
        description: Strategies for identifiers, metadata, ontologies and research object sharing.
      implementation:
        title: FAIRification task list
        description: Status, capabilities, responsibilities, supporting resources.
      post_assessment:
        title: Post-FAIRification assessment results
        description: Tasks completed, gaps addressed, FAIRification goal fulfilment
    edges:
      - source: goal
        target: requirements
        label: Used to determine 
      - source: requirements
        target: capabilities
        label: Used to identify 
      - source: requirements
        target: resources
        label: Used to identify 
      - source: requirements
        target: pre_assessment
        label: Used as basis for 
      - source: capabilities
        target: design
        label: Used to inform 
      - source: resources
        target: design
        label: Used to inform 
      - source: pre_assessment
        target: design
        label: Used to inform 
      - source: design
        target: implementation
        label: Used to specify 
      - source: requirements
        target: post_assessment
        label: Used as basis for 
      - source: implementation
        target: post_assessment
        label: Used as basis for 
      - source: post_assessment
        target: design
        label: Used to inform 
cff_elements:
---

The Workplan brings together the design decisions and tasks needed to guide the [FAIRification activity]({% link pages/framework/fairification_activity.md %}). It supports iterative design, implementation, and assessment, helping the team work towards the activity’s objectives.

During the first two phases of the [Process]({% link pages/framework/fairification_process.md %}), the Workplan is tailored to the specific activity. It is then used throughout the iterative FAIRification cycles, as well as during the post-FAIRification review. It can be updated with a new section for each FAIRification cycle to serve as an oveview of what’s in scope of and what to follow-up on. 

The [Template]({% link pages/framework/fairification_template.md %}) can help identify, define, and scope the tasks for the current implementation cycle. The Workplan can then be used to track decisions, monitor progress, and follow up on actions related to the objectives.

<!--more-->

### Workplan elements
{% include cff-phase.md.liquid %}

### Flowchart
<div class="language-mermaid figure-img img-fluid rounded">
{% include cff_phase_diagram.mmd.liquid %}
</div>
    

