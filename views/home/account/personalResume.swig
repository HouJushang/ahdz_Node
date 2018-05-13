{% extends '../layout.swig' %}
{% block content %}
    <div class="list_wrap">
        <div class="w1200 clr">
            <div class="fl personnel_nav">
                {% include './avatar.swig' %}
                <div class="nav_list">
                    <div class="list">
                        <div class="tit">基本资料</div>
                        <dl>
                            <dd>
                                <a href="/account/info">账号信息</a>
                            </dd>
                            <dd>
                                <a href="/account/modify">修改密码</a>
                            </dd>
                            <dd class="on">
                                <a href="/account/auth">实名认证</a>
                            </dd>
                        </dl>
                    </div>
                    <div class="list on">
                        <div class="tit">我的简历</div>
                        <dl>
                            <dd class="on">
                                <a href="/account/resume">创建简历</a>
                            </dd>
                            <dd>
                                <a href="/account/resumeM">简历管理</a>
                            </dd>
                        </dl>
                    </div>
                </div>
            </div>
            <div class="list_text">
                <div class="list_cont">
                    <div class="list_title"><i>我的简历</i></div>
                    <form id="addForm">
                        <div class="list_personal">
                            <div class="basic_title"><i>*</i>基本信息</div>
                            <div class="clr">
                                <div class="from_list fl w5 clr">
                                    <div class="tit wd14 fl">姓名：</div>
                                    <div class="con">
                                        <input type="text" required name="name" placeholder="请输入姓名">
                                    </div>
                                </div>
                                <div class="from_list fr w5 clr">
                                    <div class="tit wd14 fl">性别：</div>
                                    <div class="con">
                                        <select name="sex">
                                            <option value="0">男</option>
                                            <option value="1">女</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="from_list fl w5 clr">
                                    <div class="tit wd14 fl">年龄：</div>
                                    <div class="con">
                                        <input name="age" type="text" placeholder="请输入年龄">
                                    </div>
                                </div>
                                <div class="from_list fr w5 clr">
                                    <div class="tit wd14 fl">身高：</div>
                                    <div class="con">
                                        <input type="text" name="shengao" placeholder="请输入身高">
                                    </div>
                                </div>
                                <div class="from_list fl w5 clr">
                                    <div class="tit wd14 fl">婚姻状况：</div>
                                    <div class="con">
                                        <select name="jiehun">
                                            <option value="0">未婚</option>
                                            <option value="1">已婚</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="from_list fr w5 clr">
                                    <div class="tit wd14 fl">专业：</div>
                                    <div class="con">
                                        <input type="text" name="zhuanye" placeholder="请输入专业">
                                    </div>
                                </div>
                                <div class="from_list fl w5 clr">
                                    <div class="tit wd14 fl">工作经验：</div>
                                    <div class="con">
                                        <input type="text" name="jiangyan" placeholder="请输入工作经验">
                                    </div>
                                </div>
                                <div class="from_list fr w5 clr">
                                    <div class="tit wd14 fl">联系电话：</div>
                                    <div class="con">
                                        <input type="text" name="phone" placeholder="请输入联系电话">
                                    </div>
                                </div>
                                <div class="from_list fl w5 clr">
                                    <div class="tit wd14 fl">邮箱：</div>
                                    <div class="con">
                                        <input type="text" name="email" placeholder="请输入邮箱">
                                    </div>
                                </div>
                                <div class="from_list fr w5 clr">
                                    <div class="tit wd14 fl">求职状态：</div>
                                    <div class="con">
                                        <input type="text" name="zhuangtai" placeholder="请输入求职状态">
                                    </div>
                                </div>
                                <div class="from_list fl w10 clr">
                                    <div class="tit wd14 fl">通讯地址：</div>
                                    <div class="con">
                                        <input type="text" name="address" placeholder="请输入通讯地址">
                                    </div>
                                </div>
                            </div>

                            <div class="basic_title"><i>*</i>求职意向</div>
                            <div class="clr">
                                <div class="from_list fl w5 clr">
                                    <div class="tit wd14 fl">期望薪资(元/月)：</div>
                                    <div class="con clr">
                                        <input class="w45 fl" name="xinzi1" type="text">
                                    </div>
                                </div>
                                <div class="from_list fr w5 clr">
                                    <div class="tit wd14 fl">工作地点：</div>
                                    <div class="con clr">
                                        <input type="text" name="didian" placeholder="请输入工作地点">
                                    </div>
                                </div>
                                <div class="from_list fl w5 clr">
                                    <div class="tit wd14 fl">职位：</div>
                                    <div class="con clr">
                                        <input type="text" name="zhiwei" placeholder="请输入职位">
                                    </div>
                                </div>
                                <div class="from_list fr w5 clr">
                                    <div class="tit wd14 fl">行业：</div>
                                    <div class="con clr">
                                        <input type="text" name="hangye" placeholder="请输入行业">
                                    </div>
                                </div>
                                <div class="from_list fl w5 clr">
                                    <div class="tit wd14 fl">到岗时间：</div>
                                    <div class="con clr">
                                        <input type="text" name="shijian">
                                    </div>
                                </div>
                                <div class="from_list fr w5 clr">
                                    <div class="tit wd14 fl">工作类型：</div>
                                    <div class="con clr">
                                        <input type="text" name="leixing">
                                    </div>
                                </div>
                            </div>

                            <div class="basic_title"><i>*</i>教育经历</div>
                            <div class="clr">
                                <div class="jiaoyuContent">
                                </div>
                                <div class="add_input fl w10">
                                    <div class="btn addJiaoyu">新增教育经历</div>
                                </div>
                            </div>
                            <div class="basic_title">工作经验</div>
                            <div class="clr">
                                <div class="gongzuoContent">
                                </div>
                                <div class="add_input fl w10">
                                    <div class="btn addGongzuo">新增工作经验</div>
                                </div>
                            </div>

                            <div class="basic_title">培训经历</div>
                            <div class="clr">
                                <div class="peixunContent">
                                </div>
                                <div class="add_input fl w10">
                                    <div class="btn addPeixun">新增培训经历</div>
                                </div>
                            </div>

                            <div class="button">
                                <div class="btn saveForm">保存</div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


