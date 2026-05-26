# The Common FAIRification Framework
### A Conceptual Framework for Resource-Centric FAIRification
**Draft v0.2 — May 2026**
*D3.1 working draft — EIP WP3*

---

## Abstract

The Common FAIRification Framework provides a structured, resource-centric approach to FAIRification — the process of progressively improving the Findability, Accessibility, Interoperability, and Reusability of digital research resources. It defines the common requirements, recommendations, processes, and resources that drive successful FAIR implementations, with a focus on interoperability as the central FAIRification goal.

The Framework is built on two interlocking conceptual components. The first is the **FAIR Resource Conceptual Model**: a shared reference frame that defines what is being FAIRified in precise, unambiguous terms, through a central unit (the FAIR Resource) and four surrounding attributes (Resource Descriptor, Resource Model, Context Model, Hosting Environment). The second is the **FAIR Resource Maturity Model**: an assessment and measurement engine that defines how to evaluate and progressively improve the FAIRification state of any resource, through a three-dimensional indicator grid structured around maturity threads that track FAIR concerns across six usage-goal-defined levels.

These two components together enable and ground the **FAIRification Process** — a resource-centric, assessment-driven operational workflow in which assessment precedes goal formalisation and the FAIRification task list is derived directly from the gap between a resource's current and target maturity state.

The Framework is designed to be generalised across resource types. The Dataset Profile — instantiated by the FAIRplus FAIR Dataset Maturity (FAIR-DSM) model — is the reference instantiation. Additional Resource Type Profiles can be developed by applying the same Conceptual Model template and thread structure to other classes of digital resource.

---

## 1. Introduction

In the contemporary landscape of data-rich, AI-driven research, the ability to discover, access, and reuse research outputs across disciplinary and institutional boundaries has become a prerequisite for scientific progress. The FAIR principles — making research resources Findable, Accessible, Interoperable, and Reusable — provide the foundational framework for this ambition [Wilkinson et al. 2016]. Since their publication, the FAIR principles have seen rapid global adoption, underpinning research data management policies across funders, institutions, and international research programmes.

However, the implementation-neutral design of the FAIR principles — deliberately avoiding prescription of specific mechanisms in order to encourage diverse adoption — has also created significant challenges. A proliferation of FAIR implementation approaches has produced research outputs with incompatible, inconsistent, and incomparable states of FAIRness. Data stewards and researchers attempting to FAIRify their resources face a landscape of overlapping evaluation frameworks, divergent metrics, and guidance that addresses individual FAIR dimensions in isolation rather than holistically. The result is persistent uncertainty about what FAIRification means in practice, what to do first, and how to know when enough has been achieved.

The Common FAIRification Framework addresses these challenges by providing a shared conceptual architecture — a common reference frame within which FAIRification goals can be set, current states assessed, improvement tasks derived, and outcomes evaluated — applicable across ELIXIR Nodes, Communities, and Projects, and aligned with the broader EOSC and global FAIR ecosystem.

The Framework builds on and generalises two prior outputs of the FAIRplus project: the **FAIRification Framework** [Welter et al. 2023], which provided a structured process for generating tailored FAIRification plans; and the **FAIR Dataset Maturity (FAIR-DSM) model** [Emam et al.], which provided a maturity-based approach to assessing and improving the FAIRness of research datasets. The Common FAIRification Framework abstracts both beyond their original dataset-and-project-centric scope, producing a generalised architecture applicable to any class of digital research resource.

---

## 2. Framework Overview

The Common FAIRification Framework comprises two conceptual components and one operational process, all grounded in a common reference frame.

