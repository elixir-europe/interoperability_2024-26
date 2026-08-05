
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