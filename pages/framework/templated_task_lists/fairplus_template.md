<div class="language-mermaid figure-img img-fluid rounded">
{% include cff_template_diagram.mmd.liquid %}
</div>

The FAIRification Template operationalizes the FAIRification Process by outlining a set of clear, distinct steps for the implementation stage within the FAIRification Cycle. It comprises eight steps (covering) grouped in 3 main dimensions :  
* hosting capabilities (e.g., data access, data retrieval, versioning, etc.)
* data representation and format (e.g., applying data standards and aligning vocabularies, etc.)
* data content (e.g., identifier minting and annotation with controlled vocabularies, etc)  

The Template supports users as needed by offering concrete tasks commonly encountered across FAIRification efforts. While the Template presents the different steps in a recommended logical sequence (e.g. data cannot be transformed to an interoperable data model if no such model exists or if the data type is not properly understood), not all steps will be required for, nor relevant to each FAIRification scenario.

### Course of action
<div class="row row-cols-1 row-cols-md-2 row-cols-lg-2 g-4 mb-5 navigation-tiles">
{% for step in page.cff_properties.flow.phases %}
{%- assign source = site.cff[step].capabilities_model %}
{%- assign title = site.cff[step].title %}
{%- assign description = site.cff[step].description %}
    <div class="col" data-affiliations="">
        <div class="card h-100">
            <div class="card-body d-flex flex-column">
                <div class="d-flex align-items-center">
                    <span class=""><small>{{ site.cff[source].title }}</small></span>
                </div>
                <a class="stretched-link section-title">
                    <b>{{forloop.index}}. {{ title }}</b>
                </a>
                <p class="card-text h-100">{{ description }}</p>
            </div>
        </div>
    </div>
{%- endfor %}
</div>