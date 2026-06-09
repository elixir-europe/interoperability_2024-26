---
title: The FAIRification Template
---

{% include image.html file="framework/FAIRificationTemplate-upper-bar.png" caption="The FAIRification Template." alt="FAIRificationTemplate" %}

The FAIRification Template operationalizes the FAIRification Process by outlining a set of clear, distinct steps for the implementation stage within the FAIRification Cycle. It comprises eight steps (covering) grouped in 3 main dimensions :  
* hosting capabilities (e.g., data access, data retrieval, versioning, etc.)
* data representation and format (e.g., applying data standards and aligning vocabularies, etc.)
* data content (e.g., identifier minting and annotation with controlled vocabularies, etc)  

The Template supports users as needed by offering concrete tasks commonly encountered across FAIRification efforts. While the Template presents the different steps in a recommended logical sequence (e.g. data cannot be transformed to an interoperable data model if no such model exists or if the data type is not properly understood), not all steps will be required for, nor relevant to each FAIRification scenario.
  
    
    
## Hosting Environment Capabilities
_What capabilities of the hosting environment are provided to enable and support the use of FAIR data_
{% include image.html file="framework/FAIRificationTemplate-hosting.png" caption="Hosting capabilities." alt="FAIRificationTemplate" %}
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


## Content and Context
_What is reported in the data object and the metadata object_
{% include image.html file="framework/FAIRificationTemplate-content.png" caption="The FAIRification Template - Content & Context capabilities." alt="FAIRificationTemplate" %}


{% for category in categories %}
{% if category.categoryID == "content-and-context" %}
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



## Representation and Format
_How the data object and metadata object are represented and formatted_
{% include image.html file="framework/FAIRificationTemplate-representation.png" caption="The FAIRification Template - Representation and Format capabilities." alt="FAIRificationTemplate" %}

{% assign categories = site.data.library-interop-stories.dsm_data %}

{% for category in categories %}
{% if category.categoryID == "representation-and-format" %}
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

# The FAIRification Framework
{% include image.html file="framework/FAIRificationTemplate.png" caption="The FAIRification Template." alt="FAIRificationTemplate" %}
  