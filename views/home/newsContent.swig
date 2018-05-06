{% extends 'layout.swig'  %}
{% block content %}
            <div class="list_wrap">
                <div class="w1200 clr">
                    {#<div class="crumbs">#}
                        {#当前位置：<a href="index.html">首页</a> &gt; 新闻详情#}
                    {#</div>#}
                    <div class="news_cont">
                        <div class="news_top">
                            <h2 class="title">{{ content.title }}</h2>
                            <div class="release">发布日期：{{ content.createdAt | date('Y-m-d') }} &nbsp; 作者：{{ content.author }} &nbsp; 来源：{{ content.origin }}</div>
                        </div>
                        <div class="content">
                            {% autoescape %}{{ content.content }}{% endautoescape %}
                        </div>

                    </div>
                </div>
            </div>
        

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
                        <a href="javascript:void(0)" onclick="hz6d_is_exist('setIsinvited()%3Bwindow.open(#liyc#https%3A%2F%2Fwww16.53kf.com%2FwebCompany.php%3Farg%3D10173076%26style%3D1%26language%3Dzh-cn%26charset%3DGBK%26kflist%3Doff%26kf%3D%26zdkf_type%3D1%26lnk_overflow%3D0%26referer%3Dfile%253A%252F%252F%252FD%253A%252F%2525E6%252596%2525B0%2525E4%2525BA%252591%2525E6%252599%252596%252F%2525E5%2525AE%252589%2525E5%2525BE%2525BD%2525E7%25259C%252581%2525E5%252595%252586%2525E5%25258A%2525A1%2525E5%25258E%252585%252Findex.html%26keyword%3D%26tfrom%3D1%26tpl%3Dcrystal_blue%26uid%3Dbad2e64a81f5117d18177d6cd2fcff37%26is_group%3D%26is_group%3D#liyc#%2C%20#liyc#_blank#liyc#%2C%20#liyc#height%3D600%2Cwidth%3D800%2Ctop%3D50%2Cleft%3D200%2Cstatus%3Dyes%2Ctoolbar%3Dno%2Cmenubar%3Dno%2Cresizable%3Dyes%2Cscrollbars%3Dno%2Clocation%3Dno%2Ctitlebar%3Dno#liyc#)');">
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
                            <img src="images/images/ewm.png" width="100%" height="100%;">
                        </div>
                    </li>
                </ul>
                <div class="revert"></div>
            </div>
        </section><section class="user_login">
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
                                <img src="images/login_11.png" width="100%" height="100%">
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
                                    <img src="images/login_11.png" width="100%" height="100%">
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
                                    <img src="images/login_11.png" width="100%" height="100%">
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

        
            
     
        <script src="scripts/jquery-1.8.3.min.js"></script>
        <script src="scripts/jquery.SuperSlide.2.1.1.js"></script>
        <script src="scripts/TouchSlide.1.1.js"></script>
        <script src="scripts/fastclick.js"></script>
        <script src="scripts/common.js"></script>
        <script type="text/javascript">
            $(function(){
                
                
            });
        </script>
    </body>
</html>





