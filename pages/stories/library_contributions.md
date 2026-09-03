---
layout: diagram-page
title: "{{title}}"
type: Phase
excerpt_separator: <!--more-->
cff_properties:
  id: cff_content_creation
  type: process_phase
  title: Improve the resources
  description: Identify results and lessons from a FAIRification story that could help others, and contribute them to appropriate community resources.
  inputs:
  - id: phase_4_outputs
    edge_label: Used to develop content for
  outputs:
  - id: library_contribution_outputs
    edge_label: Outputs
  flow:
    pre_conditions:
      annotation: |
        FAIRification story
        Candidate reusable material
        Contributor available
      requirements:
        - FAIRification story and supporting evidence available
        - Material with potential value beyond the original activity identified
        - Contributor available to prepare and follow up the contribution
    post_conditions:
      annotation: |
        Contribution prepared
        Submission recorded
        Status & provenance available
      requirements:
        - Material and an appropriate destination selected, or a decision not to contribute recorded
        - Content adapted to the destination’s requirements, with rights, attribution and provenance recorded
        - Contribution submitted and responsibility for editorial follow-up assigned
        - Review status and any published contribution linked to the originating FAIRification story
cff_elements:
  library_contribution_outputs:
    title: Resource updates
    shape: docs
    description: ""
---

Identify results and lessons from a FAIRification story that could help others, and contribute them to appropriate community resources.

Not every FAIRification activity needs to produce a contribution. Select material that is useful beyond its original context and adapt it to the purpose, format and editorial requirements of toolkits, cookbooks, community catalogues, publications, documentation sites or repositories that you are targeting.

Examples: 
* [FAIR Cookbook contribution guidance](https://faircookbook.elixir-europe.org/content/recipes/help.html)
* [RDMkit contribution guidance](https://rdmkit.elixir-europe.org/how_to_contribute)


