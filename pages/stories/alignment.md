---
title: Alignment with the framework
---

Alignment with the framework page.

{% assign steps = site.data.library-interop-stories.ft_data
| sort: "ftStepLevel"
| group_by: "ftStepLevel" %}

{% for step_group in steps %}

{% assign step_items = step_group.items | sort: "ftSubStepLevel" %}
{% assign first_item = step_items | first %}

{%- comment -%}
Get category color from the first ftID of the step
{%- endcomment -%}

{% assign mapping = site.data.library-interop-stories.dsm_ft_mapping
| where: "ftID", first_item.ftID
| first %}

{% assign category = site.data.library-interop-stories.dsm_data
| where: "categoryID", mapping.categoryID
| first %}

<div class="card mb-3"
     style="border: 1px solid #cccccc; border-radius: 5px; background-color: {{ category.categoryColor }}; color: white">
    <div class="card-header">
        <h5 class="card-title">
            {{ first_item.ftStepLevel }}.
            {{ first_item.ftStep }}
        </h5>
    </div>
    <div class="card-body">

        {% for item in step_items %}
        <div class="card mb-3"
             style="border: 1px solid #cccccc; border-radius: 5px; background-color: white">
            <div class="card-body">
                <h5 class="card-title">
                    {{ first_item.ftStepLevel }}.{{ item.ftSubStepLevel }}. {{ item.ftSubstep }}
                </h5>
                <p class="card-text">{{ item.ftDescription }}</p>
            </div>
            <div class="card-footer">
                <ul class="list-inline mb-0">
                    {% assign mappings = site.data.library-interop-stories.stories_ft_mapping
                    | where: "ftID", item.ftID %}
                    {% if mappings.size > 0 %}
                    <li class="list-inline-item m-0 me-3">
                        <span>
                            <strong>Interoperability stories: </strong>
                            <span class="badge" style="background-color: darkmagenta">
                                {{ mappings.size }}
                            </span>
                        </span>
                    </li>
                    {% endif %}
                    {% assign mappings = site.data.library-interop-stories.ft_fc_mapping
                    | where: "ftID", item.ftID %}
                    {% if mappings.size > 0 %}
                    <li class="list-inline-item m-0 me-3">
                        <span>
                            <strong>FAIR Cookbook recipes: </strong>
                            <span class="badge" style="background-color: darkcyan">
                                {{ mappings.size }}
                            </span>
                        </span>
                    </li>
                    {% endif %}
                    {% assign mappings = site.data.library-interop-stories.ft_fm_mapping
                    | where: "ftID", item.ftID %}
                    {% if mappings.size > 0 %}
                    <li class="list-inline-item m-0 me-3">
                        <span>
                            <strong>FAIR Metroline steps: </strong>
                            <span class="badge" style="background-color: darkorange">
                                {{ mappings.size }}
                            </span>
                        </span>
                    </li>
                    {% endif %}
                </ul>
            </div>
        </div>
        {% endfor %}

    </div>
</div>

{% endfor %}