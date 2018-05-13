{% extends '../layout.swig' %}
{% block content %}
    <div class="list_wrap">
        <div class="w1200 clr">
            <div class="fl personnel_nav">
                {% include './avatarC.swig' %}
                {% include './companyLeft.swig' %}
                {{ companyLeft(10) }}
            </div>
            <div class="list_text">
                <form id="addForm">
                    <div class="list_cont">
                        <div class="list_title"><i>发布招聘信息</i></div>
                        <div class="list_personal">

                            <div class="clr">
                                <div class="from_list fl w10 clr">
                                    <div class="tit wd8 fl">招聘标题：</div>
                                    <div class="con">
                                        <input type="text" name="title" class="titInput" placeholder="请输入招聘标题">
                                    </div>
                                </div>
                                <div class="from_list fl w45 clr">
                                    <div class="tit wd8 fl">职位名称：</div>
                                    <div class="con">
                                        <input type="text" name="name" placeholder="请输入职位名称">
                                    </div>
                                </div>
                                <div class="from_list fr w45 clr">
                                    <div class="tit wd8 fl">工作性质：</div>
                                    <div class="con">
                                        <input type="text" name="xingzhi">
                                    </div>
                                </div>
                                <div class="from_list fl w45 clr">
                                    <div class="tit wd8 fl">工作经验：</div>
                                    <div class="con">
                                        <input type="text" name="jingyan" placeholder="请输入工作经验">
                                    </div>
                                </div>
                                <div class="from_list fr w45 clr">
                                    <div class="tit wd8 fl">招聘人数：</div>
                                    <div class="con">
                                        <input type="text" name="renshu" placeholder="请输入招聘人数">
                                    </div>
                                </div>
                                <div class="from_list fl w45 clr">
                                    <div class="tit wd8 fl">学历要求：</div>
                                    <div class="con">
                                        <input type="text" name="xueli" placeholder="请输入学历要求">
                                    </div>
                                </div>
                                <div class="from_list fr w45 clr">
                                    <div class="tit wd8 fl">年龄要求：</div>
                                    <div class="con">
                                        <input type="text" name="nianling" placeholder="请输入年龄要求">
                                    </div>
                                </div>
                                <div class="from_list fl w45 clr">
                                    <div class="tit wd8 fl">薪酬：</div>
                                    <div class="con clr">
                                        <input type="text" name="xinchou" class="fl w45" />
                                    </div>
                                </div>
                            </div>
                            <div class="clr">
                                <div class="from_list fl w45 clr">
                                    <div class="tit wd8 fl">工作地点：</div>
                                    <div class="con">
                                        <input name="address" type="text" placeholder="请输入工作地点">
                                    </div>
                                </div>

                                <div class="from_list fl w10 clr">
                                    <div class="tit wd8 fl">职位详情：</div>
                                    <div class="con">
                                        <input type="hidden" name="xiangqing" id="xqCon">
                                        <div id="myEditor"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="button">
                                <div class="btn saveBtn">保存</div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
{% endblock %}
{% block bottomScript %}
    <script src="/homeStatic/scripts/umeditor/ueditor.config.js"></script>
    <script src="/homeStatic/scripts/umeditor/ueditor.all.min.js"></script>
    <script src="/homeStatic/scripts/umeditor/lang/zh-cn/zh-cn.js"></script>
    <script src="/homeStatic/scripts/webuploader.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".nav_list .list .tit").click(function () {
                $(this).siblings("dl").slideDown().parents(".list").siblings(".list").find("dl").slideUp();
            });
            var um = UE.getEditor('myEditor', {
                elementPathEnabled: false, //删除元素路径
                wordCount: false    //删除字数统计
            });
            $('.saveBtn').click(function(){
                $('#xqCon').val(um.getContent())
                if(!$('.titInput').val()){
                    alert('名称必填！')
                    return false
                }
                $.ajax({
                    url: "/account/addJob",
                    type: "POST",
                    dataType: "json",
                    data: $('#addForm').serializeArray(),
                    success: function (e) {
                        if(e.code == "success"){
                            alert("添加成功")
                            // window.location.href = "/account/info"
                        }else{
                            alert(e.message);
                        }
                    }
                })
            })
        });
    </script>
{% endblock %}





