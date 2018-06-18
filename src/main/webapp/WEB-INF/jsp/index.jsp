<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://trip.elong.com/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>TMP旅游网</title>
    <link rel="icon" href="http://www.elongstatic.com/common/pic/favicon.ico?t=201508250600" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="../../ui/mymodel/styles.css">
    <link rel="stylesheet" type="text/css" href="../../ui/mymodel/main.min.css">
    <style type="text/css">

    </style>
</head>
<body>

<!-- ===================== trip header start ===================== -->

<div id="header" class="header">
    <div class="header-top  clearfix">
        <div class="header-top-cont wrap1200">
            <div class="branch_menu fl mr10">
                <span><a target="_blank" class="_cc" data-cc="elonghome" href="${pageContext.request.contextPath}/">首页</a></span>
                <b></b>
                <span><a target="_blank" class="_cc" data-cc="elonghotel" href="${pageContext.request.contextPath}/attraction/ui">发现景点</a></span>
                <b></b>
                <span><a target="_blank" class="_cc" data-cc="elongihotel"
                         href="${pageContext.request.contextPath}/route/ui">发现路线</a></span>
                <b></b>
                <span><a target="_blank" class="_cc" data-cc="elongflight"
                         href="${pageContext.request.contextPath}/hotel/ui">发现酒店</a></span>
                <b></b>
                <span><a target="_blank" class="_cc" data-cc="elongtrain" href="${pageContext.request.contextPath}/special/ui">发现特产</a></span>
                <b></b>
                <span><a target="_blank" class="_cc" data-cc="elongtrain"
                         href="${pageContext.request.contextPath}/shoppingCart/detail">我的购物车</a></span>
                <b></b>
                <span><a target="_blank" class="_cc" data-cc="elongtrain" href="${pageContext.request.contextPath}/order/ui">我的订单</a></span>
            </div>

            <span class="online_phone fr">
                7×24 客服电话：<span>4009-333-333</span>
            </span>
        </div>

    </div>

    <div class="trip-banner-promotion" id="pmt_2">
        <a class="ad-close" href="javascript:void(0)">×</a>
    </div>

    <jsp:include page="neg.jsp"/>

    <div class="account" method="dvAccount">
        <c:if test="${consumer == null}">
            <div class="log" id="user_display_login">
                <div  class="unlogin">
                    <a href="${pageContext.request.contextPath}/login/ui" class="_cc" data-cc="register" rel="nofollow">登录</a> | <a href="${pageContext.request.contextPath}/login/registry_ui" class="_cc" data-cc="register" rel="nofollow">注册</a>
                </div>

            </div>
        </c:if>
        <c:if test="${consumer != null}">
            <!-- 已登录显示退出按钮 -->
            <div style="width: auto" class="new_btnLogin "><a href="${pageContext.request.contextPath}/login/logout">
                TMP欢迎您，${consumer.name}&nbsp;&nbsp;&nbsp;&nbsp;

                退出</a></div>
        </c:if>

    </div>
    <!--已登录弹出 end-->

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
<!-- ===================== trip header end ===================== -->

