---
title: Training and outreach
toc: true
excerpt_separator: <!--more-->
cff_properties:
  id: training
  title: Training and outreach
  description: Existing recommendations for making training and outreach materials interoperable, and the ELIXIR resources that support them.
---

Interoperability work produces documentation, tutorials and course material that people outside the original project can reuse, provided they can find it and tell what it covers. This page collects existing recommendations for making training and outreach materials interoperable, and points to the resources ELIXIR already offers for this.

<!--more-->

## What we found

In 2024 and 2025 the Interoperability Platform surveyed five use-case communities: Metabolomics, Modelling, Metagenomics, Lipidomics and Disease Maps. Most respondents share documentation and training material on GitHub, Zenodo or institutional repositories. These generalist platforms make it harder to follow interoperability practices, because they ask for little domain metadata.

We then listed the training materials available for Metabolomics. They ranged from custom websites to YouTube videos. Few carried metadata or even simple tags, it was often unclear when a material was last updated, and the tools and methods they referred to were rarely described in a structured way.

## Resources to start from

- **[TeSS](https://tess.elixir-europe.org)**, ELIXIR's training portal, registers materials and events. Each entry gets its own page that can be annotated with [EDAM](https://edamontology.org) terms and linked to FAIRsharing and bio.tools, even when the original material has little metadata. *Collections* group curated materials around a topic or use case, and *learning paths* order materials into a course-like sequence. If your materials carry [Bioschemas](https://bioschemas.org) markup and your site is registered as a content provider, TeSS [harvests them automatically](https://elixir-europe-training.github.io/ELIXIR-TrP-TeSS/chapters/chapter_04/) and keeps them up to date.
- **[RDMkit]({{ site.cff.rdmkit.page_url | relative_url }})** has pages for specific communities and tasks, each with TeSS queries for related training.
- **[FAIR Cookbook]({{ site.cff.faircookbook.page_url | relative_url }})** has citable, technical recipes. One recipe shows how to [annotate training materials in TeSS](https://faircookbook.elixir-europe.org/content/recipes/findability/annotation-tess.html) with qualified references to the data they use.
- **[FAIRsharing](https://fairsharing.org)** catalogues the standards, databases and policies a training material may depend on.
- The **[FAIR Training Handbook](https://elixir-europe-training.github.io/ELIXIR-TrP-FAIR-training-handbook/)**, from the ELIXIR FAIR Training Focus Group, explains how to make training material FAIR, building on Bioschemas. The course [*Training material made FAIR by design*](https://elixir-europe-training.github.io/ELIXIR-TrP-FAIR-Material-By-Design/) teaches the same approach.
- The **[Galaxy Training Network](https://training.galaxyproject.org)** is a working example: its materials carry Bioschemas metadata and its learning pathways map onto TeSS learning paths.

These resources link to each other. A [user-journey report](https://doi.org/10.5281/zenodo.14710085) shows how researchers move between them.

## Recommendations

1. **Describe materials with Bioschemas** and register them in TeSS, so they can be harvested and stay current.
2. **Annotate with ontology terms.** Use EDAM for topics and operations in TeSS, and stable identifiers for anything else you reference.
3. **Link materials to what they use.** Point to the datasets, standards and databases ([FAIRsharing](https://fairsharing.org)), tools ([bio.tools](https://bio.tools)) and workflows ([WorkflowHub](https://workflowhub.eu)) a material relies on, instead of describing them in free text.
4. **Record versions and update dates**, and mark materials that are obsolete.
5. **Group related materials** into a TeSS collection for a use case, or a learning path when the order matters.
6. **Contribute back.** If a practice you teach is missing from RDMkit or the FAIR Cookbook, propose a page or recipe there.

## Training materials and the FAIRification Framework

Training materials can be the target of a FAIRification activity like any dataset or workflow (see [Phase A]({{ site.cff.phase_1.page_url | relative_url }})). The recommendations above give concrete goals for such an activity.

We are also preparing a package for anyone hosting a FAIRification workshop, with instructions for before, during and after the event. It will be linked here when ready.

## Ongoing work

- **TeSS.** We asked the TeSS team for support for more ontologies than EDAM (in line with the [mTeSS-X project](https://oscars-project.eu/projects/mtess-x-scaling-training-portal-federation-ris-through-multi-tenanting-and-exchange)), for user profiles that credit contributors (badges, Terms4FAIRskills, APICURON), and for better handling of versions and obsolete content.
- **Metabolomics pilot.** We are testing these recommendations on Metabolomics materials: embedding metadata following the FAIR Training Handbook, linking materials to the data they reference, and uploading them to TeSS.
- **Community Champions.** FAIRsharing Community Champions act as contacts in their communities and help spread these practices.

## Sources

These recommendations build on two Interoperability Platform reports: *M4.2 Assessment of interoperability practices in the deposition and further dissemination of training and outreach materials linked to the selected use cases* (2025) and *D4.2 Overview documenting dissemination efforts and the ways to connect them* (2026).
<!-- TODO: link Zenodo DOIs of M4.2 and D4.2 once published -->