```
┌──────────────────────────────────────────────────────────────────────────┐
│                    Common FAIRification Framework                         │
│                                                                           │
│  ┌─────────────────────────────────────────────────────────────────────┐ │
│  │              Component 1: FAIR Resource Conceptual Model             │ │
│  │                                                                     │ │
│  │  Defines WHAT is being FAIRified — the shared reference frame       │ │
│  │                                                                     │ │
│  │   Context Model                                                     │ │
│  │        │                                                            │ │
│  │   Resource Model ◄── FAIR Resource ──► Resource Descriptor          │ │
│  │                           │                                         │ │
│  │                   Hosting Environment                               │ │
│  └─────────────────────────────────────────────────────────────────────┘ │
│                              │ grounds                                    │
│  ┌─────────────────────────────────────────────────────────────────────┐ │
│  │              Component 2: FAIR Resource Maturity Model               │ │
│  │                                                                     │ │
│  │  Defines HOW to measure and improve FAIRification state             │ │
│  │                                                                     │ │
│  │  3 dimensions × 6 usage-goal levels × maturity threads              │ │
│  │  Indicators as measurement criteria AND task specifications          │ │
│  │  Gap report → FAIRification task list                               │ │
│  └─────────────────────────────────────────────────────────────────────┘ │
│                              │ enables                                    │
│  ┌─────────────────────────────────────────────────────────────────────┐ │
│  │                   The FAIRification Process                          │ │
│  │                                                                     │ │
│  │  Scope → Assess → Set Goal → Implement (cycles) → Review            │ │
│  │                                                                     │ │
│  │  Supported by: FAIRification Template · FAIRification Workplan      │ │
│  │                FAIR Cookbook · RDMkit · Interoperability Stories     │ │
│  └─────────────────────────────────────────────────────────────────────┘ │
│                              │ instantiated by                            │
│  ┌─────────────────────────────────────────────────────────────────────┐ │
│  │                     Resource Type Profiles                           │ │
│  │                                                                     │ │
│  │  Dataset Profile (FAIR-DSM) · Service Profile · Software Profile    │ │
│  │  Knowledge Resource Profile · [further profiles TBD]               │ │
│  └─────────────────────────────────────────────────────────────────────┘ │
└──────────────────────────────────────────────────────────────────────────┘
```

**Component 1 — the FAIR Resource Conceptual Model** defines *what is being FAIRified*. It establishes a shared vocabulary of precisely defined objects that resolves the chronic ambiguity of the terms "data" and "metadata" in FAIR implementations. Every element of the Framework — every indicator, every process phase, every profile — operates in terms of the Conceptual Model's five elements.

**Component 2 — the FAIR Resource Maturity Model** defines *how to measure and improve* the FAIRification state of a resource. Inspired by the Capability Maturity Model (CMM), it provides an evolutionary path for resource improvement through a structured grid of maturity indicators organised across three dimensions and six usage-goal-defined levels. The model's indicators serve simultaneously as measurement criteria and task specifications — a duality that is the mechanism connecting assessment directly to implementation.

**The FAIRification Process** uses both components to provide an operational workflow for FAIRification. It is resource-centric, assessment-driven, and iterative. The process is supported by a set of operational tools — the FAIRification Template, the FAIRification Workplan, the FAIR Cookbook, and the library of interoperability stories — that provide concrete implementation guidance for Phase 4.

**Resource Type Profiles** instantiate the Framework for specific classes of digital resource, defining the concrete meaning of each Conceptual Model element and specifying the complete indicator set for that resource type. The FAIR-DSM (Dataset Profile) is the reference instantiation.

---

## 3. Component 1 — The FAIR Resource Conceptual Model

### 3.1 The FAIR Resource: the central unit

The Conceptual Model is built around a single foundational concept: the **FAIR Resource**.

> **A FAIR Resource is the digital object that is defined as the unit of FAIR sharing and reuse within a given context. It is the primary target of FAIRification assessment and implementation.**

The definition of what constitutes a FAIR Resource is context-dependent and resource-type-specific. In a data management context, a dataset is the unit. In a software context, a software release or version. In a knowledge resource context, an ontology version. In a service context, a service endpoint specification. The key requirement is that the unit must be *purposefully defined* before assessment begins — this act of scoping is the first step of FAIRification.

This may appear obvious, but it is consistently underestimated in practice. The FAIR principles deliberately avoid specifying what objects "data" and "metadata" refer to, enabling broad adoption at the cost of persistent ambiguity in implementation. Experience from the FAIRplus programme demonstrated that where the unit of assessment was not explicitly defined at the outset, assessments produced ambiguous results and workplans that could not be executed. Defining the FAIR Resource forces the necessary agreement: *what exactly is being FAIRified, at what level of granularity, and with what boundaries?*

