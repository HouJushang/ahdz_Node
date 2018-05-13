{% extends '../layout.swig'  %}
{% block content %}
    <div class="list_wrap">
        <div class="w1200 clr">
            <div class="fl personnel_nav">
                {% include './avatarC.swig' %}
                <div class="nav_list">
                    <div class="list on">
                        <div class="tit">基本资料</div>
                        <dl>
                            <dd class="on">
                                <a href="/account/info">账号信息</a>
                            </dd>
                            <dd>
                                <a href="/account/modifyC">修改密码</a>
                            </dd>
                            <dd>
                                <a href="/account/mation">企业信息</a>
                            </dd>
                        </dl>
                    </div>
                    <div class="list">
                        <div class="tit">商品展示</div>
                        <dl>
                            <dd>
                                <a href="/account/addProduct">发布商品信息</a>
                            </dd>
                            <dd>
                                <a href="/account/productShenhe">审核中的商品</a>
                            </dd>
                            <dd>
                                <a href="/account/productZhanshi">展示中的商品</a>
                            </dd>
                        </dl>
                    </div>
                    <div class="list">
                        <div class="tit">电商服务</div>
                        <dl>
                            <dd>
                                <a href="enterprise_retailers_release.html">发布电商服务</a>
                            </dd>
                            <dd>
                                <a href="enterprise_retailers_examine.html">审核中的服务</a>
                            </dd>
                            <dd>
                                <a href="enterprise_retailers_exhibition.html">展示中的服务</a>
                            </dd>
                        </dl>
                    </div>
                    <div class="list">
                        <div class="tit">招聘信息</div>
                        <dl>
                            <dd>
                                <a href="enterprise_recruit_release.html">发布招聘信息</a>
                            </dd>
                            <dd>
                                <a href="enterprise_recruit_examine.html">审核中的招聘</a>
                            </dd>
                            <dd>
                                <a href="enterprise_recruit_exhibition.html">展示中的招聘</a>
                            </dd>
                        </dl>
                    </div>
                </div>
            </div>
            <div class="list_text">
                <div class="list_cont">
                    <div class="list_title"><i>账号信息</i></div>
                    <div class="list_personal">
                        <div class="from_list w5 clr">
                            <div class="tit wd8 fl">手机号：</div>
                            <div class="con">{{ psersonInfo.user.phone }}</div>
                        </div>
                        <div class="from_list w5 clr">
                            <div class="tit wd8 fl">LOGO：</div>
                            <div class="con clr">
                                <img class="img_tx fl" id="logoBox" src="{% if psersonInfo.logo %}{{ psersonInfo.logo }}{% else %}/homeStatic/images/zjzk_03.jpg{% endif %}" id="avatarBox" width="100%" height="100%">
                                <div class="operation">
                                    <div class="btn" id="logo_web">上传图片</div>
                                    <p class="red">*建议上传正方形的图片</p>
                                </div>
                            </div>
                        </div>
                        <div class="button">
                            <div class="btn saveBtn">保存</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
{% endblock %}
{% block bottomScript %}
    <script src="/homeStatic/scripts/webuploader.min.js"></script>
    <script type="text/javascript">
        $(function(){
            $(".nav_list .list .tit").click(function(){
                $(this).siblings("dl").slideDown().parents(".list").siblings(".list").find("dl").slideUp();
            });

            var logo = '';
            uploader("#logo_web","gif,jpg,jpeg,bmp,png","image/*",2,function(e){
                logo = e.data.url;
                $('#logoBox').attr('src', '/' + logo);
            });
            $('.saveBtn').click(function() {
                $.ajax({
                    url: "/account/saveCompany/" + "{{ homeLogin.id }}",
                    type: "POST",
                    dataType: "json",
                    data: {
                        logo: $('#logoBox').attr('src'),
                    },
                    success: function (e) {
                        if(e.code == "success"){
                            window.location.href = "/account/info"
                        }else{
                            alert(e.message);
                        }
                    }
                })
            })
        });
    </script>
{% endblock %}




