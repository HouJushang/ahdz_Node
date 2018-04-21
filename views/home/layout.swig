<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>{% block title %}安徽省电子商务公共服务平台{% endblock %}</title>
    {% block css %}
        <link rel="stylesheet" href="main.css">
        <style>
            .header ul{
                list-style: none;
            }
            .header ul li{
                float: left;
                margin-right: 5px;
            }
        </style>
    {% endblock %}
</head>
<body>
<div class="header">
    <ul>
        <li>首页</li>
        <li>师范创建</li>
        <li>电商服务</li>
        <li>电商优选</li>
        <li>人才服务</li>
        <li>课程培训</li>
    </ul>
    <div>
        <a href="">登录</a>
        <a href="">注册</a>
    </div>
</div>
{% block content %}{% endblock %}
<div class="footer">
    友情链接： 安徽省商务厅 安徽省网商协会 安徽国际商务职业学院
    皖ICP备06010770号 版权所有 Copyright © 2018 All Rights Reserve
</div>
</body>
</html>