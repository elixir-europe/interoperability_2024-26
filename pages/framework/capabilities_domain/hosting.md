## Hosting Environment Capabilities
_What capabilities of the hosting environment are provided to enable and support the use of FAIR data_
{% include image.html file="framework/FAIRplusFAIRificationTemplate-hosting.png" caption="Hosting capabilities." alt="FAIRificationTemplate" %}

{% assign categories = site.data.library-interop-stories.dsm_data %}
{% for category in categories %}
{% if category.categoryID == "hosting-environment-capabilities" %}
<div class="card mb-4"
     style="border: 1px solid #cccccc;
            border-radius: 5px;
            background-color: {{ category.categoryColor }};
            color: white">

    <div class="card-header">
        <h4>
            {{ category.categoryLevel }}.
            {{ category.categoryName }}
        </h4>
        <small>{{ category.categoryDescription }}</small>
    </div>

    <div class="card-body">

        {% assign mappings = site.data.library-interop-stories.dsm_ft_mapping
           | where: "categoryID", category.categoryID %}

        {% for mapping in mappings %}

            {% assign item = site.data.library-interop-stories.ft_data
               | where: "ftID", mapping.ftID
               | first %}

            {% if item %}

            <div class="card mb-3"
                 style="border: 1px solid #cccccc;
                        border-radius: 5px;
                        background-color: white;
                        color: black">

                <div class="card-body">
                    <h5 class="card-title">
                        {{ item.ftStepLevel }}.{{ item.ftSubStepLevel }}
                        {{ item.ftSubstep }}
                    </h5>

                    <p class="card-text">
                        {{ item.ftDescription }}
                    </p>
                </div>

                <div class="card-footer">

                    {% assign story_mappings =
                       site.data.library-interop-stories.stories_ft_mapping
                       | where: "ftID", item.ftID %}
{% comment %}
                    {% if story_mappings.size > 0 %}

                    <strong>Stories:</strong>

                    {% for story_mapping in story_mappings %}

                        {% assign story =
                           site.data.library-interop-stories.stories_data
                           | where: "storyID", story_mapping.storyID
                           | first %}

                        <span class="badge"
                              style="background-color: darkmagenta">
                            {{ story.storyTitle }}
                        </span>

                    {% endfor %}

                    {% endif %}
{% endcomment %}
                </div>

            </div>

            {% endif %}

        {% endfor %}

    </div>

</div>
{% endif %}
{% endfor %}