Once the unit is defined, the terms "data" and "metadata" resolve unambiguously: *data* is what is in the FAIR Resource; *metadata* is what is in its Descriptor; *context* is what is in the Context Model; and *access* is what the Hosting Environment provides.

### 3.2 The four surrounding attributes

Every FAIR Resource exists within a Conceptual Model comprising the resource itself and four surrounding attributes. These five elements together define the complete surface area of what must be assessed and improved during FAIRification.

```
                    ┌─────────────────────────────┐
                    │       Context Model          │
                    │  (interpretive frame for     │
                    │   the resource's domain)     │
                    └─────────────┬───────────────┘
                                  │ contextualises
  ┌───────────────────┐           ▼           ┌──────────────────────────┐
  │  Resource Model   │◄──── FAIR Resource ───►│   Resource Descriptor    │
  │  (structural      │      (the unit of      │   (the metadata object   │
  │   schema of the   │       FAIR sharing)    │    describing the        │
  │   resource)       │                        │    resource)             │
  └───────────────────┘                        └──────────────────────────┘
                                  │
                                  │ hosted in
                    ┌─────────────▼───────────────┐
                    │    Hosting Environment       │
                    │  (platform capabilities      │
                    │   enabling FAIR use)         │
                    └─────────────────────────────┘
```

**The Resource Descriptor** is the metadata object that describes the FAIR Resource — the record that enables a resource to be found and understood without necessarily accessing the resource itself. The Descriptor captures identity, content, context, structure, provenance, access conditions, and relationships. The quality and completeness of the Descriptor is what primarily determines a resource's Findability and Accessibility.

**The Resource Model** is the structural specification of the FAIR Resource's internal organisation. It defines the components, elements, fields, or parameters that make up the resource and their relationships. For a dataset this is the data model or schema; for a software tool this is the interface and dependency specification; for an ontology this is the formal ontology structure. The Resource Model is what makes the resource structurally interpretable and enables interoperability between resources of the same type.

**The Context Model** is the domain-specific interpretive frame that contextualises the FAIR Resource. It provides the information needed to understand the resource's purpose, the domain in which it was produced, and its relationships to other resources. The Context Model enables a resource to be not merely found and accessed but *understood* — used appropriately, compared with related resources, and integrated across studies or domains. The Context Model is distinct from the Descriptor: the Descriptor describes *what the resource is*; the Context Model explains *what it means and where it came from*.

**The Hosting Environment** is the platform, infrastructure, or service in which the FAIR Resource and its Descriptor are stored and from which they are served. The Hosting Environment is assessed not for its intrinsic quality but for the capabilities it exposes to users — capabilities for storage and persistence, retrieval, discovery, authentication, and governance. A well-described, well-modelled resource in an inaccessible or undiscoverable hosting environment is not FAIR.

### 3.3 Why the Conceptual Model matters

The four-attribute pattern serves two functions simultaneously. First, it resolves the ambiguity of "data" and "metadata" into distinct, clearly bounded objects, each with a defined role in FAIRification. Every indicator in the Maturity Model is anchored to a specific attribute of the Conceptual Model, at a defined level of granularity — making indicators unambiguous to assess and to act on.

Second, it establishes completeness. A resource cannot be meaningfully FAIR if any of the four attributes is missing or inadequate. The Conceptual Model defines the full surface area of FAIRification. Overemphasising one attribute at the expense of another — for example, producing an excellent Descriptor for a resource that is structurally uninterpretable — will not achieve a given maturity level.

### 3.4 Instantiating the Conceptual Model for different resource types

The Conceptual Model is invariant across all resource types. What varies between types is the concrete meaning of each attribute: what the Descriptor looks like for a service versus a dataset, what the Context Model captures for software versus an ontology, and so on. Defining these concrete meanings for a given resource type is the primary act of creating a Resource Type Profile (Section 6).

---

## 4. Component 2 — The FAIR Resource Maturity Model

The FAIR Resource Maturity Model defines how to measure and improve the FAIRification state of a resource. It is inspired by the **Capability Maturity Model (CMM)**, which provides organisations with an evolutionary path for improving software engineering processes by defining progressively higher levels of process capability. In an analogous way, the FAIR Resource Maturity Model defines an evolutionary path for *resource improvement* — where each maturity level represents a qualitatively distinct state of FAIR-readiness, calibrated to a specific scope of resource usage and sharing.

