<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="generator" content="mdblog.rs">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="{{ config.site_url }}/static/favicon.png">
    <link rel="stylesheet" href="{{ config.site_url }}/static/main.css">
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/5.0.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/5.0.2/js/bootstrap.min.js"></script>
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/5.15.3/css/solid.min.css" rel="stylesheet"><!--fas -->
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/5.15.3/css/fontawesome.min.css" rel="stylesheet">
    {%- block css %}{% endblock css -%}
    {%- block title %}{% endblock title -%}
</head>

<body>
    <nav class="navbar navbar-expand-sm sticky-top navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="{{ config.site_url }}/index.html">{{ config.site_name }}</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText"
                aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="{{ config.site_url }}/index.html">Blog</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <main>
        <div class="container" id="main_container">
            <div class="row justify-content-md-center" id="title_flex">
                <div class="col-md-auto align-items-center text-center" id="page_title">
                    {%- block page_title%}{% endblock page_title %}
                </div>
            </div>
            <div class="row">
                <div class="col-sm-9">
                    {%- block page %}{% endblock page %}
                </div>
                <aside class="col-sm-3">
                    <div class="card mb-2">
                        <div class="card-header">Tags</div>
                        <div class="card-body row">
                            {%- for tag in all_tags %}
                            <div class="tag_item col-1">
                                <a href="{{ config.site_url }}{{ tag.url  | urlencode }}">
                                    {{ tag.name }}<sup>{{ tag.num }}</sup>
                                </a>
                            </div>
                            {%- endfor %}
                        </div>
                    </div>
                    <div class="card mb-2">
                        <div class="card-header">Links</div>
                        <div class="card-body row">
                            <div class="tag_item col-1">
                                <a href="{{ config.site_url }}/atom.xml" target="_blank">
                                    <i class="fas fa-rss"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </aside>
            </div>
        </div>
    </main>
    <footer class="container">
        <div class="row justify-content-md-center" id="footer_row">
            <div class="col-md-auto align-items-center text-center" id="footer_col">
                <div>
                    <p>
                        <span>引擎 </span>
                        <a target="_blank" rel="noopener"
                            href="https://github.com/Sciroccogti/mdblog.rs/tree/katex-rs">mdblog.rs</a>
                        <span class="footer-separator">|</span>
                        <span>主题 </span>
                        <a target="_blank" rel="noopener" href="https://github.com/Sciroccogti/mdblog.rs-flat">Flat</a>
                    </p>
                    <p> {{ config.footer_note }} </p>
                </div>
            </div>
        </div>
    </footer>
    {%- block js %}{% endblock js -%}
</body>

</html>