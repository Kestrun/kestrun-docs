---
layout: default
title: PowerShell Cmdlets
---

# PowerShell Cmdlets

Browse the generated cmdlet docs:

<ul>
{%- assign here = "/docs/pwsh/cmdlets/" -%}
{%- assign pages = site.pages | where_exp: "p", "p.path contains here" -%}
{%- for p in pages -%}
  {%- unless p.url == here or p.name == "index.md" or p.name == "index.html" -%}
  <li><a href="{{ p.url | relative_url }}">{{ p.title | default: p.name }}</a></li>
  {%- endunless -%}
{%- endfor -%}
</ul>
