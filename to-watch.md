---
layout: default
title: "to watch"
---

<h2 class='font-sans'>my to watch lists</h2>

<ul>
{% for list in site.data.to_watch %}
  <h3 class='font-sans'>{{ list.name }}</h3>

  {% for media in list.media %}
  <li>
    <h4 class='font-sans'>{{ media.title }}</h4>
    <p>🎬 {{ media.creator }}</p>
  </li>
  {% endfor %}
{% endfor %}
</ul>