The Maturity Model has three structural elements: the three dimensions that classify FAIR requirements, the maturity threads that give the model its structural logic, and the six maturity levels defined by usage goals. These are described in the subsections below. The indicators that populate the model are described in Section 4.4.

### 4.1 The three dimensions of FAIR maturation

The Maturity Model organises FAIR requirements into three **dimensions** — orthogonal categories of requirement applying across all resource types and all maturity levels. The three dimensions were identified through a bottom-up reclassification of existing FAIR indicators (from the RDA FAIR Data Maturity Model and FAIRsFAIR metrics), which revealed three consistent underlying themes across the FAIR principles.

**Dimension 1 — Content**
*What is included in the FAIR Resource and its Descriptor.*
Content requirements concern the presence, completeness, and quality of information within the resource, its Descriptor, and its Context Model. Representative questions: Is the resource assigned a unique identifier? Does the Descriptor include minimum information needed to interpret the resource? Does the Context Model describe the relevant relationships between resources?

**Dimension 2 — Representation & Format**
*How the FAIR Resource and its Descriptor are structured and encoded.*
Representation requirements concern the form in which the resource and its metadata are expressed — for human readability, machine readability, and machine interpretability. Representative questions: Is the resource available in a machine-readable format? Does the Descriptor conform to a recognised metadata schema? Is the Context Model encoded in a machine-interpretable representation?

**Dimension 3 — Hosting Environment Capabilities**
*What capabilities the Hosting Environment provides to enable FAIR use.*
Hosting requirements concern the platform's functional capabilities, not the content or form of the resource itself. Representative questions: Can the resource be retrieved via a standardised open protocol? Is the resource indexed and searchable? Does the platform maintain persistent identifiers? Does it offer authentication and authorisation?

The three dimensions are genuinely independent axes of FAIRification: a resource can have rich content in a proprietary format with no accessible hosting; a well-structured resource can sit on a personal file system; a well-hosted platform can contain poorly described, non-standard resources. This independence is what makes the three-dimensional assessment diagnostic — it reveals not just *how much* FAIRification work remains but *what kind*.

#### Granularity within dimensions

Within each dimension, requirements apply at different levels of granularity. For **Content** and **Representation**, the granularity hierarchy is:
- *Resource level* — requirements applying to the resource as a whole
- *Component level* — requirements applying to structural elements within the resource
- *Value level* — requirements applying to values or terms used within the resource

For **Hosting**, requirements are sub-categorised by capability type: Storage & Persistence; Retrieval & Access; Discovery & Search; Governance & Management (at higher levels).

This sub-categorisation is essential for indicator precision — an indicator that does not specify the granularity at which it applies is ambiguous to assess and to act on.

### 4.2 Maturity threads — the structural logic of the model

The most important structural property of the Maturity Model is not immediately visible from its organisation grid: **requirements do not change between levels — their required manifestation does**.

Each dimension contains a set of persistent **maturity threads** — coherent lines of requirement that run vertically across maturity levels, tracking the progressive maturation of a single FAIR concern. At each successive level, the requirement along a thread tightens: the same concern must be addressed with increasing specificity, standardisation, and scope. What changes between levels is not *what* is required but *how rigorously* and *at what scale* it must be satisfied.

This thread structure is the key architectural difference between the FAIR Resource Maturity Model and a flat checklist of FAIR criteria. A checklist treats each requirement as independent. The thread model treats requirements as related instances of a deepening commitment — each level does not add unrelated new requirements but raises the bar on requirements already established. The levels define the scope of reuse the resource is expected to support, and each thread's progression mirrors that expanding scope.

**The underlying progression logic:** The scope of reuse expands across levels in a consistent pattern — from single-context use (L0–L1) to project-level use (L2) to community-level use (L3) to cross-community and cross-domain use (L4) to enterprise-governed use (L5). Each thread's progression is calibrated to what that expanding scope demands.

#### Representative threads (from the Dataset Profile)

**Thread R2 — Resource Structure Representation**
*How the resource itself is represented and standardised*

