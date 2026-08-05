{% assign categories = site.data.library-interop-stories.dsm_data %}
{% assign category = categories | find: "categoryID", "hosting-environment-capabilities" %}

### {{ category.categoryName }}
{{ category.categoryDescription }}

{% assign mappings = site.data.library-interop-stories.dsm_ft_mapping
    | where: "categoryID", category.categoryID %}
<div class="row row-cols-1 row-cols-md-2 row-cols-lg-2 g-4 mb-5 navigation-tiles">
{% for mapping in mappings %}
{%- assign item = site.data.library-interop-stories.ft_data | find: "ftID", mapping.ftID %}
    <div class="col" data-affiliations="">
        <div class="card h-100">
            <div class="card-body d-flex flex-column">
                <div class="d-flex align-items-center">
                    <span class=""><small>{{ item.ftStep }}</small></span>
                </div>
                <a class="stretched-link section-title">
                    <b>{{ item.ftSubstep }}</b>
                </a>
                <p class="card-text h-100">{{ item.ftDescription }}</p>
            </div>
        </div>
    </div>
{%- endfor %}
</div>