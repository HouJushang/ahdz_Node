{% extends 'layout.swig'  %}
{% block content %}
    <div class="list_wrap">
        <div class="w1200 clr">
            {#<div class="crumbs">#}
                {#当前位置：<a href="/">首页</a> &gt; <a>课程培训</a> &gt; 教学视频#}
            {#</div>#}
            <div class="news_cont">
                <div class="news_top">
                    <h2 class="title">{{ content.title }}</h2>
                    <div class="release">{{ content.createdAt | date('Y-m-d') }}</div>
                </div>
                <div class="content">
                    <div class="video">
                        {% autoescape %}{{ content.content }}{% endautoescape %}
                    </div>
                </div>

            </div>
        </div>
    </div>
{% endblock %}