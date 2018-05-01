<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Pragma" content="no-cache">
    <meta charset="utf-8">
    <title>{% block title %}安徽省电子商务公共服务平台{% endblock %}</title>
    <meta name="keywords" content="安徽省电子商务公共服务平台">
    <meta name="description" content="安徽省电子商务公共服务平台">
    {#<link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>#}
    {% block css %}
        <link href="/homeStatic/css/video-js.min.css" rel="stylesheet"/>
        <link href="/homeStatic/css/style.css" rel="stylesheet"/>
    {% endblock %}
    {% block topScript %}
        <!--[if lte IE 9]>
        <script src="/homeStatic/scripts/html5shiv.min.js"></script>
        <![endif]-->
    {% endblock %}
</head>
<body>

<section class="body">

    <header class="header">
        <div class="w1200 clr">
            <a href="/" class="logo clr">
                <img src="/homeStatic/images/logo.png" width="auto" height="100%" alt="logo" class="fl">
                <div class="text">
                    <h2>安徽省电子商务公共服务平台</h2>
                    <p>ANHUI PROVINCE-COMMERCE PUBLIC SERVICE CENTER</p>
                </div>
            </a>
            <div class="menu">
                <i></i>
                <i></i>
                <i></i>
            </div>
            <div class="nav clr">
                <div class="nav_list">
                    <p class="nav_a">首页</p>
                </div>
                <div class="nav_list">
                    <p class="nav_a">示范创建</p>
                    <div class="nav_list_con">
                        <a href="/category/19">电商公共服务中心</a>
                        <a href="/category/17">电商产业园区</a>
                        <a href="/category/18">电商示范企业</a>
                    </div>
                </div>
                <div class="nav_list">
                    <p class="nav_a">电商服务</p>
                    <div class="nav_list_con">
                        <a href="service_list.html">金融服务</a>
                        <a href="service_list_1.html">电商代运营</a>
                        <a href="service_list_2.html">营销推广</a>
                        <a href="service_list_3.html">设计摄影</a>
                        <a href="service_list_4.html">物流服务</a>
                        <a href="service_list_5.html">IT互联网服务</a>
                    </div>
                </div>
                <div class="nav_list">
                    <p class="nav_a">电商优选</p>
                    <div class="nav_list_con">
                        <a href="recommend_list.html">电商企业</a>
                        <a href="commodity_list.html">商品展示</a>
                    </div>
                </div>
                <div class="nav_list">
                    <p class="nav_a">人才服务</p>
                    <div class="nav_list_con">
                        <a href="information_list.html">人才信息</a>
                        <a href="enterprise_list.html">企业招聘</a>
                        <a href="personnel_list.html">人才政策</a>
                    </div>
                </div>
                <div class="nav_list">
                    <p class="nav_a">课程培训</p>
                    <div class="nav_list_con">
                        <a href="/category/20">精品课程</a>
                        <a href="/category/21">专家智库</a>
                        <a href="/category/23">电商培训机构</a>
                    </div>
                </div>
            </div>
            <div class="show_search">
                <div class="cont">
                    <input type="text" placeholder="请输入搜索内容" />
                    <i></i>
                </div>
            </div>
            <div class="search clr">
                <a href="javascript:void(0)" class="url"></a>
                <a href="javascript:void(0)" class="login">登录</a><em>|</em><a href="javascript:void(0)" class="register">注册</a>
            </div>
        </div>
    </header>
    {% block content %}{% endblock %}
    <footer class="footer">
        <div class="w1200">
            <div class="url">
                友情链接：
                <a href="http://www.ahbofcom.gov.cn/" target="_blank">安徽省商务厅</a>
                <a href="http://www.huiec.org/" target="_blank">安徽省网商协会</a>
                <a href="http://www.ahiib.com/" target="_blank">安徽国际商务职业学院</a>
            </div>
            <p>
                皖ICP备06010770号 版权所有 Copyright © 2018 All Rights Reserve
            </p>
        </div>
    </footer>

</section>


<section class="user_login">
    <div class="popup login">
        <div class="login_cont">
            <div class="tit">用户登录</div>
            <div class="con">
                <div class="list list_1">
                    <input type="text" placeholder="输入用户名或手机号">
                </div>
                <div class="list list_2">
                    <input type="text" placeholder="请输入密码">
                </div>
                <div class="list yzm list_3">
                    <input type="text" placeholder="请输入图片验证码">
                    <div class="operation">
                        <img src="/homeStatic/images/login_11.png" width="100%" height="100%">
                    </div>
                </div>
                <div class="remember clr">
                    <div class="pass on fl">记住密码</div>
                    <a href="#" class="fr">忘记密码</a>
                </div>
                <div class="btn">登录</div>
                <div class="new">新用户账号<a>注册</a></div>
            </div>
        </div>
        <div class="login_back">
            <div class="tit">找回密码</div>
            <div class="con con_1">
                <div class="list list_4">
                    <input type="text" placeholder="输入手机号">
                </div>
                <div class="list yzm list_6">
                    <input type="text" placeholder="输入短信验证码">
                    <div class="operation">
                        <div class="obtain">获取验证码</div>
                        <div class="already hide">已发送(<em>60</em>)s</div>
                    </div>
                </div>
                <div class="btn">确定</div>
            </div>
            <div class="con con_2">
                <div class="list list_2">
                    <input type="text" placeholder="输入新密码">
                </div>
                <div class="list list_8">
                    <input type="text" placeholder="再次输入新密码">
                </div>
                <div class="btn">确定</div>
            </div>
            <div class="con con_3">
                <h2>密码修改成功！</h2>
                <div class="btn">登录</div>
                <div class="btn">返回</div>
            </div>
        </div>
        <div class="del"></div>
    </div>
    <div class="popup register">
        <div class="tit clr">
            <div class="tit_list on">企业注册</div>
            <div class="tit_list">个人注册</div>
        </div>
        <div class="con">
            <div class="cons_list">
                <div class="con_registe">
                    <div class="list list_1">
                        <input type="text" placeholder="请输入公司名称">
                    </div>
                    <div class="list list_4">
                        <input type="text" placeholder="请输入手机号">
                    </div>
                    <div class="list yzm list_5">
                        <input type="text" placeholder="请输入图片验证码">
                        <div class="operation">
                            <img src="/homeStatic/images/login_11.png" width="100%" height="100%">
                        </div>
                    </div>
                    <div class="list yzm list_6">
                        <input type="text" placeholder="请输入短信验证码">
                        <div class="operation">
                            <div class="obtain">获取验证码</div>
                            <div class="already hide">已发送(<em>60</em>)s</div>
                        </div>
                    </div>
                    <div class="list list_7">
                        <input type="text" placeholder="请输入密码">
                    </div>
                    <!-- <div class="list list_8">
                        <input type="text" placeholder="请再次输入密码">
                    </div> -->
                    <div class="btn">注册</div>
                    <div class="new">已有账号，立即<a>登录</a></div>
                </div>
                <div class="con_registe">
                    <div class="list list_4">
                        <input type="text" placeholder="请输入手机号">
                    </div>
                    <div class="list yzm list_5">
                        <input type="text" placeholder="请输入图片验证码">
                        <div class="operation">
                            <img src="/homeStatic/images/login_11.png" width="100%" height="100%">
                        </div>
                    </div>
                    <div class="list yzm list_6">
                        <input type="text" placeholder="请输入短信验证码">
                        <div class="operation">
                            <div class="obtain">获取验证码</div>
                            <div class="already hide">已发送(<em>60</em>)s</div>
                        </div>
                    </div>
                    <div class="list list_7">
                        <input type="text" placeholder="请输入密码">
                    </div>
                    <!-- <div class="list list_8">
                        <input type="text" placeholder="请再次输入密码">
                    </div> -->
                    <div class="btn">注册</div>
                    <div class="new">已有账号，立即<a>登录</a></div>
                </div>
            </div>
            <div class="complete">
                <h2>恭喜您账号注册成功！</h2>
                <div class="btn">继续完善资料</div>
                <div class="btn">返回</div>
            </div>
        </div>
        <div class="del"></div>
    </div>
</section>

<section class="sidebar">
    <div class="on_line">在线咨询</div>
    <!-- <div class="sale">
        <a href="http://wpa.qq.com/msgrd?v=3&amp;uin=1690123670&amp;site=qq&amp;menu=yes">售前云云</a>
        <a href="http://wpa.qq.com/msgrd?v=3&amp;uin=1690123670&amp;site=qq&amp;menu=yes">售后花花</a>
        <div class="del"></div>
    </div> -->
    <div class="del"></div>
    <div class="side">
        <ul>
            <li>
                <a>
                    <img src="http://img.xyunhui.com/img_01_side_1.png">
                    <span>咨询热线</span>
                </a>
                <div class="con pho">0551-69113762</div>
            </li>
            <li>
                <a href="javascript:void(0)" class="on_click">
                    <img src="http://img.xyunhui.com/img_01_side_2.png">
                    <span>在线客服</span>
                </a>
            </li>
            <li>
                <a>
                    <img src="http://img.xyunhui.com/img_01_side_3.png">
                    <span>微信咨询</span>
                </a>
                <div class="con wx">
                    <img src="/homeStatic/images//homeStatic/images/ewm.png" width="100%" height="100%;">
                </div>
            </li>
        </ul>
        <div class="revert"></div>
    </div>
</section>

<script src="/homeStatic/scripts/jquery-1.8.3.min.js"></script>
<script src="/homeStatic/scripts/jquery.SuperSlide.2.1.1.js"></script>
<script src="/homeStatic/scripts/TouchSlide.1.1.js"></script>
<script src="/homeStatic/scripts/video.min.js"></script>
<script src="/homeStatic/scripts/fastclick.js"></script>
<script src="/homeStatic/scripts/common.js"></script>
<script type="text/javascript">
    $(function(){

        var page = '';
        if(page == undefined){
            page = 0;
        }else{
            page = urlParam.page;
        };

        jQuery(".body").slide({mainCell:".wapper",titCell:".nav .nav_list",defaultIndex:page,trigger:"click",effect:"left",startFun:function( i,c ){$(".wapper .index_wrap").eq(i).addClass("on").siblings(".index_wrap").removeClass("on");$(".body").scrollTop(0)}});

        $(".index_news_left").each(function(){
            var l=$(this).find(".index_news_left_ul li").length;
            if(l>1){
                if(/(iphone|ipad|android|windows phone)/.test(navigator.userAgent.toLowerCase())){
                    TouchSlide({ slideCell:"#index_news_left_1",mainCell:".index_news_left_ul",effect:"left",autoPlay:true,titCell:".hd",autoPage:"<li></li>",interTime:5000});
                    touch("#index_news_left_2");
                    touch("#index_news_left_3");
                    touch("#index_news_left_4");
                    touch("#index_news_left_5");
                    touch("#index_news_left_6");
                }else{
                    jQuery(".index_news_left").slide({mainCell:".index_news_left_ul",autoPlay:true,titCell:".hd",autoPage:"<li></li>",startFun:function( i,c ){$(".index_news_left_ul li").eq(i).addClass("on").siblings("li").removeClass("on")}});
                };
            };
        });

        $(".tab_list .list").click(function(){
            var index = $(this).index();
            $(this).addClass("on").siblings(".list").removeClass("on");
            $(".news_cont .list").eq(index).show().siblings(".list").hide();
        });

        tabs(".section_1 .index_end_tab .tab .list",".section_1 .product_list .list");
        tabs(".section_2 .index_end_tab .tab .list",".section_2 .product_list .list");
        tabs(".section_3 .index_end_tab .tab .list",".section_3 .product_list .list");
        tabs(".section_5 .index_end_tab .tab .list",".section_5 .product_list .list");
    });
    function tabs(x,y){
        $(x).click(function(){
            var index = $(this).index();
            $(this).addClass("on").siblings(".list").removeClass("on");
            $(y).eq(index).show().siblings(".list").hide();
        }).eq(0).trigger('click');
    };

    function touch(x){
        TouchSlide({ slideCell:x,mainCell:".index_news_left_ul",effect:"left",autoPlay:true,titCell:".hd",autoPage:"<li></li>",interTime:5000});
    };
</script>
{% block bottomScript %}
{% endblock %}
</body>
</html>





