{% extends '../layout.swig' %}
{% block content %}
    <div class="list_wrap">
        <div class="w1200 clr">
            <div class="fl personnel_nav">
                <div class="nav_top">
                    <img src="images/zjzk_03.jpg" width="100%" height="100%">
                    <p>我是端然成长</p>
                </div>
                <div class="nav_list">
                    <div class="list">
                        <div class="tit">基本资料</div>
                        <dl>
                            <dd>
                                <a href="enterprise_account.html">账号信息</a>
                            </dd>
                            <dd>
                                <a href="enterprise_modify.html">修改密码</a>
                            </dd>
                            <dd>
                                <a href="enterprise_information.html">企业信息</a>
                            </dd>
                        </dl>
                    </div>
                    <div class="list on">
                        <div class="tit">商品展示</div>
                        <dl>
                            <dd class="on">
                                <a href="enterprise_commodity_release.html">发布商品信息</a>
                            </dd>
                            <dd>
                                <a href="enterprise_commodity_examine.html">审核中的商品</a>
                            </dd>
                            <dd>
                                <a href="enterprise_commodity_exhibition.html">展示中的商品</a>
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
                    <div class="list_title"><i>发布商品信息</i></div>
                    <div class="list_personal">

                        <div class="clr">
                            <div class="from_list fl w10 clr">
                                <div class="tit wd8 fl">产品名称：</div>
                                <div class="con">
                                    <input type="text" placeholder="请输入产品名称">
                                </div>
                            </div>
                            <div class="from_list fl w45 clr">
                                <div class="tit wd8 fl">产品规格：</div>
                                <div class="con">
                                    <input type="text" placeholder="请输入产品规格">
                                </div>
                            </div>
                            <div class="from_list fr w45 clr">
                                <div class="tit wd8 fl">产品产地：</div>
                                <div class="con">
                                    <input type="text" placeholder="请输入产品产地">
                                </div>
                            </div>
                            <div class="from_list fl w10 clr">
                                <div class="tit wd8 fl">购买链接：</div>
                                <div class="con">
                                    <input type="text" placeholder="请输入购买链接">
                                </div>
                            </div>
                            <div class="from_list fl w5 clr">
                                <div class="tit wd8 fl">产品主图：</div>
                                <div class="con clr">
                                    <img class="img_tx fl" src="images/zetp_03.jpg" width="100%" height="100%">
                                    <div class="operation">
                                        <div class="btn" id="logo_web">上传图片</div>
                                        <p class="red">*建议上传正方形的图片</p>
                                    </div>
                                </div>
                            </div>
                            <div class="from_list fl w10 clr">
                                <div class="tit wd8 fl">商品详情：</div>
                                <div class="con">
                                    <div id="myEditor"></div>
                                </div>
                            </div>
                        </div>

                        <div class="button">
                            <div class="btn">取消</div>
                            <div class="btn">保存</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
{% endblock %}
{% block bottomScript %}
    <script src="scripts/umeditor/ueditor.config.js"></script>
    <script src="scripts/umeditor/ueditor.all.min.js"></script>
    <script src="scripts/umeditor/lang/zh-cn/zh-cn.js"></script>
    <script src="scripts/common.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".nav_list .list .tit").click(function () {
                $(this).siblings("dl").slideDown().parents(".list").siblings(".list").find("dl").slideUp();
            });
            var um = UE.getEditor('myEditor', {
                elementPathEnabled: false, //删除元素路径
                wordCount: false    //删除字数统计
            });

        });
    </script>
{% endblock %}





