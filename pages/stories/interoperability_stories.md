---
title: Interoperability Stories page
---

This page serves as the **Interop Stories** page...

{% for stories_data in site.data.library-interop-stories.stories_data %}
{% assign storyID = stories_data.storyID %}
<div class="card mb-3" style="border: 1px solid #cccccc; border-radius: 5px;">
    <div class="card-header">
        <a href="{{ stories_data.storyLink }}" class="card-link">
            <span class="badge text-bg-primary">{{ storyID }}</span>
        </a>
    </div>

    <div class="card-body">
        <h6 class="card-subtitle mb-2 text-body-secondary">{{ stories_data.storyCommunity }}</h6>
        <h5 class="card-title">
            {{ stories_data.storyTitle }}
        </h5>
        <p class="card-text">{{ stories_data.storyDescription }}</p>
    </div>

    <div class="card-footer text-body-secondary">

        {% assign mappings = site.data.library-interop-stories.stories_ft_mapping
        | where: "storyID", storyID %}
        {% if mappings.size > 0 %}
        <div>
            <strong>FAIRification Template steps: </strong>
            {% for item in mappings %}
            {% assign data = site.data.library-interop-stories.ft_data
            | where: "ftID", item.ftID
            | first %}
            <span class="badge" style="background-color: darkmagenta">
                    {{ data.ftSubstep }}
                </span>
            {% endfor %}
        </div>
        {% endif %}

        {% assign mappings = site.data.library-interop-stories.stories_process_mapping
        | where: "storyID", storyID %}
        {% if mappings.size > 0 %}
        <div>
            <strong>Process steps: </strong>
            {% for item in mappings %}
            {% assign data = site.data.library-interop-stories.process_data
            | where: "processID", item.processID
            | first %}
            <span class="badge" style="background-color: darkcyan">
                    {{ data.processName }}
                </span>
            {% endfor %}
        </div>
        {% endif %}


        {% assign mappings = site.data.library-interop-stories.stories_dsm_mapping
        | where: "storyID", storyID %}
        {% if mappings.size > 0 %}
        <div>
            <strong>DSM categories: </strong>
            {% for item in mappings %}
            {% assign data = site.data.library-interop-stories.dsm_data
            | where: "dsmID", item.categoryID
            | first %}
            <span class="badge" style="background-color: darkorange">
                    {{ data.categoryName }}
                </span>
            {% endfor %}
        </div>
        {% endif %}

    </div>
</div>
{% endfor %}