| Level | Requirement |
|-------|-------------|
| L0 | No representation of the resource purposed for sharing and reuse is available |
| L1 | The resource has a purposely defined representation as a shareable, reusable object |
| L2 | The resource is standardised to a *locally defined* structural model |
| L3 | The resource is standardised to a *community standard* structural model |
| L4 | The resource is standardised to a *semantic model* and represented using Linked Data |
| L5 | The resource is granularly standardised and managed at element level (e.g. ISO 11179 MDR) |

**Thread R1 — Context Model Representation**
*How the interpretive context of the resource is formalised and encoded*

| Level | Requirement |
|-------|-------------|
| L0 | Contextual information is not formally represented in any form |
| L1 | Contextual information is represented at *summary level* within the Descriptor |
| L2 | Contextual information is formally represented as a *locally defined* Context Model |
| L3 | Contextual information is formally modelled according to a *community or domain standard* |
| L4 | Contextual information is formally represented using *semantically defined Common Data Elements* |
| L5 | Contextual information is *defined and managed by enterprise Master Data Management* |

**Thread H-Search — Hosting Discovery Capability**
*What search and discovery capabilities the Hosting Environment provides*

| Level | Requirement |
|-------|-------------|
| L0 | The Hosting Environment does not offer searching capabilities |
| L1 | The Hosting Environment enables browsing and search of the *Descriptor* |
| L2 | The Hosting Environment enables browsing and search across *related resources* |
| L3 | The Hosting Environment uses *controlled and ontology terms* to search within resource content |
| L4 | The Hosting Environment provides *semantic search* capability |
| L5 | The Hosting Environment implements governed enterprise search with reference data management |

#### L0 as a diagnostic baseline

L0 is not a maturity level a resource achieves or occupies. It is a **diagnostic baseline** — a reference description of the state from which FAIRification begins, where the minimum preconditions for sharing and reuse have not yet been established. L0 indicators are formulated as the negations of the foundational requirements that L1 establishes. Reading L0 status tells an assessor which foundational threads have not yet been initiated, defining the floor from which maturation begins.

#### Progressive threads and level-anchored requirements

Not all indicators follow a full-span progression pattern. The model contains two structurally distinct types of requirement:

**Progressive threads** run across most or all levels, tracking a FAIR concern as it deepens in specificity, standardisation, and scope. These are the backbone of the model. Progressive threads warrant stable named identifiers, because those identifiers convey meaningful information about a coherent line of maturation.

**Level-anchored requirements** switch on at a specific level — the level at which the scope of sharing first makes them relevant — and may have only a short progression or a single appearance. They are genuinely inapplicable below the level at which they first appear, not merely absent by oversight. The licence requirement illustrates this: it first appears at L3 (where community-level sharing demands a formally declared public licence), has one step of form-based progression to L4 (machine-readable licence), and is absent at L1–L2 (team-level sharing does not require a public licence) and at L5 (where licence management is subsumed within governance). The level at which a requirement anchors may also differ across resource types — a licence requirement may be relevant from L2 for software, where even team-level sharing raises licensing questions.

### 4.3 Maturity levels — defined by usage goals

The Maturity Model defines six levels, L0 through L5. Levels are not defined by FAIR scores or indicator counts. They are defined by the **usage goals they enable** — the specific activities and forms of reuse that become possible when a resource achieves a given level of maturity.

This is the sharpest distinction between the FAIR Resource Maturity Model and other FAIR evaluation frameworks. A maturity level answers the question: *what can users meaningfully do with this resource at this level?* Levels are the valid FAIR metric; percentages of indicator completion are diagnostic tools, not scores.

A resource reaches a maturity level when it meets **all** indicators prescribed for that level across all three dimensions. Requirements are cumulative: each level's indicators build on all preceding levels.

