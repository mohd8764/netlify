---
layout: page
title: Projects
permalink: /projects/
---


<div class="card my-5">

    <div class="card-header">

        <h4 class="mb-0"> List of Projects </h4>

    </div>

    <div class="card-body py-5">

        <ul style="list-style-type:none;">
        
            {% for post in site.posts %}
            
                {% if post.course == "Project" %}

                <li class="my-3"> {{ post.date | date_to_string }} - <a href="{{ post.url }}" target="_blank"> {{ post.title }} </a> </li>

                {% endif %}
            
            {% endfor %}

        </ul>

    </div>

</div>






