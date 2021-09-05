{% extends "base.tpl" %}

{% block title %}
<title>{{ config.site_name }}</title>
{% endblock title %}

{% block css %}{% endblock css %}

{% block page_title %}
<h1>{{ config.site_name }}</h1>
{% endblock page_title %}

{% block page %}
<article>
    {%- for post in posts %}
    <div class="card mb-2">
        <div class="card-body">
            <h2 class="card-title">{{ post.title }}</h2>
            <p class="card-text">{{ post.headers.created | date }}</p>
            <a href="{{ config.site_url }}{{ post.url  | urlencode }}" class="btn btn-outline-primary stretched-link">
                Read more</a>
        </div>
    </div>
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