{% endblock %}
{% block bottomScript %}
    {% raw %}
        <script id="jiaoyu-template" type="text/x-handlebars-template">
            <div class="jiaoyuItem">
                <div class="from_list fl w5 clr">
                    <div class="tit wd14 fl">时间：</div>
                    <div class="con clr">
                        <input class="w45 fl time" name="jiaoyu[{{ arrayIndex }}].startTime" type="text" placeholder="开始时间">
                        <em class="fl transverse"></em>
                        <input class="w45 fl time" name="jiaoyu[{{ arrayIndex }}].endTime" type="text" placeholder="结束时间">
                    </div>
                </div>
                <div class="from_list fr w5 clr">
                    <div class="tit wd14 fl">学校名称：</div>
                    <div class="con clr">
                        <input type="text" name="jiaoyu[{{ arrayIndex }}].school" placeholder="请输入学校名称">
                    </div>
                </div>
                <div class="from_list fl w5 clr">
                    <div class="tit wd14 fl">专业名称：</div>
                    <div class="con clr">
                        <input type="text" name="jiaoyu[{{ arrayIndex }}].zhuanye" placeholder="请输入专业名称">
                    </div>
                </div>
                <div class="from_list fr w5 clr">
                    <div class="tit wd14 fl">获得学历：</div>
                    <div class="con clr">
                        <input type="text" name="jiaoyu[{{ arrayIndex }}].xueli" placeholder="请输入获得学历">
                    </div>
                </div>
            </div>
        </script>

        <script id="gongzuo-template" type="text/x-handlebars-template">
            <div class="jingyanItem">
                <div class="from_list fl w5 clr">
                    <div class="tit wd14 fl">时间：</div>
                    <div class="con clr">
                        <input class="w45 fl time" name="gongzuo[{{ gongzuoIndex }}].startTime" type="text"
                               placeholder="开始时间">
                        <em class="fl transverse"></em>
                        <input class="w45 fl time" name="gongzuo[{{ gongzuoIndex }}].endTime" type="text"
                               placeholder="结束时间">
                    </div>
                </div>
                <div class="from_list fr w5 clr">
                    <div class="tit wd14 fl">岗位：</div>
                    <div class="con clr">
                        <input type="text" name="gongzuo[{{ gongzuoIndex }}].gangwei" placeholder="请输入岗位">
                    </div>
                </div>
                <div class="from_list fl w10 clr">
                    <div class="tit wd14 fl">公司名：</div>
                    <div class="con clr">
                        <input type="text" name="gongzuo[{{ gongzuoIndex }}].companyName" placeholder="请输入公司名">
                    </div>
                </div>
            </div>
        </script>

        <script id="peixun-template" type="text/x-handlebars-template">
            <div class="peixunItem">
                <div class="from_list fl w5 clr">
                    <div class="tit wd14 fl">时间：</div>
                    <div class="con clr">
                        <input class="w45 fl time" name="peixun[{{ peixunIndex }}].startTime" type="text" placeholder="开始时间">
                        <em class="fl transverse"></em>
                        <input class="w45 fl time" name="peixun[{{ peixunIndex }}].endTime" type="text" placeholder="结束时间">
                    </div>
                </div>
                <div class="from_list fr w5 clr">
                    <div class="tit wd14 fl">培训课程：</div>
                    <div class="con clr">
                        <input type="text" name="peixun[{{ peixunIndex }}].kecheng" placeholder="请输入培训课程">
                    </div>
                </div>
                <div class="from_list fl w5 clr">
                    <div class="tit wd14 fl">培训机构：</div>
                    <div class="con clr">
                        <input type="text" name="peixun[{{ peixunIndex }}].jigou" placeholder="请输入培训机构">
                    </div>
                </div>
                <div class="from_list fl w10 clr">
                    <div class="tit wd14 fl">培训内容：</div>
                    <div class="con clr">
                        <textarea name="peixun[{{ peixunIndex }}].content" style="border: 1px solid" rows="6" cols="45"></textarea>
                    </div>
                </div>
            </div>
        </script>
    {% endraw %}
    {#<script src="/homeStatic/scripts/My97DatePicker/WdatePicker.js"></script>#}
    <script src="/homeStatic/scripts/handlebars.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".nav_list .list .tit").click(function () {
                $(this).siblings("dl").slideDown().parents(".list").siblings(".list").find("dl").slideUp();
            });
            // var um = UE.getEditor('myEditor' ,{
            //     elementPathEnabled: false, //删除元素路径
            //     wordCount: false    //删除字数统计
            // });
            var arrayIndex = 0, gongzuoIndex = 0, peixunIndex = 0;
            $('.addJiaoyu').click(function () {
                var source = document.getElementById("jiaoyu-template").innerHTML;
                var template = Handlebars.compile(source);
                var context = {
                    arrayIndex: arrayIndex,
                }
                var html = template(context);
                $('.jiaoyuContent').append(html);
                arrayIndex++
            }).trigger('click');

            $('.addGongzuo').click(function () {
                var source = document.getElementById("gongzuo-template").innerHTML;
                var template = Handlebars.compile(source);
                var context = {
                    gongzuoIndex: gongzuoIndex,
                }
                var html = template(context);
                $('.gongzuoContent').append(html);
                gongzuoIndex++
            }).trigger('click');

            $('.addPeixun').click(function () {
                var source = document.getElementById("peixun-template").innerHTML;
                var template = Handlebars.compile(source);
                var context = {
                    peixunIndex: peixunIndex,
                }
                var html = template(context);
                $('.peixunContent').append(html);
                peixunIndex++
            }).trigger('click');

            $('.saveForm').click(function(){
                $.ajax({
                    url: "/account/addResume",
                    type: "POST",
                    dataType: "json",
                    data: $('#addForm').serializeArray(),
                    success: function (e) {
                        if(e.code == "success"){
                            window.location.href = "/account/resumeM"
                        }else{
                            alert(e.message);
                        }
                    }
                })
            })
        });
    </script>
{% endblock %}