<div class="page-content wrap1200">
    <div class="clearfix trip-index-header">
        <!-- 轮播图 -->
        <div style="width:100%" class="fl swiper-container swiper-container-horizontal" id="trip_index_swiper">
            <div class="swiper-wrapper" style="transition-duration: 300ms; transform: translate3d(-800px, 0px, 0px);">
                <div class="swiper-slide swiper-slide-prev" style="width: 800px;">
                    <%--<a target="_blank" class="_cc" data-cc="focuspic"--%>
                       <%--href="http://lvyou.elong.com/5193836/tour/a9e93qh3.html">--%>
                        <img src="/ui/img/1.jpg">
                    <%--</a>--%>
                </div>
                <div class="swiper-slide swiper-slide-active" style="width: 800px;">
                    <%--<a target="_blank" class="_cc" data-cc="focuspic" href="http://trip.elong.com/news/n0218c33.html">--%>
                        <img src="/ui/img/2.jpg">
                    <%--</a>--%>
                </div>
                <div class="swiper-slide swiper-slide-next" style="width: 800px;">
                    <%--<a target="_blank" class="_cc" data-cc="focuspic"--%>
                       <%--href="http://lvyou.elong.com/5288957/tour/a9ef3rf1.html">--%>
                        <img src="/ui/img/3.jpg">
                    <%--</a>--%>
                </div>
            </div>
            <div class="swiper-pagination swiper-pagination-clickable"><span
                    class="swiper-pagination-bullet"></span><span
                    class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span
                    class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span
                    class="swiper-pagination-bullet"></span></div>
        </div>

    </div>


    <div class="trip-banner-promotion" id="pmt_3">
        <a class="ad-close" href="javascript:void(0)">×</a>
    </div>


    <div class="trip-banner-promotion" id="pmt_4">
        <a class="ad-close" href="javascript:void(0)">×</a>
    </div>

    <section class="" id="travel_topic">
        <div class="section-title">
            <span class="section-title-text">发现景点</span>
            <a target="_blank" data-cc="eventmore" href="${pageContext.request.contextPath}/attraction/ui" class="fr  more-link _cc">更多&gt;&gt;</a>
        </div>
        <div class="section-cont">
            <ul class="clearfix">
                <c:forEach items="${attractionList}" var="attraction">
                    <li class="fl">
                        <a target="_blank" class="_cc" data-cc="event" href="http://trip.elong.com/event/nfhotel315/">
                            <div class="img-cont">
                                <a target="_blank" href="${pageContext.request.contextPath}/attraction/detail/${attraction.aid}"><img src="${pageContext.request.contextPath}/attraction/img/${attraction.aid}"></a>
                            </div>
                            <div class="topic-info">
                                <p class="topic-title">${attraction.name}</p>
                                <p class="topic-desc max-line-2">
                                    ${attraction.info}
                                </p>
                            </div>
                        </a>
                    </li>
                </c:forEach>

            </ul>
        </div>
    </section>

    <section class="" id="travel_topic">
        <div class="section-title">
            <span class="section-title-text">酒店概览</span>
            <a target="_blank" data-cc="eventmore" href="${pageContext.request.contextPath}/hotel/ui" class="fr  more-link _cc">更多&gt;&gt;</a>
        </div>
        <div class="section-cont">
            <ul class="clearfix">
                <c:forEach items="${hotelList}" var="hotel">
                    <li class="fl">
                        <a target="_blank" class="_cc" data-cc="event" href="http://trip.elong.com/event/nfhotel315/">
                            <div class="img-cont">
                                <a target="_blank" href="${pageContext.request.contextPath}/hotel/detail/${hotel.hid}"><img src="${pageContext.request.contextPath}/hotel/img/${hotel.hid}"></a>
                            </div>
                            <div class="topic-info">
                                <p class="topic-title">${hotel.name}</p>
                                <p class="topic-desc max-line-2">
                                    ${hotel.info}
                                </p>
                            </div>
                        </a>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </section>


</div>

<!-- 旅游指南相关链接 -->
<div class="trip-about ">
    <div class="wrap1200">
        <p class="about-title">TMP旅游指南</p>
        <div class="about-block">
            <span class="">友情链接：</span><!-- 小标题 -->
            <a target="_blank" class="_cc" data-cc="seoclick" href="http://haitao.smzdm.com/">海淘值得买</a>
            <a target="_blank" class="_cc" data-cc="seoclick" href="http://www.toptour.cn/">第一旅游网</a>
            <a target="_blank" class="_cc" data-cc="seoclick" href="http://www.12306.cn/mormhweb//">12306官网</a>
        </div>
    </div>
</div>

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
            <iframe id="frame_content" scrolling="no" name="passportIframe" width="402" frameborder="0"
                    src="./旅游指南_旅游景点_旅游攻略_艺龙旅游网_files/saved_resource.html" style="!important"></iframe>
        </div>
    </div>
    <div style="display: block; z-index: 1000; top: 0px; left: 0px; position: fixed; height: 100%; width: 100%; opacity: 0.5; background-color: rgb(204, 204, 204);"></div>
</div>
<!-- 登录弹出框 end -->
<script src="../../ui/mymodel/hm.js"></script>
<script type="text/javascript" src="../../ui/mymodel/main.js"></script>
<div id="login_info" style="display:none;"></div>
</body>
</html>