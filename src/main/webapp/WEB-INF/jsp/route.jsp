<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>发现路线 - 景点大全 - 热门景点 - 景点图片 - TMP旅游指南</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"/>
    <link rel="shortcut icon" href="http://m.elongstatic.com/trip/pc/default/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css"
          href="http://m.elongstatic.com/pcheaderfooter/2017/06/files/headerfoot/css/styles.css?20170614">
    <link href="http://m.elongstatic.com/trip/pc/default/common/style/share.css" type="text/css" rel="stylesheet"/>
    <link href="http://m.elongstatic.com/trip/pc/default/common/style/lvyou_header.css" type="text/css"
          rel="stylesheet"/>

    <!--主站登录框样式-->
    <!--<link rel="stylesheet" href="http://www.elongstatic.com/common/css/EL_common.css" type="text/css" media="all">-->
    <script src="http://m.elongstatic.com/trip/pc/default/common/js/jquery-1.6.2.js" type="text/javascript"></script>

    <!--[if IE]>
    <script src="http://m.elongstatic.com/trip/pc/default/common/js/html5.js" type="text/javascript"></script>
    <![endif]-->
</head>
<body>


<div id="header" class="header">
    <div class="header-top  clearfix">
    </div>


    <!--导航-->
    <jsp:include page="neg.jsp"/>
    <div style="height: 350px;overflow:hidden">
        <img style="width: 100%;" src="/ui/img/bg-5.jpg">
    </div>
    <div class="clear"></div>
    <div class="blank10"></div>
</div>

<style type="text/css">
    .appWrap {
        background: url(http://www.elongstatic.com/images/other/app-com.png) no-repeat 0 -483px
    }

    .appBox .close {
        background: url(http://www.elongstatic.com/images/other/app-com.png) no-repeat -328px -182px;
        _background-image: url(http://www.elongstatic.com/images/other/app-com-ie6.png);
    }

    .appBox .close:hover {
        background-position: -358px -182px;
    }

    .appBox .intro {
        width: 480px;
        height: 210px;
        background: url(http://img.elongstatic.com/index/other/fx_btm.png) no-repeat 0 0px;
        font-size: 0;
        line-height: 0;
        overflow: hidden;
        position: absolute;
        top: 27px;
        left: 33px;
    }

    .appBox .way i {
        display: inline-block;
        width: 43px;
        height: 43px;
        margin-right: 5px;
        background: url(http://www.elongstatic.com/images/other/app-com.png) no-repeat 0 -334px;
        _background-image: url(http://www.elongstatic.com/images/other/app-com-ie6.png);
        vertical-align: middle;
    }

    .appBox .way .but {
        width: 170px;
        height: 30px;
        background: url(http://www.elongstatic.com/images/other/app-com.png) no-repeat -181px -334px;
        _background-image: url(http://www.elongstatic.com/images/other/app-com-ie6.png);
        border: 0;
        text-align: center;
        color: #fff;
        font: 16px "Microsoft Yahei", Simsun, sans-serif;
        cursor: pointer;
    }

    .appBox .way .but:hover {
        background-position: -181px -364px;
    }

    .appBox .way .success i {
        width: 20px;
        height: 16px;
        margin-right: 5px;
        background: url(http://www.elongstatic.com/images/other/app-com.png) no-repeat -181px -394px;
        _background-image: url(http://www.elongstatic.com/images/other/app-com-ie6.png);
        vertical-align: middle;
    }

</style>

<div class="clear"></div>
</div>


<div id="content">

    <div id="header">

        <div class="clear"></div>
        <!--AdForward Begin:-->

        <!--AdForward End-->
        <div class="blank10"></div>


        <link href="http://m.elongstatic.com/trip/pc/default/guide/css/jd.css" type="text/css" rel="stylesheet">

        <!--------main begin--------->
        <div id="main">
            <div class="blank10"></div>


            <div class="jd-banner" name="ad11" style="margin-bottom: 10px;"></div>

            <div class="jd-banner" name="ad12"></div>
            <div class="blank"></div>
            <c:forEach items="${routeList}" var="route">
                <!--------region begin--------->
                <div style="height: auto" class="view-address">
                    <div class="hottj-header yz-header address-header">
                        <h2>${route.region}</h2>
                    </div>
                    <div>
                        <div class="va-content">
                            <dl style="width: 100%" class="yz-view">
                                <dt><span class="more v-more"></span><b></b></dt>
                                <c:forEach items="${route.voRouteList}" var="rou">
                                    <div style="margin: 10px;">
                                        <dd style="width: auto;margin-right: 10px;"><a href="${pageContext.request.contextPath}/route/detail/${rou.rtid}">${rou.name}</a></dd><br/>
                                    </div>
                                </c:forEach>
                            </dl>
                        </div>
                    </div>
                </div>
                <!--------region end--------->
                <div class="blank10"></div>
                <div class="jd-banner" name="ad27"></div>
            </c:forEach>

            <div class="blank10"></div>
            <div class="jd-banner" name="ad76" style="display:none;"></div>
            <script type="text/javascript">
                $(function () {
                    $(".zbtour-tab ul li").hover(function () {
                        $(this).addClass("zbtour-on").siblings().removeClass("zbtour-on");
                        var index = $(".zbtour-tab ul li").index(this);
                        $(".va-content").eq(index).show().siblings().hide();
                    })
                })
            </script>
        </div>
        <!--------main end-------->
        <div id="sl"><a href="javascript:scroll(0,0)"></a></div>
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
        <div class="L_bar">

        </div>
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
        <div class="clear"></div>
    </div>
</div>
</div>
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cspan style='display:none;' id='cnzz_stat_icon_1261127114'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1261127114' type='text/javascript'%3E%3C/script%3E"));</script>
<!-- 百度统计代码 -->
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
</div>    <!-- 登录弹出框 end -->
<img src="http://strip.elong.com/statistics/record.gif/?pageType=domesticPage&bns=4"/>
</body>
</html>
<script type="text/javascript" src="http://img.trip.elong.com/static/guide/js/lvyou/login_model.js"></script>
<script type="text/javascript" src="http://img.trip.elong.com/static/guide/js/member/login_trip.js"></script>
<script type="text/javascript" src="http://lvyou.elong.com/static/common/js/Public_ClassCommon.js"></script>
<script type="text/javascript" src="http://m.elongstatic.com/trip/pc/default/common/js/ajax.js"></script>
<script type="text/javascript" src="http://m.elongstatic.com/trip/pc/default/dest/js/common.js"></script>
<script type="text/javascript" src="http://m.elongstatic.com/trip/pc/default/common/js/scrolltopcontrol.js"></script>
<script type="text/javascript" src="http://s.trip.elong.com/static/js/ad.js" id="ad_script" did=""></script>
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