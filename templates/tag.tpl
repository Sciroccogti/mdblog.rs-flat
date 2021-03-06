{% extends "base.tpl" %}

{% block title %}
<title>{{ title }}</title>
{% endblock title %}

{%- block css %}{% endblock css -%}


{% block page_title %}
<h1>{{ title }}</h1>
{% endblock page_title %}

{% block page %}
<article>
    {%- for post in posts %}
    <section>
        <span>{{ post.headers.created | date }}</span>
        <span><a href="{{ config.site_url }}{{ post.url  | urlencode }}">{{ post.title }}</a></span>
    </section>
    {%- endfor %}
</article>

<div id="pages">
    {%- if prev_name %}
    <span class="prev"><a href="{{ prev_name | urlencode }}">« Previous</a></span>
    {% endif -%}
    {%- if next_name %}
    <span class="next"><a href="{{ next_name | urlencode }}">Next »</a></span>
    {% endif -%}
</div>
{%- endblock page %}

{% block js %}
<script src="{{ config.site_url }}/static/main.js"></script>
{% endblock js %}