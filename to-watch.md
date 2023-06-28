---
layout: default
title: "to watch"
---

<ul>
{% for list in site.data.to_watch %}
  <h3 class="font-sans capitalize">{{ list.name }}</h3>

  {% for media in list.media %}
    {% include media.md media=media %}
  {% endfor %}
{% endfor %}
</ul>