| Level | Generic Name | Usage-Goal Milestone | Typical Hosting Context |
|-------|-------------|----------------------|------------------------|
| **L0** | Unshared Resource | The resource exists but cannot be shared or reused beyond its originating context. Diagnostic baseline only. | Personal or local storage; no standardised access |
| **L1** | Identifiable Resource | The resource is defined, identified, and accessible as a distinct FAIR object with basic descriptive metadata. Can be found and retrieved by anyone. | Generic catalogue or general-purpose repository |
| **L2** | Described Resource | Sufficiently described and structurally organised for reuse within a project or team. Related resources navigable and comparable. | Project-specific or institutional repository |
| **L3** | Standardised Resource | Conforms to community-recognised standards. Can be shared, discovered, and reused across the originating community. | Standard community or domain repository |
| **L4** | Interoperable Resource | Semantically typed. Can be integrated with resources from other communities and domains. Cross-domain analysis possible. | Cross-domain data commons or federated infrastructure |
| **L5** | Governed Resource | Optimally managed at the most granular level within a governed enterprise environment with master data, reference data, and provenance management. | Enterprise data/resource management platform |

#### The principle of "FAIR enough"

Not every resource needs to reach L5. The appropriate target is the level at which the resource is sufficiently FAIR to support its intended uses — the "FAIR enough" state. The usage-goal definition of each level makes this concept operational: a stakeholder selects a target level by identifying the usage goals that level enables, without requiring FAIR expertise to interpret an abstract score. A dataset intended for publication alongside a paper requires L1–L2; one intended for community-wide reuse requires L3; cross-domain harmonisation projects require L4–L5.

### 4.4 FAIR Maturity Indicators — the atomic units

FAIR Maturity Indicators are the operational elements of the Maturity Model. Each indicator is a discrete, binary requirement: a FAIR Resource either meets it (1) or does not (0).

Each indicator:
- Belongs to exactly one cell in the maturity grid: one level × one dimension
- Applies at a specified granularity sub-category within that dimension
- Is expressed as a verifiable, unambiguous statement of requirement
- Carries a unique resolvable identifier: `[PROFILE]-[LEVEL]-[DIMENSION][THREAD]`
  — e.g. `DSM-3-R2` = Dataset Profile, Level 3, Representation dimension, Resource Structure thread

#### The dual role of indicators: measurement and task specification

The most consequential property of FAIR Maturity Indicators is that each one simultaneously serves two roles:

> A FAIR Maturity Indicator is both a **measurement criterion** — it tells you whether a resource meets a given requirement — and a **task specification** — an unmet indicator defines precisely what must be done to improve the resource's maturity.

This duality is the mechanism connecting assessment directly to implementation. No expert interpretation is required to translate unmet indicators into actionable tasks: the indicators *are* the tasks. This places a high demand on indicator language — an indicator that is too vague to assess unambiguously is also too vague to act on. Precision and unambiguity in indicator formulation are design requirements.

#### Assessment mechanism

For a given FAIR Resource, the assessment:
1. Evaluates each indicator as met (1) or not met (0)
2. Calculates **% completion** toward each level, per dimension — indicating *progress* toward a level, not a FAIR score
3. Assigns a **maturity level** when 100% completion is reached across all three dimensions for that level

The per-dimension percentages are diagnostic: they identify which dimension of FAIRification work is outstanding and by how much, enabling targeted effort. A resource at 100% Content and Representation but 60% Hosting for Level 2 has a precise diagnosis: the remaining work is in the Hosting Environment.

#### Indicators as an implementation taxonomy

Beyond their role in assessment, FAIR Maturity Indicators function as a **controlled vocabulary for organising FAIRification guidance**. Any implementation resource — a protocol, a Cookbook recipe, a workflow, an interoperability story — can be annotated with the indicators it addresses. This creates a navigable map from "what needs to be done" (the unmet indicator) to "how to do it" (the implementation resource). This integration pattern was validated by annotating FAIR Cookbook recipes with DSM indicators, and it provides the intended integration point between the Framework, the FAIR Cookbook, RDMkit, and the D3.2 library of interoperability stories. Gaps in indicator coverage — levels or threads for which no guidance exists — become visible through this annotation process.

---

## 5. The FAIRification Process

The FAIRification Process is the operational workflow that uses both Framework components to produce a tailored, bounded, and iterative FAIRification plan for a given resource. It is resource-centric — the unit of analysis is the FAIR Resource, not the project or organisation that produced it.

The key structural difference from conventional FAIRification approaches is the ordering of assessment and goal-setting: **assessment precedes goal formalisation**. A FAIRification goal stated before assessment is aspirational; a goal stated after assessment is grounded in the current state of the resource and the concrete work required to improve it. The process makes this explicit.

