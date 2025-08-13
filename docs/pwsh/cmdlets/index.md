---
layout: default
title: PowerShell Cmdlets
nav_order: 1
has_children: true
---

# PowerShell Cmdlets

<ul>
{% assign here = 'docs/pwsh/cmdlets/' %}

{%- comment -%} Render Markdown pages that Jekyll processes {%- endcomment -%}
{% for p in site.pages %}
  {% if p.path contains here and p.name != 'index.md' and p.name != 'index.html' %}
    <li><a href="{{ p.url | relative_url }}">{{ p.title | default: p.name }}</a></li>
  {% endif %}
{% endfor %}

{%- comment -%} Also list plain .md files (without front matter) if any {%- endcomment -%}
{% for f in site.static_files %}
  {% if f.path contains here and f.extname == '.md' and f.name != 'index.md' %}
    <li><a href="{{ f.path | relative_url }}">{{ f.name }}</a></li>
  {% endif %}
{% endfor %}
</ul>
