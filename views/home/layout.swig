<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>{% block title %}My Site{% endblock %}</title>
    {% block css %}
        <link rel="stylesheet" href="main.css">
    {% endblock %}
</head>
<body>
<div class="header">this header</div>
{% block content %}{% endblock %}
<div class="footer">this footer</div>
</body>
</html>