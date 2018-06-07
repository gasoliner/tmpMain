<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>${route.name} - TMP旅游指南</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"/>
    <link rel="shortcut icon" href="http://m.elongstatic.com/trip/pc/default/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css"
          href="http://m.elongstatic.com/pcheaderfooter/2017/06/files/headerfoot/css/styles.css?20170614">
    <link href="http://m.elongstatic.com/trip/pc/default/common/style/share.css" type="text/css" rel="stylesheet"/>
    <script src="http://m.elongstatic.com/trip/pc/default/common/js/jquery-1.6.2.js" type="text/javascript"></script>
    <link href="http://m.elongstatic.com/trip/pc/default/dest/style/destnew.css" type="text/css" rel="stylesheet"/>
    <link href="http://m.elongstatic.com/trip/pc/default/common/style/lvyou_header.css" type="text/css"
          rel="stylesheet"/>

    <!--主站登录框样式-->
    <!--<link rel="stylesheet" href="http://www.elongstatic.com/common/css/EL_common.css" type="text/css" media="all">-->
    <!--[if IE]>
    <script src="http://m.elongstatic.com/trip/pc/default/common/js/html5.js" type="text/javascript"></script>
    <![endif]-->
</head>
<body>

<div id="content">

    <div id="header">

        <div class="clear"></div>
        <div class="blank10"></div>

        <!--没头图-->
        <header class="dnew-hno">
            <h1> ${route.name}</h1>
            <div class="hno-r">
                <div class="dnew-gz dnewno-gz">
                    <div class="_followMenu" value="30317"></div>
                </div>
            </div>
            <div class="clear"></div>
            <div class="dnew-bq dnew-no">
                <a href="#" title="坐标${route.voRid}">坐标${route.voRid}</a>
            </div>
            <div class="clear"></div>
        </header>
        <!--没头图 end-->
        <nav class="dnew-nav">
            <ul>
                <li class="li-line"></li>
            </ul>
        </nav>

        <!--目的地二级导航 end-->

        <section id="dnew-main">
            <div name="ad39"></div>
            <div class="blank10"></div>
            <article class="dnew-con dnew-con1">

                <aside class="dnew-left">
                    <section class="dleft-box">
                        <%--<div id="Topics">--%>
                            <%--<div id="Topics_big">--%>
                                <%--<img src="${pageContext.request.contextPath}/attraction/img/${attraction.aid}"--%>
                                     <%--alt="${attraction.name}" title="${attraction.name}"/>--%>
                            <%--</div>--%>
                            <%--<div class="topic-bg"></div>--%>
                        <%--</div>--%>
                        <script type="text/javascript"
                                src="http://m.elongstatic.com/trip/pc/default/dest/js/sns_home.js"></script>

                        <!--简介-->
                        <section class="dnew-jj">
                            <header class="dnew-title">
                                <div class="dtitle">
                                    <em class="jj-icon"></em>
                                    <h2><a href="#">${route.name}-线路概述</a>
                                    </h2>
                                </div>
                            </header>
                            <div class="lygs-link">
                                <%--<a href="http://trip.elong.com/yadingziranbaohuqu/jianjie/" target="_blank">简介</a>  |  <a href="http://trip.elong.com/yadingziranbaohuqu/jiaotong/" target="_blank">交通</a>  |  					</div>--%>
                                <div class="dnew-sum">
                                    简介：${route.var}<br/>
                                    大体路线：${route.voAids}
                                </div>
                            </div>
                        </section>
                        <!--简介 end-->

                        <div name="ad41"></div>
                        <div class="clear"></div>
                        <section class="dnew-jj">
                            <header class="dnew-title">
                                <div class="dtitle">
                                    <em class="jj-icon"></em>
                                    <h2><a href="#">${route.name}-路线详情</a>
                                    </h2>
                                </div>
                            </header>
                            <div class="lygs-link">
                                <div class="dnew-sum">
                                    开始————>
                                    <c:forEach items="${route.attractionList}" var="att">
                                        <a href="${pageContext.request.contextPath}/attraction/detail/${att.aid}" target="_blank">${att.name}</a> ————>
                                    </c:forEach>
                                    结束
                                </div>
                            </div>
                        </section>
                        <div name="ad41"></div>
                        <div class="clear"></div>

                            <section class="dnew-jj">
                                <header class="dnew-title">
                                    <div class="dtitle">
                                        <em class="jj-icon"></em>
                                        <h2><a href="#">路线门票</a>
                                        </h2>
                                    </div>
                                </header>
                                <div class="lygs-link">
                                    <div class="dnew-sum">
                                        <dl>
                                            <dt>
                                            </dt>
                                            <dd>
                                                <h3>${route.name}路线门票</h3>

                                                <div class="price-yd">
			<span class="sq-price">
                                                        <span class="ph">&yen</span>${route.price}<span class="pb"></span>
                                                    </span>
                                                    <div class="clear"></div>
                                                </div>
                                                <div class="tfour-c"><a href="${pageContext.request.contextPath}/shoppingCart/createNewItem?kind=路线&price=${route.price}&name=${route.name}路线打包门票"
                                                                        target="_blank" title="查看" class="tfour-yd"></a>
                                                </div>
                                            </dd>
                                        </dl>
                                    </div>
                                </div>
                            </section>

                        <section class="dnew-zstj">

                        </section>


                    </section>
                </aside>

                <aside class="dnew-right">

                    <style type="text/css">
                        .google-ad img {
                            border: 1px solid #D5EAFF;
                            display: block;
                        }
                    </style>
                    <div class="blank"></div>
                    <div class="blank"></div>

                    <!--旅游资讯 旅游问答-->
                    <div class="blank"></div>
                    <script>
                        $(function () {
                            $(".zxwd-tab ul li").hover(function () {
                                $(this).addClass("on").siblings().removeClass("on");
                                var index = $(".zxwd-tab ul li").index(this);
                                $(".zxwd-li").eq(index).show().siblings().hide();
                            })
                        })
                    </script>
                    <!--div class="zxwd-li">
                            <a href="http://trip.elong.com/so/ask/%E4%BA%9A%E4%B8%81/" target="_blank" class="zxwd-more">更多>></a>
                            <ul>
                                                            <li><a href="" target="_blank" title=""></a></li>
                                                            <li><a href="" target="_blank" title=""></a></li>
                                                        </ul>
                        </div-->
                    <!--旅游资讯 旅游问答 end-->
                    <!--周边旅游城市-->
                    <div class="blank"></div>



                </aside>
                <div class="clear"></div>
                <div class="dnew-line dnew-line1"></div>
            </article>
        </section>

        <script type="text/javascript" src="http://m.elongstatic.com/trip/pc/plugin/jquery.qrcode.min.js"></script>
        <script type="text/javascript">
            var url = location.href.replace('trip.elong.com/', 'm.elong.com/trip/');
            url += '?&pccode=1';

            if (location.pathname !== '/') {
                $('#page-h5-code').qrcode({
                    width: 55,
                    height: 55,
                    text: url,
                });

            }
            $('.app-close').click(function () {
                $('.app-download').remove();
            });
        </script>


        <div class="message-box" id="big-map-box"
             style="z-index: 1; width: 616px; height: 396px; top: 50%; left: 50%; margin-left: -308px; margin-top: -198px;position: fixed;display: none;">
            <%--<div class="message-con">--%>
            <%--<div class="message-main">--%>
            <%--<div class="message-title">--%>
            <%--<div class="message-close" id="big-map-close">--%>
            <%--<a href="javascript:void(0);" title="关闭"></a>--%>
            <%--</div>--%>
            <%--<h1>亚丁周边地图</h1>--%>
            <%--</div>--%>
            <%--<div class="d-map" id="google_map_canvas_big" style="width:596px;height:396px">--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
        </div>

        <script type="text/javascript" src="http://m.elongstatic.com/trip/pc/default/dest/js/jcarousellite.js"></script>
        <script type="text/javascript">
            $(".jd-pic").jCarouselLite({
                btnNext: ".next",
                btnPrev: ".prev",
                speed: 1000,
                visible: 3,
                scroll: 1
            });
            if ($('.jd-pic ul li').length <= 9) {
                $('.prev').hide();
                $('.next').hide();
            }
            if ($('.jd-pic ul li').length <= 3) {
                $('.jd-pic ul').css({'left': '-386px'});
            }
            $(".zxwd-tab ul li").hover(function () {
                $(this).addClass("on").siblings().removeClass("on");
                var index = $(".zxwd-tab ul li").index(this);
                $(".zxwd-li").eq(index).show().siblings().hide();
            })
            $(function () {
                if ($('.dnew-right :last').attr('class') == 'blank') {
                    $('.dnew-right :last').remove();
                }
                if ($('.dnew-left :last').attr('class') == 'blank') {
                    $('.dnew-left :last').remove();
                }

                $('.dp-textarea').focus(function () {
                    if ($(this).val() == dpstr) {
                        $(this).val('');
                    }

                });
                $('.dp-textarea').blur(function () {
                    if ($(this).val().length < 1) {
                        $(this).val(dpstr);
                    }

                });
            });


        </script>
        <script type="text/javascript" src="http://m.elongstatic.com/trip/pc/default/common/js/common_map.js"></script>
        <script type="text/javascript">
            // 标注点数组


            // 百度地图
            function B_AddMap() {
                // 地图初始化
                B_initMap('google_map_canvas', MAP_BASEDATA[0].pointX, MAP_BASEDATA[0].pointY, 10);

                // 根据数组创建标注：多地点标准数组
                B_windowType = 'AJAX';			//设置点击打开窗口类型：URL
                B_addMarker(MAP_BASEDATA);
                B_createDirections(MAP_BASEDATA);
            }

            // 谷歌地图
            function G_AddMap() {
                // 地图初始化
                G_initMap('google_map_canvas', MAP_BASEDATA[0].pointY, MAP_BASEDATA[0].pointX, 10);

                // 根据数组创建标注：多地点标准数组
                G_windowType = 'AJAX';			//设置点击打开窗口类型：URL
                G_addMarker(MAP_BASEDATA);

                // 根据数组调整视野
                G_createDirections(MAP_BASEDATA, true);
            }

            // 地图初始化
            function G_initMap(M, X, Y, Z) {

                var _latlng = new google.maps.LatLng(X, Y);
                var _myOptions = {
                    zoom: Z,
                    center: _latlng,
                    disableDefaultUI: true,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };
                G_map = new google.maps.Map(document.getElementById(M), _myOptions);
                G_debug();
            }

            // 地图：初始化地图：经度,纬度,缩放级别
            function B_initMap(M, X, Y, Z) {
                B_map = new BMap.Map(M);

                var _point = new BMap.Point(X, Y);
                B_map.centerAndZoom(_point, Z);

                // B_map.addControl(new BMap.ScaleControl());			// 添加比例尺控件
                B_map.enableScrollWheelZoom();						// 启用滚轮放大缩小


                B_debug();
            }
        </script>
        <script type="text/javascript">
            $(function () {

                var MAP_BASEDATA = [];


                $('.map-fc,.map-c').click(function (e) {
                    e.preventDefault();
                    $('#big-map-box').show();
                    bigMapInit();
                    return false;
                });

                $('#big-map-close').click(function () {
                    $('#big-map-box').hide();
                });


                function bigMapInit() {

                    B_AddMap_big();


                    function B_AddMap_big() {
                        // 地图初始化
                        B_initMap_big('google_map_canvas_big', MAP_BASEDATA[0].pointX, MAP_BASEDATA[0].pointY, 13);

                        // 根据数组创建标注：多地点标准数组
                        //B_windowType = 'URL';         //设置点击打开窗口类型：URL
                        B_addMarker(MAP_BASEDATA);
                    }

                    // 谷歌地图
                    function G_AddMap_big() {
                        // 地图初始化
                        G_initMap_big('google_map_canvas_big', MAP_BASEDATA[0].pointY, MAP_BASEDATA[0].pointX, 12);

                        // 根据数组创建标注：多地点标准数组
                        //G_windowType = 'URL';         //设置点击打开窗口类型：URL
                        G_addMarker(MAP_BASEDATA);

                        // 根据数组调整视野
                        G_createDirections(MAP_BASEDATA, true);
                    }

                    // 地图初始化
                    function G_initMap_big(M, X, Y, Z) {

                        var _latlng = new google.maps.LatLng(X, Y);
                        var _myOptions = {
                            zoom: Z,
                            center: _latlng,
                            disableDefaultUI: true,
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        };
                        G_map = new google.maps.Map(document.getElementById(M), _myOptions);
                        G_debug();
                    }

                    // 地图：初始化地图：经度,纬度,缩放级别
                    function B_initMap_big(M, X, Y, Z) {
                        B_map = new BMap.Map(M);

                        var _point = new BMap.Point(X, Y);
                        B_map.centerAndZoom(_point, Z);

                        B_map.addControl(new BMap.ScaleControl());          // 添加比例尺控件
                        B_map.enableScrollWheelZoom();                      // 启用滚轮放大缩小


                        B_debug();
                    }

                }
            });

        </script>
        <script type="text/javascript"
                src="http://m.elongstatic.com/trip/pc/default/common/js/hotel_href_qq.js"></script>
        <script type="text/javascript"
                src="http://m.elongstatic.com/trip/pc/default/dest/js/commen_destnew.js"></script>
        <div class="blank"></div>
        <style>
            .wexinrightad {
                width: 140px;
                height: 281px;
                position: fixed;
                z-index: 1001;
                left: 50%;
                margin-left: 482px;
                bottom: 211px;
            }

            .wexinrightad img, a img {
                border: none;
            }
        </style>
        <div class="wexinrightad">
            <div class="adimg"><img src="http://m.elongstatic.com/trip/pc/default/static/images/weixin_rightad2.png"
                                    alt="微信"/></div>
        </div>
        <style>
            .L_bar {
                text-decoration: none;
                margin: auto;
                width: 960px;
            }

            img, a img {
                border: none;
            }

            #weixinBar {
                width: 236px;
                height: 370px;
                border: #D5EAFF solid 1px;
                background: #FAFAFA;
                font-size: 14px;
                position: fixed;
                z-index: 1001;
                right: 69px;
                bottom: 10px;
            }

            #weixinBar ul {
                margin: 25px 10px 20px 20px;
                padding: 0;
            }

            #weixinBar li {
                list-style: none;
                margin-bottom: 35px;
            }

            .weixin01 {
                height: 80px;
                margin-bottom: 20px;
            }

            .weixin01 img {
                float: left;
                width: 80px;
                height: 80px;
                margin-right: 10px;
            }

            .weixin01 span {
                font-weight: bold;
            }

            .weixin01 p {
                font-size: 12px;
                line-height: 18px;
                margin-top: 20px;
            }

            .erweima { /*float:left; width:57px; height:57px; margin-top:313px; display:block;*/
                position: fixed;
                right: 10px;
                bottom: 10px;
                width: 59px;
                height: 59px;
                overflow: hidden;
            }

            .erweima a {
                background: url(http://m.elongstatic.com/trip/pc/default/static/images/erweima.jpg) no-repeat;
            }

            .erweima a:hover {
                background: url(http://m.elongstatic.com/trip/pc/default/static/images/erweima1.jpg) no-repeat;
            }
        </style>
        <%--<div class="L_bar">--%>

        <%--<div class="erweima"><a href="#"><img--%>
        <%--src="http://m.elongstatic.com/trip/pc/default/static/images/erweima.jpg" alt="微信" id="ewm"/>--%>
        <%--</a></div>--%>
        <%--</div>--%>
        <script>

            $(document).ready(function () {
                var timer;
                $("div.erweima").mouseleave(function () {
                    showPPOut();


                });
                $("div.erweima").mouseenter(function () {
                    clearPPTimer();
                    $("#weixinBar").show();
                    $("#ewm").attr('src', 'http://m.elongstatic.com/trip/pc/default/static/images/erweima1.jpg');

                });
                $("div#weixinBar").mouseleave(function () {
                    showPPOut();

                });
                $("div#weixinBar").mouseenter(function () {
                    clearPPTimer();
                    $("#ewm").attr('src', 'http://m.elongstatic.com/trip/pc/default/static/images/erweima1.jpg');

                });

            });

            function clearPPTimer() {
                try {
                    clearTimeout(timer);
                } catch (s) {
                }
            }
            function hideweixin() {
                $("#ewm").attr('src', 'http://m.elongstatic.com/trip/pc/default/static/images/erweima.jpg');
                $("#weixinBar").hide()
            }
            function showPPOut() {
                timer = setTimeout("hideweixin()", 500);
            }

        </script>
        <div class="blank"></div>


        <style type="text/css">
            .footer_info dl .footer_info_app {
                background: url(http://m.elongstatic.com/trip/pc/images/trip2017/appDownload100.png);
                width: 98px;
            }

            .footer_info dl {
                width: 18%;
                padding-left: 6%;
            }

            .other_load {
                display: none;
            }

            .ready_load {
                width: 115px;
            }
        </style>
    </div>
</div>
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cspan style='display:none;' id='cnzz_stat_icon_1261127114'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1261127114' type='text/javascript'%3E%3C/script%3E"));</script>
<!-- 百度统计代码 -->
<!-- 百度统计代码 -->
<script>var _hmt = _hmt || [];
(function () {
    var hm = document.createElement("script");
    hm.src = "//hm.baidu.com/hm.js?4c871a8b5628f8e087250c049f2db6e2";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();</script><!--<div id="m_contentend" style="z-index: 200;"></div>-->
<!-- 登录弹出框 -->
<div id="_login_" style="z-index: 101;display:none;">
    <div class="com_dialog com_widget com_widget-content com_corner-all com_draggable"
         style="width: 402px; overflow: hidden; z-index: 1001; display: block; position: fixed; left: 50%; top: 50%; margin-top: -227px; margin-left: -201px;padding:0;">
        <div></div>
        <div class="com_dialog-content com_widget-content">
            <a class="com_dialog-titlebar-close1 com_corner-all" href="javascript:void(0);" method="close">
                <span class="icon_close_sale"></span>
            </a>
            <style>
                .com_widget-content.com_dialog-content {
                    background: transparent;
                    border: none;
                    padding: 0
                }

                .com_dialog {
                    border: none;
                }

                .com_dialog .com_dialog-titlebar-close {
                    top: 12px;
                    right: 27px;
                }

                .com_dialog .icon_close_sale {
                    position: absolute;
                    width: 13px;
                    height: 13px;
                    right: 10px;
                    top: 10px;
                    background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA0AAAANCAYAAABy6+R8AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo0RERDNjU3OTlBMzIxMUU1OEVEQTg4RTg1QjM5MTdFQyIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo0RERDNjU3QTlBMzIxMUU1OEVEQTg4RTg1QjM5MTdFQyI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjREREM2NTc3OUEzMjExRTU4RURBODhFODVCMzkxN0VDIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjREREM2NTc4OUEzMjExRTU4RURBODhFODVCMzkxN0VDIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+JCLXiAAAAENJREFUeNpiCAoK+g8EDMRikHo4g1gNIBpDgJAGFE34NKKLE1SAzSC8TsFlM1F+oI1NJPuJ5NAjOZ5IThHkpD2AAAMAz+PfTS1GwcoAAAAASUVORK5CYII=)
                }

                .com_dialog-content iframe {
                    _width: 402px;
                    height: 438px;
                    overflow: hidden;
                }
            </style>
            <iframe id="frame_content" scrolling="no" name="passportIframe" width="402" frameborder="0" src=""
                    style="!important"></iframe>
        </div>
    </div>
    <div style="display: block; z-index: 1000; top: 0px; left: 0px; position: fixed; height: 100%; width: 100%; opacity: 0.5; background-color: rgb(204, 204, 204);"></div>
</div>        <!-- 登录弹出框 end -->
<img src="http://strip.elong.com/statistics/record.gif/?pageType=destIndexPage&bns=4"/>
</body>
</html>
<script type="text/javascript" src="http://img.trip.elong.com/static/guide/js/lvyou/login_model.js"></script>
<script type="text/javascript" src="http://img.trip.elong.com/static/guide/js/member/login_trip.js"></script>
<script type="text/javascript" src="http://lvyou.elong.com/static/common/js/Public_ClassCommon.js"></script>
<script type="text/javascript" src="http://m.elongstatic.com/trip/pc/default/common/js/ajax.js"></script>
<script type="text/javascript" src="http://m.elongstatic.com/trip/pc/default/dest/js/common.js"></script>
<script type="text/javascript" src="http://m.elongstatic.com/trip/pc/default/common/js/scrolltopcontrol.js"></script>
<script type="text/javascript" src="http://s.trip.elong.com/static/js/ad.js" id="ad_script" did="30317"></script>
<script type="text/javascript" src="http://www.elongstatic.com/common/js/systemall.js?20180519"></script>
<script type="text/javascript" language="javascript">
    $(function () {
        $("body").scrollTo(100)
    });

    (function ($) {
        $.extend($.fn, {
            scrollTo: function (time) {
                time = time || 1000;
                $('a[href*=#]', this).click(function () {
                    if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                        var $target = $(this.hash);
                        $target = $target.length && $target || $('[name=' + this.hash.slice(1) + ']');
                        if ($target.length) {
                            $('html,body').animate({
                                scrollTop: $target.offset().top - 35
                            }, time);
                            return false;
                        }
                    }
                });
            }
        });
    })(jQuery);
</script>
