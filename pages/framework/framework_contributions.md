---
layout: diagram-page
title: "{{title}}"
type: Phase
excerpt_separator: <!--more-->
cff_properties:
  id: cff_maintenance
  type: process_phase
  title: Improve the framework
  description: Use evidence from FAIRification activities, contributors and the wider ecosystem to keep the FAIRification framework coherent, useful and up to date.
  inputs:
  - id: phase_4_outputs
    edge_label: Used to identify improvements
  outputs:
  - id: framework_contribution_outputs
    edge_label: Outputs
  flow:
    pre_conditions:
      annotation: |
        Improvement opportunity
        Supporting evidence
        Maintenance owner
      requirements:
        - Framework issue or improvement opportunity identified
        - Supporting evidence available from FAIRification stories, user feedback or changes in the wider ecosystem
        - Framework maintainer or governance group available to consider the proposal
    post_conditions:
      annotation: |
        Proposal assessed
        Decision recorded
        Framework updated
        Change communicated
      requirements:
        - Issue and affected framework components assessed
        - Decision to approve, defer or reject the proposal recorded with its rationale
        - Approved change implemented and reviewed, or deferred work assigned an owner and status
        - Released changes versioned and recorded in the framework history, with relevant users informed
cff_elements:
  framework_contribution_outputs:
    title: Framework updates
    shape: docs
    description: ""
---

Use evidence from FAIRification activities, contributors and the wider ecosystem to keep the FAIRification framework coherent, useful and up to date.

FAIRification stories may identify unclear guidance, missing capabilities, outdated resource links or opportunities to improve the Process, Template, Workplan or community-specific profiles. Contact ELIXIR’s Interoperability Platform by creating an issue on GitHub, see [elixir-europe/interoperability_2024-26](https://github.com/elixir-europe/interoperability_2024-26). 

<!-- 
 or by reaching out using the form [Ask Interoperability a question](https://elixir-europe.org/platforms/interoperability/enquiry-form) or through your local [ELIXIR Node](https://elixir-europe.org/about-us/who-we-are/nodes). 


//-->