```
  ┌──────────────────────────────────────────────────────────────────┐
  │                      FAIRification Process                        │
  │                                                                  │
  │   Phase 1        Phase 2          Phase 3                        │
  │   SCOPE      →   ASSESS       →   SET GOAL                       │
  │   Define the     Run maturity      Review gap report.            │
  │   FAIR           assessment.       Select target level.          │
  │   Resource.      Output: gap       Unmet indicators =            │
  │   Select         report per        FAIRification task list.      │
  │   profile.       level/dim.        ↓                             │
  │   Identify                         ─────────────────────────┐    │
  │   constraints.       ▲             Phase 4                  │    │
  │                      │             IMPLEMENT (cycles)        │    │
  │                      └─────────────Re-assess each cycle.    │    │
  │                      (re-assess)   Update task list.        │    │
  │                                    ↓                        │    │
  │                                    Phase 5                  │    │
  │                                    REVIEW                   │    │
  │                                    Final assessment.        │    │
  │                                    Document. Optionally     │    │
  │                                    re-enter at Phase 3.     │    │
  └──────────────────────────────────────────────────────────────────┘
```

**Phase 1 — Scope**
Define the FAIR Resource: what is being FAIRified, at what granularity, and with what boundaries (using the Conceptual Model as the reference frame). Select the resource type and activate the corresponding Resource Type Profile. Articulate an initial FAIRification intent — this may be vague; precision emerges from assessment. Identify the context: who owns the resource, who will undertake the work, and what platform and infrastructure constraints exist.

**Phase 2 — Assess**
Run the FAIR maturity assessment using the indicators of the selected profile. The assessment may be self-assessed by the resource owner, facilitated by a data steward or FAIR expert, or conducted via an automated tool — all modes are supported. The output is a **gap report**: for each maturity level and dimension, which indicators are met and which are not. The gap report converts a vague intent into a precise picture of the current FAIR state.

**Phase 3 — Set Goal**
Review the gap report with stakeholders. Select a **target maturity level** using two inputs: the gap report (showing where the resource currently sits and where effort is needed) and the usage goals (defining what the target level must enable). The not-achieved indicators for the target level automatically constitute the **FAIRification task list**. This is the point at which a vague FAIRification intent becomes a concrete, bounded, actionable goal.

**Phase 4 — Implement (iterative cycles)**
Execute the tasks on the task list. Implementation guidance can be located via indicator-tagged resources: FAIR Cookbook recipes, RDMkit guidance, community standards documentation, and interoperability stories from D3.2. The **FAIRification Template** provides a structured set of implementation steps that can be selected and sequenced as appropriate for the specific FAIRification tasks at hand. The **FAIRification Workplan** organises the selected steps into an actionable, time-bounded plan for a given implementation cycle. At the end of each cycle, re-assess: produce an updated gap report, update the task list, and iterate.

**Phase 5 — Review**
Once the target level is achieved (or the effort concludes), conduct a final assessment confirming the maturity level attained. Document achievements, FAIR improvements, lessons learned, and residual gaps. The review may identify a new target level, at which point the process re-enters at Phase 3.

### 5.1 Two entry modes: top-down and bottom-up

The process supports two distinct entry modes, both validated in practice across FAIRplus project applications:

**Top-down entry** — no predefined FAIRification goal exists. Assessment reveals the current state; the gap report identifies a realistic and meaningful target. The goal *emerges* from the assessment. Appropriate when stakeholders know they want to improve FAIRness but have not yet determined what "improved" means for their specific resource.

**Bottom-up entry** — a FAIRification goal exists but is vague or unvalidated (e.g., "reach Level 3"). Assessment grounds the goal in the actual current state, converting aspiration into informed commitment, and surfaces the specific work required. The goal is *validated and refined* by the assessment.

Both modes enter the same process at Phase 2. The assessment is the pivot point regardless of entry mode.

### 5.2 Constrained FAIRification

