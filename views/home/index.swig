{% extends 'indexLayout.swig'  %}
{% macro imgSlide(data) %}
    <ul class="clr index_news_left_ul">
        {% for key, val in data %}
            <li>
                <a href="{{ val.link }}">
                    <div class="img">
                        <img src="{{ val.image }}" width="100%" height="100%">
                    </div>
                    <h2>{{ val.title }}</h2>
                </a>
            </li>
        {% endfor %}
    </ul>
    <ul class="hd clr"></ul>
{% endmacro %}
{% block content %}
    <div class="wapper">
        <div class="index_wrap section_1">
            <div class="index_news">
                <div class="w1200 clr">
                    <div class="index_news_left fl" id="index_news_left_1">
                        {{ imgSlide(slide10) }}
                    </div>
                    <div class="index_news_right">
                        {% include './indexComponent/newsSlide.swig' %}
                    </div>
                </div>
            </div>
            <div class="index_product">
                <div class="w1200">
                    <div class="index_end_tab clr">
                        <div class="name demonstration fl">示范创建&nbsp;&nbsp;|</div>
                        <div class="tab fl clr">

                            <div class="list c_index">电商产业园区</div>
                            <div class="list c_index">电商示范企业</div>
                        </div>
                        <a href="/category/19" class="more c_index">查看更多 &gt;</a>
                    </div>
                    <div class="product_list">

                        <div class="list">
                            <ul class="clr">
                                {% for key, val in yuanqu %}
                                    <li>
                                        <a href="/content/17/{{ val.id }}">
                                            <div class="img">
                                                <img src="{{ val.thumb }}" width="100%" height="100%">
                                            </div>
                                            <div class="text">
                                                <h2 class="title">{{ val.title }}</h2>
                                            </div>
                                        </a>
                                    </li>
                                {% endfor %}
                            </ul>
                        </div>
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in qiye %}
                                    <li>
                                        <a href="/content/18/{{ val.id }}">
                                            <div class="img">
                                                <img src="{{ val.thumb }}" width="100%" height="100%">
                                            </div>
                                            <div class="text">
                                                <h2 class="title">{{ val.title }}</h2>
                                            </div>
                                        </a>
                                    </li>
                                {% endfor %}
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
            <div class="index_nav">
                <div class="w1200 clr">
                    <a href="/service/金融服务">
                        <div class="cont">
                            <em class="em_1"></em>
                            <p>金融服务</p>
                        </div>
                    </a>
                    <a href="/service/电商代运营">
                        <div class="cont">
                            <em class="em_2"></em>
                            <p>电商代运营</p>
                        </div>
                    </a>
                    <a href="/service/营销推广">
                        <div class="cont">
                            <em class="em_3"></em>
                            <p>营销推广</p>
                        </div>
                    </a>
                    <a href="/service/IT互联网服务">
                        <div class="cont">
                            <em class="em_4"></em>
                            <p>IT互联网服务</p>
                        </div>
                    </a>
                    <a href="/service/物流服务">
                        <div class="cont">
                            <em class="em_5"></em>
                            <p>物流服务</p>
                        </div>
                    </a>
                    <a href="/service/设计摄影">
                        <div class="cont">
                            <em class="em_6"></em>
                            <p>设计摄影</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="index_wrap section_2">
            <div class="index_news">
                <div class="w1200 clr">
                    <div class="index_news_left fl" id="index_news_left_2">
                        {{ imgSlide(slide11) }}
                    </div>
                    <div class="index_news_right">
                        <div class="conts">
                            <div class="recommend_top clr">
                                <div class="name establish_img fl">热点资讯</div>
                                <a href="/category/1" class="more fr">查看更多 &gt;</a>
                            </div>
                            <div class="establish_end">
                                <ul>
                                    {% for key, val in position1 %}
                                        <li>
                                            <a href="/content/{{ val.categoryId }}/{{ val.id }}" class="clr">
                                                <div class="title">● &nbsp;{{ val.title }}</div>
                                                <div class="time">{{ val['createdAt'] | date('Y-m-d') }}</div>
                                            </a>
                                        </li>
                                    {% endfor %}
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="index_product">
                <div class="w1200">
                    <div class="index_end_tab clr">
                        <div class="name demonstration fl">示范创建&nbsp;&nbsp;|</div>
                        <div class="tab fl clr">
                            <div class="list c_0 on">电商公共服务中心</div>
                            <div class="list c_0">电商产业园区</div>
                            <div class="list c_0">电商示范企业</div>
                        </div>
                        <a href="/category/19" class="more c_0">查看更多 &gt;</a>
                    </div>
                    <div class="product_list">
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in category19 %}
                                    <li class="establish_li">
                                        <a href="{{ val.link }}" target="_blank">
                                            <div class="cont" style="background: url({{ val.image }}) left center no-repeat;" >{{ val.title }}</div>
                                        </a>
                                    </li>
                                {% endfor %}
                            </ul>
                        </div>
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in category17 %}
                                <li>
                                    <a href="/content/{{ val.categoryId }}/{{ val.id }}">
                                        <div class="img">
                                            <img src="{{ val.image }}" width="100%" height="100%">
                                        </div>
                                        <div class="text">
                                            <h2 class="title">{{ val.title }}</h2>
                                        </div>
                                    </a>
                                </li>
                                {% endfor %}
                            </ul>
                        </div>
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in category18 %}
                                <li>
                                    <a href="/content/{{ val.categoryId }}/{{ val.id }}">
                                        <div class="img">
                                            <img src="{{ val.image }}" width="100%" height="100%">
                                        </div>
                                        <div class="text">
                                            <h2 class="title">{{ val.title }}</h2>

                                        </div>
                                    </a>
                                </li>
                                {% endfor %}
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="index_wrap section_3">
            <div class="index_news">
                <div class="w1200 clr">
                    <div class="index_news_left fl" id="index_news_left_3">
                        {{ imgSlide(slide12) }}
                    </div>
                    <div class="index_news_right">
                        <div class="service_recommend clr">
                            <div class="service_tj">
                                <div class="text_con">
                                    <div class="tit">推荐服务商</div>
                                    <div class="service_list">
                                        <div class="list">
                                            <a href="/service/金融服务" class="name">金融服务</a>
                                            <a href="/serviceContent/{{ servicePosition4.id }}" class="text">{{ servicePosition4.title }}</a>
                                        </div>
                                        <div class="list">
                                            <a href="/service/电商代运营" class="name">电商代运营</a>
                                            <a href="/serviceContent/{{ servicePosition5.id }}" class="text">{{ servicePosition5.title }}</a>
                                        </div>
                                        <div class="list">
                                            <a href="/service/营销推广" class="name">营销推广</a>
                                            <a href="/serviceContent/{{ servicePosition6.id }}" class="text">{{ servicePosition6.title }}</a>
                                        </div>
                                        <div class="list">
                                            <a href="/service/物流服务" class="name">物流服务</a>
                                            <a href="/serviceContent/{{ servicePosition8.id }}" class="text">{{ servicePosition7.title }}</a>
                                        </div>
                                        <div class="list">
                                            <a href="/service/IT互联网服务" class="name">IT/互联网服务</a>
                                            <a href="/serviceContent/{{ servicePosition9.id }}" class="text">{{ servicePosition9.title }}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="service_btn clr">
                                <a href="javascript:void(0)" class="btn_1 register">
                                    <div class="cont">
                                        <div class="text">入驻申请</div>
                                    </div>
                                </a>
                                <a href="enterprise_commodity_release.html" target="_blank" class="btn_2">
                                    <div class="cont">
                                        <div class="text">发布服务</div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="index_product">
                <div class="w1200">
                    <div class="index_end_tab clr">
                        <div class="name demonstration fl">热门服务产品&nbsp;&nbsp;|</div>
                        <div class="tab fl clr">
                            <div class="list on">金融服务</div>
                            <div class="list">电商代运营</div>
                            <div class="list">营销推广</div>
                            <div class="list">设计摄影</div>
                            <div class="list">物流服务</div>
                            <div class="list">IT互联网服务</div>
                        </div>
                        <a href="/service/金融服务" class="more">查看更多 &gt;</a>
                    </div>
                    <div class="product_list">
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in serviceList4.rows %}
                                <li class="service_li">
                                    <a href="/serviceContent/{{ val.id }}" class="clr">
                                        <div class="img fl">
                                            <img src="{{ val.image }}" width="100%" height="100%">
                                        </div>
                                        <div class="text">
                                            <div class="cont">
                                                <h2 class="title">{{ val.title }}</h2>
                                                <div class="brief">
                                                    {{ val.description }}</div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                {% endfor %}
                            </ul>
                        </div>
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in serviceList5.rows %}
                                    <li class="service_li">
                                        <a href="/serviceContent/{{ val.id }}" class="clr">
                                            <div class="img fl">
                                                <img src="{{ val.image }}" width="100%" height="100%">
                                            </div>
                                            <div class="text">
                                                <div class="cont">
                                                    <h2 class="title">{{ val.title }}</h2>
                                                    <div class="brief">
                                                        {{ val.description }}</div>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                {% endfor %}
                            </ul>
                        </div>
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in serviceList6.rows %}
                                    <li class="service_li">
                                        <a href="/serviceContent/{{ val.id }}" class="clr">
                                            <div class="img fl">
                                                <img src="{{ val.image }}" width="100%" height="100%">
                                            </div>
                                            <div class="text">
                                                <div class="cont">
                                                    <h2 class="title">{{ val.title }}</h2>
                                                    <div class="brief">
                                                        {{ val.description }}</div>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                {% endfor %}
                            </ul>
                        </div>
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in serviceList7.rows %}
                                    <li class="service_li">
                                        <a href="/serviceContent/{{ val.id }}" class="clr">
                                            <div class="img fl">
                                                <img src="{{ val.image }}" width="100%" height="100%">
                                            </div>
                                            <div class="text">
                                                <div class="cont">
                                                    <h2 class="title">{{ val.title }}</h2>
                                                    <div class="brief">
                                                        {{ val.description }}</div>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                {% endfor %}
                            </ul>
                        </div>
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in serviceList8.rows %}
                                    <li class="service_li">
                                        <a href="/serviceContent/{{ val.id }}" class="clr">
                                            <div class="img fl">
                                                <img src="{{ val.image }}" width="100%" height="100%">
                                            </div>
                                            <div class="text">
                                                <div class="cont">
                                                    <h2 class="title">{{ val.title }}</h2>
                                                    <div class="brief">
                                                        {{ val.description }}</div>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                {% endfor %}
                            </ul>
                        </div>
                        <div class="list">
                            <ul class="clr">
                                {% for key, val in serviceList9.rows %}
                                    <li class="service_li">
                                        <a href="/serviceContent/{{ val.id }}" class="clr">
                                            <div class="img fl">
                                                <img src="{{ val.image }}" width="100%" height="100%">
                                            </div>
                                            <div class="text">
                                                <div class="cont">
                                                    <h2 class="title">{{ val.title }}</h2>
                                                    <div class="brief">
                                                        {{ val.description }}</div>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                {% endfor %}
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="index_wrap section_4">
            <div class="index_news">
                <div class="w1200 clr">
                    <div class="index_news_left fl" id="index_news_left_4">
                        <div class="recommend_lb">
                            {{ imgSlide(slide15) }}
                            <ul class="hd clr"></ul>
                        </div>
                        <div class="entrance clr">
                            <a href="javascript:void(0)" class="register settled fl"><i>入驻申请</i></a>
                            <a href="enterprise_commodity_release.html" class="release fr"><i>发布产品</i></a>
                        </div>
                    </div>

                    <div class="index_news_right">
                        <div class="conts recommend_conts">
                            <div class="recommend_top clr">
                                <div class="name fl">电商名企</div>
                                <a href="recommend_list.html" class="more fr">查看更多 &gt;</a>
                            </div>
                            <div class="recommend_end">
                                <ul class="clr">

                                    <li>
                                        <a href="recommend_list_details.html">
                                            <div class="img">
                                                <img src="/homeStatic/images/images/mytj_07.jpg" width="100%" height="100%">
                                            </div>
                                            <h2>安徽熊孩子食品</h2>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="recommend_list_details.html">
                                            <div class="img">
                                                <img src="/homeStatic/images/images/mytj_09.jpg" width="100%" height="100%">
                                            </div>
                                            <h2>芜湖三只松鼠</h2>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="recommend_list_details.html">
                                            <div class="img">
                                                <img src="/homeStatic/images/images/mytj_15.jpg" width="100%" height="100%">
                                            </div>
                                            <h2>南国食品</h2>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="recommend_list_details.html">
                                            <div class="img">
                                                <img src="/homeStatic/images/images/mytj_16.jpg" width="100%" height="100%">
                                            </div>
                                            <h2>汤圆妞妞食品</h2>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="recommend_list_details.html">
                                            <div class="img">
                                                <img src="/homeStatic/images/images/mytj_17.jpg" width="100%" height="100%">
                                            </div>
                                            <h2>合肥春光食品</h2>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="recommend_list_details.html">
                                            <div class="img">
                                                <img src="/homeStatic/images/images/mytj_18.jpg" width="100%" height="100%">
                                            </div>
                                            <h2>芜湖国圣食品</h2>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="index_recommend">
                <div class="w1200">
                    <div class="index_end_tab clr">
                        <div class="name famous fl">名优商品</div>
                        <a href="/product" class="more fr">查看更多 &gt;</a>
                    </div>
                    <div class="index_recommend_end">
                        <ul class="clr">
                            <li>
                                <a href="commodity_list_details.html">
                                    <div class="img">
                                        <img src="/homeStatic/images/images/mytjxm_07.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <div class="brief">纯手工莲子酥喜糖100g</div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="commodity_list_details.html">
                                    <div class="img">
                                        <img src="/homeStatic/images/images/mytjxm_03.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <div class="brief">双塔红薯粉条400g山东特产方便酸辣粉地瓜螺旋粉条</div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="commodity_list_details.html">
                                    <div class="img">
                                        <img src="/homeStatic/images/images/mytjxm_05.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <div class="brief">【岱山特产】蓬莱仙芝茶罐装125克</div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="commodity_list_details.html">
                                    <div class="img">
                                        <img src="/homeStatic/images/images/mytjxm_09.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <div class="brief">【岱山特产】艾草青团50g</div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="commodity_list_details.html">
                                    <div class="img">
                                        <img src="/homeStatic/images/images/mytjxm_11.jpg" width="100%" height="100%">
                                    </div>
                                    <div class="text">
                                        <div class="brief">【岱山特产】沙洋花生250gx6袋</div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="index_wrap section_5">
            <div class="index_news">
                <div class="w1200 clr">
                    <div class="index_news_left fl" id="index_news_left_5">
                        {{ imgSlide(slide13) }}
                    </div>
                    <div class="index_news_right">
                        <div class="conts">
                            <div class="recommend_top clr">
                                <div class="name rcfw_img fl">人才政策信息</div>
                                <a href="personnel_list.html" class="more fr">查看更多 &gt;</a>
                            </div>
                            <div class="establish_end">
                                <ul>
                                    <li>
                                        <a href="news_details_4.html" class="clr">
                                            <div class="title">● &nbsp;【政策解读】商务部:农村电子商务人才如何培养? </div>
                                            <div class="time">2018-02-20</div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="news_details_4.html" class="clr">
                                            <div class="title">● &nbsp;人大代表梁倩娟:加大电商扶贫政策扶持力</div>
                                            <div class="time">2018-02-24</div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="news_details_4.html" class="clr">
                                            <div class="title">● &nbsp;安徽人才政策解读二:“泛3315计划”政策的“含金量</div>
                                            <div class="time">2018-03-10</div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="news_details_4.html" class="clr">
                                            <div class="title">● &nbsp;电商人才舞台!江门将举办一个潜力巨大的职业竞赛</div>
                                            <div class="time">2018-03-21</div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="news_details_4.html" class="clr">
                                            <div class="title">● &nbsp;安徽出台重磅引才政策人才最高安家补助可达200万</div>
                                            <div class="time">2018-03-27</div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="news_details_4.html" class="clr">
                                            <div class="title">● &nbsp;2018全国两会,这些内容值得电商人关心</div>
                                            <div class="time">2018-04-01</div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="news_details_4.html" class="clr">
                                            <div class="title">● &nbsp;合肥出台重磅引才政策人才最高安家补助可达200万</div>
                                            <div class="time">2018-05-05</div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="index_product">
                <div class="w1200">
                    <div class="index_end_tab clr">
                        <div class="name personnel fl">人才服务&nbsp;&nbsp;|</div>
                        <div class="tab fl clr">
                            <div class="list on">人才信息</div>
                            <div class="list">企业招聘</div>
                        </div>
                        <a href="information_list.html" class="more">查看更多 &gt;</a>
                    </div>
                    <div class="product_list">
                        <div class="list">
                            <div class="list_table">
                                <dl class="dl_rc">
                                    <dd class="clr">
                                        <a class="w10" href="information_details.html">**珊</a>
                                        <a class="w15" href="information_details.html">学历：本科</a>
                                        <a class="w20" href="information_details.html">毕业院校：安徽三联学院</a>
                                        <a class="w20" href="information_details.html">专业：会计电算化</a>
                                        <a class="w15" href="information_details.html">工作年限：2年</a>
                                        <a class="w20" href="information_details.html">求职岗位：主办会计</a>
                                    </dd>
                                    <dd class="clr">
                                        <a class="w10" href="information_details.html">**程</a>
                                        <a class="w15" href="information_details.html">学历：本科</a>
                                        <a class="w20" href="information_details.html">毕业院校：合肥工业大学</a>
                                        <a class="w20" href="information_details.html">专业：土木工程</a>
                                        <a class="w15" href="information_details.html">工作年限：3年</a>
                                        <a class="w20" href="information_details.html">求职岗位：工程项目主管</a>
                                    </dd>
                                    <dd class="clr">
                                        <a class="w10" href="information_details.html">**松</a>
                                        <a class="w15" href="information_details.html">学历：本科</a>
                                        <a class="w20" href="information_details.html">毕业院校：安徽财经大学</a>
                                        <a class="w20" href="information_details.html">专业：会计电算化</a>
                                        <a class="w15" href="information_details.html">工作年限：应届毕业生</a>
                                        <a class="w20" href="information_details.html">求职岗位：会计</a>
                                    </dd>
                                    <dd class="clr">
                                        <a class="w10" href="information_details.html">**珊</a>
                                        <a class="w15" href="information_details.html">学历：本科</a>
                                        <a class="w20" href="information_details.html">毕业院校：安徽三联学院</a>
                                        <a class="w20" href="information_details.html">专业：会计电算化</a>
                                        <a class="w15" href="information_details.html">工作年限：2年</a>
                                        <a class="w20" href="information_details.html">求职岗位：主办会计</a>
                                    </dd>
                                    <dd class="clr">
                                        <a class="w10" href="information_details.html">**程</a>
                                        <a class="w15" href="information_details.html">学历：本科</a>
                                        <a class="w20" href="information_details.html">毕业院校：合肥工业大学</a>
                                        <a class="w20" href="information_details.html">专业：土木工程</a>
                                        <a class="w15" href="information_details.html">工作年限：3年</a>
                                        <a class="w20" href="information_details.html">求职岗位：工程项目主管</a>
                                    </dd>
                                    <dd class="clr">
                                        <a class="w10" href="information_details.html">**松</a>
                                        <a class="w15" href="information_details.html">学历：本科</a>
                                        <a class="w20" href="information_details.html">毕业院校：安徽财经大学</a>
                                        <a class="w20" href="information_details.html">专业：会计电算化</a>
                                        <a class="w15" href="information_details.html">工作年限：应届毕业生</a>
                                        <a class="w20" href="information_details.html">求职岗位：会计</a>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="list">
                            <div class="list_table">
                                <dl class="clr">
                                    <dd>
                                        <a href="enterprise_details.html">
                                            <div class="title">底薪3400急聘首批滴滴出行客服</div>
                                            <div class="dl_list clr">
                                                <div class="dd">工作地点：合肥</div>
                                                <div class="dd">学历要求：初中</div>
                                                <div class="dd">性别要求：不限</div>
                                                <div class="dd">专业要求：无</div>
                                                <div class="dd">薪资：4000—5000元</div>
                                            </div>
                                        </a>
                                    </dd>
                                    <dd>
                                        <a href="enterprise_details.html">
                                            <div class="title">高薪招聘双休销售人员</div>
                                            <div class="dl_list clr">
                                                <div class="dd">工作地点：合肥</div>
                                                <div class="dd">学历要求：大专</div>
                                                <div class="dd">性别要求：不限</div>
                                                <div class="dd">专业要求：无</div>
                                                <div class="dd">薪资：3000—4000元</div>
                                            </div>
                                        </a>
                                    </dd>
                                    <dd>
                                        <a href="enterprise_details.html">
                                            <div class="title">底薪3400急聘首批滴滴出行客服</div>
                                            <div class="dl_list clr">
                                                <div class="dd">工作地点：合肥</div>
                                                <div class="dd">学历要求：初中</div>
                                                <div class="dd">性别要求：不限</div>
                                                <div class="dd">专业要求：无</div>
                                                <div class="dd">薪资：4000—5000元</div>
                                            </div>
                                        </a>
                                    </dd>
                                    <dd>
                                        <a href="enterprise_details.html">
                                            <div class="title">高薪招聘双休销售人员</div>
                                            <div class="dl_list clr">
                                                <div class="dd">工作地点：合肥</div>
                                                <div class="dd">学历要求：大专</div>
                                                <div class="dd">性别要求：不限</div>
                                                <div class="dd">专业要求：无</div>
                                                <div class="dd">薪资：3000—4000元</div>
                                            </div>
                                        </a>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="index_wrap section_6">
            <div class="index_news">
                <div class="w1200 clr">
                    <div class="index_news_left fl" id="index_news_left_6">
                        {{ imgSlide(slide14) }}
                    </div>
                    <div class="index_news_right">
                        <div class="mechanism clr">
                            <div class="mechanism_left">
                                <div class="contss">
                                    <div class="tit clr">
                                        <div class="name fl">热门电商培训机构</div>
                                        <a href="/category/21" class="more fr">更多 &gt;</a>
                                    </div>
                                    <div class="list">
                                        <a href="news_details_5.html">● &nbsp;合肥云聚职业培训学校</a>
                                        <a href="news_details_5.html">● &nbsp;吉易跨境电商学院</a>
                                        <a href="news_details_5.html">● &nbsp;青岛众智电商培训机构</a>
                                        <a href="news_details_5.html">● &nbsp;幕思城专业的电商培训机构</a>
                                        <a href="news_details_5.html">● &nbsp;合肥红杰尔电商学院网</a>
                                        <a href="news_details_5.html">● &nbsp;合肥逐鹿电商学院</a>
                                    </div>
                                </div>
                            </div>
                            <div class="mechanism_right">
                                <div class="contss">
                                    <div class="tit clr">
                                        <div class="name zjzk fl">专家智库</div>
                                        <a href="/category/23" class="more fr">更多 &gt;</a>
                                    </div>
                                    <div class="ren_list">
                                        <a href="expert_details.html" class="clr">
                                            <div class="img fl">
                                                <img src="images/sb.jpg" width="100%" height="100%">
                                            </div>
                                            <div class="text">
                                                <div class="cont">
                                                    <h2>孙恺<i>| 大朴网 CEO</i></h2>
                                                    <p>2007年创办库巴网，带领团队从0做到20亿规模。</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="expert_details.html" class="clr">
                                            <div class="img fl">
                                                <img src="/homeStatic/images/images/rt_03.jpg" width="100%" height="100%">
                                            </div>
                                            <div class="text">
                                                <div class="cont">
                                                    <h2>赵迎光<i>| 韩都衣社 CEO</i></h2>
                                                    <p>集团旗下拥有女装、男装、童装等20个子品牌</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="expert_details.html" class="clr">
                                            <div class="img fl">
                                                <img src="/homeStatic/images/images/rt_07.jpg" width="100%" height="100%">
                                            </div>
                                            <div class="text">
                                                <div class="cont">
                                                    <h2>林琛<i>| 拍拍网运营副总裁</i></h2>
                                                    <p>原银泰网CEO。后任拍拍网副总裁</p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="index_product">
                <div class="w1200">
                    <div class="index_end_tab clr">
                        <div class="name jpkc fl">精品课程</div>
                        <a href="/category/20" class="more">查看更多 &gt;</a>
                    </div>
                    <div class="product_list">
                        <div class="list">
                            <ul class="clr">
                                <li class="video_li">
                                    <div class="video">
                                        <video class="video-js vjs-default-skin" controls preload="none" width="100%" height="100%" poster="/homeStatic/images/images/spt_03.jpg" data-setup="{}">
                                            <source src="scripts/mp4.mp4" type='video/mp4' />
                                        </video>
                                    </div>
                                    <a href="curriculum_details.html">
                                        <div class="title">《十天学好电商》20161129期</div>
                                        <div class="brief">零基础，低学历一样学好电商</div>
                                        <div class="time">12月06日 13:34</div>
                                    </a>
                                </li>
                                <li class="video_li">
                                    <div class="video">
                                        <video class="video-js vjs-default-skin" controls preload="none" width="100%" height="100%" poster="/homeStatic/images/images/spt_05.jpg" data-setup="{}">
                                            <source src="scripts/mp4.mp4" type='video/mp4' />
                                        </video>
                                    </div>
                                    <a href="curriculum_details.html">
                                        <div class="title">这些年关于电商那些事</div>
                                        <div class="brief">信息社会，电商那些事你怎能不知道</div>
                                        <div class="time">12月06日 13:34</div>
                                    </a>
                                </li>
                                <li class="video_li">
                                    <div class="video">
                                        <video class="video-js vjs-default-skin" controls preload="none" width="100%" height="100%" poster="/homeStatic/images/images/spt_07.jpg" data-setup="{}">
                                            <source src="scripts/mp4.mp4" type='video/mp4' />
                                        </video>
                                    </div>
                                    <a href="curriculum_details.html">
                                        <div class="title">《快速学习电商》20161205期</div>
                                        <div class="brief">电商课程名师课堂走进合肥</div>
                                        <div class="time">12月06日 13:34</div>
                                    </a>
                                </li>
                                <li class="video_li">
                                    <div class="video">
                                        <video class="video-js vjs-default-skin" controls preload="none" width="100%" height="100%" poster="/homeStatic/images/images/spt_09.jpg" data-setup="{}">
                                            <source src="scripts/mp4.mp4" type='video/mp4' />
                                        </video>
                                    </div>
                                    <a href="curriculum_details.html">
                                        <div class="title">《十天学好电商》20161215期</div>
                                        <div class="brief">带你深度了解电商，离成功更进一步</div>
                                        <div class="time">12月06日 13:34</div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
{% endblock %}