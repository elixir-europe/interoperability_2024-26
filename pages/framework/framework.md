---
title: The FAIRification Framework
layout: diagram-page
---

The ELIXIR Common FAIRification Framework (FAIRification Framework)  provides a structured, step-by-step approach and supporting resources for transforming datasets or digital objects into FAIR-compliant assets. It guides users through the entire FAIRification journey—defining goals based on practical utility and scientific value, developing a roadmap and implementing the changes required to achieve a result that is “FAIR enough”, and finally validating your successes and lessons learned. 

The Framework supports the implementation of the FAIR principles by helping organisations make effective use of available resources and strengthening their capacity for FAIR data management. It prioritises actions based on a thorough analysis of the FAIR challenges and needs specific to each use case. By following its structured phases, users can make research assets more findable, accessible, interoperable, and reusable in ways that support their particular goals—unlocking opportunities for greater scientific impact, faster innovation and broader collaborations.

The Framework, illustrated in below, comprises three components:

1. **The Process**  
   Outlines the four main phases of FAIRification activities,  with references to relevant and helpful types of tools. These tools can include FAIR assessment tools, and in future work we will incorporate links to components in other toolkits to enable users to arrive at a more tailored approach for their specific use case.  
2. **The Template**  
   Breaks down key elements of the process into a series of steps with links to supporting resources. The template more specifically targets and links to the implementation solutions. Note: There is currently only one ‘template’ which provides a set of possible steps in the FAIRification of a dataset. As the FAIRification Framework generates more outputs, and engages other types of research outputs, we envisage developing an extended set of templates to support different FAIRification activity contexts.   
3. **The Workplan structure**  
   Organises the whole FAIRification activity, including tasks to guide iterative design, implementation and assessment towards achieving the activity’s objectives. The workplan in practice has historically been useful as a communication and planning tool, enabling a quick overview of the tasks in progress, their state of completeness, and metrics and links to implementations that have been generated to date. 

<div class="language-mermaid colouring">
{% include cff_process_diagram.mmd.liquid %}
</div>


<div class="language-mermaid colouring">
{% include cff_process_diagram.mmd.liquid 
    cff_id="templated_steps" 
    title="Template: Steps from the FAIRplus project for FAIRifying data sets"
%}
</div>


<div class="language-mermaid colouring">
{% include cff_phase_diagram.mmd.liquid 
    cff_id="workplan" 
    title="Recommended workplan structure to support continuous improvements"
    wrappingWidth="260" 
    padding="10" 
    rankSpacing="10"
    titleMargin="10"
    titles_only=true 
%}
</div>

## Background

Using the FAIRplus [FAIRification Framework](https://www.nature.com/articles/s41597-023-02167-2) as a starting point, the ELIXIR Interoperability Platform seeks to assess and improve that framework for use in broader contexts; the FAIRplus framework was designed specifically to operate on datasets, while the needs of the ELIXIR community are much broader, including tools, services, diverse data types (e.g. specialised or purpose-enabling materials such as those needed for training). While the practical use of this frame in the context of FAIRplus was on ‘datasets’, practically the steps across the FAIRification process can be applied to other research object types.

To undertake this work, we have devised the following strategy:

1. To test our ELIXIR Common FAIRification Framework (FAIRification Framework) with Use cases solicited from individual users (personal contacts and requirements gathering), from specific communities (eg. biodiversity), from ELIXIR platforms (eg. data platform, training platform), and from Research Data Management community members who may know of existing community needs around FAIRification needs.  
2. Working with Data Managers and Data Stewards who are familiar with alternative approaches to FAIRification (eg. FAIR Metroline, FAIR Implementation Profiles, GO FAIR 3-Point FAIRification Framework (3PFF), etc., we seek to incorporate components from other approaches to enhance the capabilities of the FAIRification Framework, enabling it broader use across different communities and in different contexts, with respect to data types, and granularity of operation. This will also facilitate alignment with the approaches and processes being defined by EOSC and ELIXIR’s other global partners

A [FAIRification activity]({% link pages/framework/fairification_activity.md %}) therefore represents the instantiation of the FAIRification Framework to address a particular Use Case. The outputs from each Use Case are used to populate a library of Interoperability stories, as well as documentation of solutions implemented and best practices identified, which can be shared more widely. These outputs specifically facilitate the identification of similar issues faced by other users who require guidance, and can be practically shared through ELIXIR RDM ecosystem resources such as RDMkit, FAIRsharing and FAIR Cookbook. 

In practice, a FAIRification activity is run as a ‘hands on’ session with a targeted/selected group of stakeholders (community, platform, data stewards, etc); the FAIRification framework, was developed to address the significant demand for hands-on & practical advice on how to translate general and high-level FAIR principles into actionable, where “tried and tested” processes provide practical guidance to improve the FAIRness.