Some FAIR requirements — particularly in the Hosting Environment dimension — may be outside the control of the team undertaking FAIRification: a proprietary platform that cannot be modified, an institutional repository lacking certain capabilities. The Framework accommodates this explicitly: target levels and task lists should be scoped to what is achievable within the team's sphere of control. Requirements that cannot be addressed due to external constraints are documented as known limitations, not failures. The per-dimension gap report makes constrained dimensions visible, enabling stakeholders to understand precisely where the ceiling is and why.

---

## 6. Resource Type Profiles

A **Resource Type Profile** is a complete instantiation of the Common FAIRification Framework for a specific class of digital resource. Each profile makes the generic framework operational for its resource type by defining:

1. **The Conceptual Model elements** — the concrete meaning of the five elements (FAIR Resource unit, Resource Descriptor, Resource Model, Context Model, Hosting Environment) for this resource type

2. **Usage goals per level** — what each maturity level enables in terms of activities and forms of reuse specific to this resource type

3. **The indicator set** — the complete set of FAIR Maturity Indicators for each dimension × level × granularity sub-category, comprising:
   - The progressive threads (what each thread looks like at each level for this resource type)
   - The level-anchored requirements (which requirements apply and at which level they first become relevant for this resource type)
   - Any additional threads specific to this resource type

4. **Shared indicators** — indicators inherited from the meta-model's shared indicator library, covering FAIR requirements universal across resource types (persistent identifier assignment, open access protocol, licence declaration, authentication and authorisation)

The **FAIR-DSM (Dataset Profile)** is the reference instantiation of the Framework. It is the most fully developed profile, with 73 indicators across L0–L5, and is the template against which new profiles are constructed. When building a new profile, the thread structure of the Dataset Profile provides the design template: for each progressive thread, the question is "what does this concern look like at each level for this resource type?" — following the same progression logic (undefined → scoped → locally standardised → community standardised → semantically typed → governed). Level-anchored requirements are re-positioned by asking at which level the scope of sharing first makes them relevant for the new resource type.

*The scope of which profiles to develop for D3.1 (beyond the Dataset Profile) is to be determined in consultation with WP3 stakeholders.*

---

## 7. Relationship to Existing Standards and Frameworks

The Common FAIRification Framework is designed to be complementary to, not competitive with, existing FAIR evaluation and implementation resources.

**FAIRification Framework (Welter et al. 2023):** The assessment-driven process in Section 5 builds directly on the FAIRification Framework published in *Nature Scientific Data*. The Common FAIRification Framework generalises it from project-centric to resource-centric, makes explicit the ordering of assessment before goal formalisation, and positions the FAIR Maturity Model as the structural backbone of the assessment phase. The FAIRification Template and Workplan from the original framework are preserved as operational tools supporting Phase 4.

**RDA FAIR Data Maturity Model and FAIRsFAIR metrics:** The FAIR-DSM was developed through a bottom-up reclassification of these two frameworks, identifying the three dimensions as the consistent underlying structure of FAIR requirements. DSM indicators carry crosswalk mappings to RDA and FAIRsFAIR indicators; these mappings are preserved in the Dataset Profile and will be defined for new profiles.

**FAIR Cookbook and RDMkit:** Both provide implementation guidance annotatable with Framework indicators (Section 4.4), creating a navigable connection from assessment gaps to practical implementation steps and identifying gaps in existing guidance where new content is needed.

**EOSC FAIR Digital Objects (FDO) framework:** The FAIR Resource as a scoped, typed digital object with defined attributes is consistent with the FDO framing adopted in EOSC infrastructure. The Resource Type Profile concept provides a mechanism for aligning maturity assessment with FDO type definitions.

**ELIXIR FAIR Services Architecture Framework:** The Common FAIRification Framework is designed to align with and complement the ELIXIR FAIR Services Architecture, supporting FAIRification of data and services across ELIXIR Nodes, Communities, and Projects and promoting alignment with EOSC and ELIXIR's global partners.

---

*End of Draft v0.2*

---

**Open items for next iteration:**
- Confirm naming: "FAIR Resource" vs "FAIR Digital Object" as the canonical term for the central unit
- Determine resource type profile scope for D3.1 (beyond the Dataset Profile)
- Thread audit: formal classification of all DSM sub-category codes as progressive threads vs. level-anchored requirements
- Consider whether a dedicated section on the FAIRification Template (8 steps) belongs in the document or remains an external companion resource
