---
layout: default
title: PowerShell Cmdlets
---

# PowerShell Cmdlets

<ul>
{%- assign here = "docs/pwsh/cmdlets/" -%}
{%- assign md_pages =
    site.pages      | where_exp: "p", "p.path contains here"
-%}
{%- assign static_md =
    site.static_files | where_exp: "f", "f.path contains here and f.extname == '.md'"
-%}
{%- assign all = md_pages | concat: static_md -%}
{%- assign all = all | sort: "path" -%}
{%- for item in all -%}
  {%- assign url = item.url | default: item.path -%}
  {%- assign title = item.title | default: item.name | default: item.path -%}
  {%- if item.name != "index.md" and item.name != "index.html" -%}
    <li><a href="{{ url | relative_url }}">{{ title }}</a></li>
  {%- endif -%}
{%- endfor -%}
</ul>
