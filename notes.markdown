---
layout: page
title: Notes
permalink: /notes/
---

<div>

  {% for group in site.data.grouplist.coursegroups %}

    {% if group.name != "Project" %}

      {% if group.url and group.name%}
        <hr class="border border-muted mt-5">
        <h3> <a href="{{ group.url }}" target="_blank"> {{ group.name }} </a> </h3>
      {% else if not group.url and group.name %}
        <hr class="border border-muted mt-5">
        <h3>{{ group.name }} </h3>
      {% endif %}


      {% for course in site.data.courselist.courses %}

        {% if course.group != "Project" and course.group == group.name %}

          <div class="card my-5">

            <div class="card-header" id="heading + {{ course.name }}">

              <h4 class="mb-0"> {{ course.name }} </h4>

            </div>

            <div class="card-body">

              {% if course.url %}
              <p> <a href="{{ course.url }}" target="_blank"> Course Link </a> </p>

              <hr>
              {% endif %}

              <ul style="list-style-type:none;">
              
              {% for post in site.posts %}
              
                {% if post.course contains course.name %}

                  <li> {{ post.date | date_to_string }} - <a href="{{ post.url }}"> {{ post.title }} </a> </li>

                {% endif %}
              
              {% endfor %}

              </ul>

            </div>

          </div>

        {% endif %}

      {% endfor %}

    {% endif %}

  {% endfor %}

</div>
