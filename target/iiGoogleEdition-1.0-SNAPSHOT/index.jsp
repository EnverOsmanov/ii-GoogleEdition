<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html itemscope="" itemtype="http://schema.org/WebPage" lang="ru">
<head>
    <meta content="Поиск по иисидологии." name="description">
    <meta content="noodp" name="robots">
    <meta content="/images/favicon.ico" itemprop="image">
    <title>IIoogle</title>

    <script src="<c:url value="/resources/core/jquery-1.8.2.min.js" />"></script>
    <script src="<c:url value="/resources/core/jquery.autocomplete.min.js" />"></script>
    <link href="<c:url value="/resources/core/main.css" />" rel="stylesheet">

    <style>
        #gb.gb_Xc .gb_Fb {
            min-width: 0;
            position: static;
            width: 0
        }

        .gb_Xc .gb_Xb {
            background: transparent;
            border-bottom-color: transparent
        }

        .gb_Xc #gbq {
            height: 0;
            position: absolute
        }

        .gbqfba:focus {
            border: 1px solid #4d90fe;
            outline: none;
            -moz-box-shadow: inset 0 0 0 1px #fff;
            box-shadow: inset 0 0 0 1px #fff
        }

        .gbqfba:hover {
            border-color: #c6c6c6;
            color: #222 !important;
            -moz-box-shadow: 0 1px 0 rgba(0, 0, 0, .15);
            box-shadow: 0 1px 0 rgba(0, 0, 0, .15);
            background: #f8f8f8;
            background: -moz-linear-gradient(top, #f8f8f8, #f1f1f1);
            background: linear-gradient(top, #f8f8f8, #f1f1f1);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#f8f8f8, endColorstr=#f1f1f1, GradientType=1)
        }

        .gbqfba:hover:focus {
            -moz-box-shadow: 0 1px 0 rgba(0, 0, 0, .15), inset 0 0 0 1px #fff;
            box-shadow: 0 1px 0 rgba(0, 0, 0, .15), inset 0 0 0 1px #fff
        }

        .gbqfba {
            border: 1px solid rgba(0, 0, 0, 0.1);
            color: #444 !important;
            font-size: 11px;
            background: #f5f5f5;
            background: -moz-linear-gradient(top, #f5f5f5, #f1f1f1);
            background: linear-gradient(top, #f5f5f5, #f1f1f1);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#f5f5f5, endColorstr=#f1f1f1, GradientType=1)
        }

        .gbqff {
            border: none;
            display: inline-block;
            margin: 0;
            padding: 0;
            vertical-align: top;
            width: 100%
        }

        .gbqfqw {
            background: #fff;
            background-clip: padding-box;
            border: 1px solid rgba(0, 0, 0, .15);
            border-right-width: 0;
            height: 30px;
            -moz-box-sizing: border-box;
            box-sizing: border-box
        }

        .gbqfqw.gbqfqw:hover {
            border-color: #a9a9a9;
            border-color: rgba(0, 0, 0, .3)
        }

        .gbqfwa {
            display: inline-block;
            width: 100%
        }

        .gbqfwb {
            width: 40%
        }

        .gbqfwc {
            width: 60%
        }

        .gbqfwb .gbqfqw {
            margin-left: 10px
        }

        .gbqfqw.gbqfqw:active, .gbqfqw.gbqfqwf.gbqfqwf {
            border-color: #4285f4
        }

        #searchbar, #gbqfqb, #gbqfqc {
            background: transparent;
            border: none;
            height: 20px;
            margin-top: 4px;
            padding: 0;
            vertical-align: top;
            width: 100%
        }

        #searchbar:focus, #gbqfqb:focus, #gbqfqc:focus {
            outline: none
        }

        .gbqfif, .gbqfsf {
            color: #222;
            font: 16px arial, sans-serif
        }

        #gbqfbwa {
            display: none;
            text-align: center;
            height: 0
        }

        #gbqfbwa .gbqfba {
            margin: 16px 8px
        }

        #gbqfsa, #gbqfsb {
            font: bold 11px/27px Arial, sans-serif !important;
            vertical-align: top
        }

        .gb_n .gbqfqw.gbqfqw, .gb_o .gbqfqw.gbqfqw {
            border-color: rgba(255, 255, 255, 1);
            -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
            box-shadow: 0 1px 2px rgba(0, 0, 0, .2)
        }

        .gb_n #gbqfb, .gb_o #gbqfb {
            -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
            box-shadow: 0 1px 2px rgba(0, 0, 0, .2)
        }

        .gb_n #gbqfb:hover, .gb_o #gbqfb:hover {
            -moz-box-shadow: 0 1px 0 rgba(0, 0, 0, .15), 0 1px 2px rgba(0, 0, 0, .2);
            box-shadow: 0 1px 0 rgba(0, 0, 0, .15), 0 1px 2px rgba(0, 0, 0, .2)
        }

        .gb_n #gbqfb:active, .gb_o #gbqfb:active {
            -moz-box-shadow: inset 0 2px 0 rgba(0, 0, 0, .15), 0 1px 2px rgba(0, 0, 0, .2);
            box-shadow: inset 0 2px 0 rgba(0, 0, 0, .15), 0 1px 2px rgba(0, 0, 0, .2)
        }

        @media (min-resolution: 1.25dppx),(-o-min-device-pixel-ratio: 5/4),(-webkit-min-device-pixel-ratio: 1.25),(min-device-pixel-ratio: 1.25) {
        }

        #gbq .gbgt-hvr, #gbq .gbgt:focus {
            background: transparent none;
        }

        .gbqfh#gbq1 {
            display: none
        }

        #gbq {
            line-height: normal;
            position: relative;
            top: 0;
            white-space: nowrap
        }

        #gbq {
            left: 0;
            width: 100%
        }

        #gbq2 {
            top: 0;
            z-index: 986
        }

        .gbqfh#gbq2 {
            z-index: 985
        }

        .gbqfh#gbq2 {
            margin: 0;
            margin-left: 0 !important;
            padding-top: 0;
            position: relative;
            top: 310px
        }

        .gbqfh #gbqf {
            margin: auto;
            min-width: 534px;
            padding: 0 !important
        }

        .gbqfh #gbqfbw {
            display: none
        }

        .gbqfh #gbqfbwa {
            display: block
        }

        .gbqfh #gbqf {
            max-width: 572px;
            min-width: 572px
        }

        .gbqfh .gbqfqw {
            border-right-width: 1px
        }

        .gbqfh .gsfe_a, .gbqfh .gsfe_b {
            border-width: 1px
        }
    </style>

</head>
<body class="hp vasq"
      onload="try{if(!google.j.b){document.f&amp;&amp;document.f.q.focus();document.gbqf&amp;&amp;document.gbqf.q.focus();}}catch(e){}if(document.images)new Image().src='/images/nav_logo195.png'"
      alink="#dd4b39" bgcolor="#fff" id="gsr" link="#12c" text="#222" vlink="#61c">
<div class="ctr-p" id="viewport">
    <div id="pocs" style="display:none;left:0;white-space:nowrap;position:absolute">
        <div id="pocs0"><span>Живой поиск <span>Google</span> недоступен. Для поиска нажмите "Ввод".</span>&nbsp;<a
                href="/support/websearch/bin/answer.py?answer=186645&amp;form=bb&amp;hl=ru">Подробнее...</a></div>
        <div id="pocs1">Живой поиск <span>Google</span> отключен из-за низкой скорости интернет-подключения. Чтобы
            выполнить поиск, нажмите "Ввод".
        </div>
        <div id="pocs2">Для поиска нажмите "Ввод"</div>
    </div>

    <div data-jiis="cc" id="cst">
        <style>.fade #center_col, .fade #rhs, .fade #leftnav, .fade #brs, .fade #footcnt {
            filter: alpha(opacity=33.3);
            opacity: 0.333
        }

        .fade-hidden #center_col, .fade-hidden #rhs, .fade-hidden #leftnav {
            visibility: hidden
        }

        #pnprev #knavm {
            bottom: 1px;
            top: auto
        }

        #pnnext #knavm {
            bottom: 1px;
            left: 40px;
            top: auto
        }

        a.noline {
            outline: 0
        }
        </style>
    </div>

    <a href="/setprefs?suggon=2&amp;prev=https://www.google.ru/&amp;sig=0_umnisQ-ZGRi0LYqnKH-QESTyjqE%3D"
       style="left:-1000em;position:absolute">Пользователи программ чтения с экрана: нажмите здесь, чтобы отключить
        Живой поиск Google.
    </a> <textarea id="csi" style="display:none"></textarea>

    <div data-jibp="" id="mngb">
        <div class="gb_Qc gb_Xc" id="gb">
            <div class="gb_Xb gb_Uc">

                <div class="gb_Oa gb_i gbqfh gb_Sa" id="gbq1" style="max-width:127px;min-width:127px">
                    <div class="gb_Pa">
                        <a class="gb_Wa gb_Ra"
                           href="/webhp?tab=ww&amp;ei=QvThVK-WMuOpyQOxooLQCg&amp;ved=0CAkQ1S4"
                           title="Главная страница Ioogle"><span class="gb_Ta"></span></a>
                    </div>
                </div>
                <div class="gb_i gb_Fb">
                    <div id="gbq">
                        <div class="gbt gbqfh" id="gbq2">
                            <div id="gbqfw">
                                <form class="searchURL" action="/search" onsubmit="" target="" id="gbqf" name="gbqf"
                                      method="get" >

                                    <fieldset class="gbqff gb_i" id="gbqff">
                                        <div id=gbfwa class="gbqfwa ">
                                            <div id=gbqfqw class=gbqfqw>
                                                <div id=gbqfqwb class=gbqfqwc>
                                                    <input id=searchbar class=gbqfif name=q type=text value="">
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <div class="gb_i gb_9b" id="gbqfbw">
                                        <button class="gbqfb" aria-label="Поиск в iioogle" name="" id="gbqfb">
                                            <span class="gbqfi gb_Ta"></span>
                                        </button>
                                    </div>

                                    <div class="jsb" id="gbqfbwa">
                                        <button class="gbqfba" aria-label="Поиск в iioogle" name="" id="gbqfba" >
                                            <span id="gbqfsa">Поиск в Ioogle</span>
                                        </button>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="gbw"></div>
        </div>
        <div id="gba"></div>
    </div>

    <div class="content" data-jiis="cc" id="main">
        <span class="ctr-p" data-jiis="bp" id="body">
            <center>
                <div style="height:231px;margin-top:20px" id="lga">
                    <div style="padding-top:52px">
                        <div style="background:url(/images/logo.png) no-repeat;height:150px;width:145px"
                             title="IIoogle logo" align="left" id="hplogo" onload="window.lol&&lol()">
                            <div style="color:#0783C7;
                                        font-size:16px;
                                        font-weight:bold;
                                        position:relative;
                                        top:130px">
                                Интерактивная Ииссиидиология
                            </div>
                        </div>
                    </div>
                </div>
                <div style="height:102px"></div>

            </center>
        </span>
    </div>

    <style>.gb_e .gbqfi::before {
        left: -56px;
        top: -35px
    }

    .gb_E .gbqfb:focus .gbqfi {
        outline: 1px dotted #fff
    }

    @-moz-keyframes gb__a {
        0% {
            opacity: 0
        }
        50% {
            opacity: 1
        }
    }

    @keyframes gb__a {
        0% {
            opacity: 0
        }
        50% {
            opacity: 1
        }
    }

    #gb#gb a.gb_f, #gb#gb a.gb_g {
        color: #404040;
        text-decoration: none
    }

    #gb#gb a.gb_g:hover, #gb#gb a.gb_g:focus {
        color: #000;
        text-decoration: underline
    }

    .gb_h.gb_i {
        display: none;
        padding-left: 15px;
        vertical-align: middle
    }

    .gb_h.gb_i:first-child {
        padding-left: 0
    }

    .gb_j.gb_i {
        display: inline-block;
        flex: 0 1 auto;
        flex: 0 1 main-size;
        display: -webkit-flex;
        display: flex
    }

    .gb_k .gb_j {
        display: none
    }

    .gb_h .gb_g {
        display: inline-block;
        line-height: 24px;
        outline: none;
        vertical-align: middle
    }

    .gb_j .gb_g {
        min-width: 60px;
        overflow: hidden;
        flex: 0 1 auto;
        flex: 0 1 main-size;
        text-overflow: ellipsis
    }

    .gb_l .gb_j .gb_g {
        min-width: 0
    }

    .gb_m .gb_j .gb_g {
        width: 0 !important
    }

    .gb_n .gb_g {
        font-weight: bold;
        text-shadow: 0 1px 1px rgba(255, 255, 255, .9)
    }

    .gb_o .gb_g {
        font-weight: bold;
        text-shadow: 0 1px 1px rgba(0, 0, 0, .6)
    }

    #gb#gb.gb_o a.gb_g {
        color: #fff
    }

    .gb_C .gb_D {
        background-position: -326px -52px;
        opacity: .55
    }

    .gb_n .gb_C .gb_D {
        background-position: -97px -57px;
        opacity: .7
    }

    .gb_o .gb_C .gb_D {
        background-position: -214px 0;
        opacity: 1
    }

    .gb_Qc {
        left: 0;
        min-width: 1152px;
        position: absolute;
        top: 0;
        -moz-user-select: -moz-none;
        width: 100%
    }

    .gb_Xb {
        font: 13px/27px Arial, sans-serif;
        position: relative;
        height: 60px;
        width: 100%
    }

    .gb_ba .gb_Xb {
        height: 28px
    }

    #gba {
        height: 60px
    }

    #gba.gb_ba {
        height: 28px
    }

    #gba.gb_Rc {
        height: 90px
    }

    #gba.gb_Rc.gb_ba {
        height: 58px
    }

    .gb_Xb > .gb_i {
        height: 60px;
        line-height: 58px;
        vertical-align: middle
    }

    .gb_ba .gb_Xb > .gb_i {
        height: 28px;
        line-height: 26px
    }

    .gb_Xb::before {
        background: #e5e5e5;
        bottom: 0;
        content: '';
        display: none;
        height: 1px;
        left: 0;
        position: absolute;
        right: 0
    }

    .gb_Xb {
        background: #f1f1f1
    }

    .gb_Sc .gb_Xb {
        background: #fff
    }

    .gb_Sc .gb_Xb::before, .gb_ba .gb_Xb::before {
        display: none
    }

    .gb_n .gb_Xb, .gb_o .gb_Xb, .gb_ba .gb_Xb {
        background: transparent
    }

    .gb_n .gb_Xb::before {
        background: #e1e1e1;
        background: rgba(0, 0, 0, .12)
    }

    .gb_o .gb_Xb::before {
        background: #333;
        background: rgba(255, 255, 255, .2)
    }

    .gb_i {
        display: inline-block;
        flex: 0 0 auto;
        flex: 0 0 main-size
    }

    .gb_i.gb_Tc {
        float: right;
        order: 1
    }

    .gb_Uc {
        white-space: nowrap;
        display: -webkit-flex;
        display: flex;
        margin-left: 0 !important;
        margin-right: 0 !important
    }

    .gb_i {
        margin-left: 0 !important;
        margin-right: 0 !important
    }

    .gb_Ta {
        background-image: url('//ssl.gstatic.com/gb/images/i1_71651352.png');
        -moz-background-size: 356px 144px;
        background-size: 356px 144px
    }

    @media (min-resolution: 1.25dppx),(-webkit-min-device-pixel-ratio: 1.25),(min-device-pixel-ratio: 1.25) {
        .gb_Ta {
            background-image: url('//ssl.gstatic.com/gb/images/i2_9ef0f6fa.png')
        }
    }

    .gb_kb:first-child, #gbsfw:first-child + .gb_kb {
        padding-left: 0
    }

    #gb#gb a.gb_D {
        color: #404040;
        cursor: default;
        text-decoration: none
    }

    #gb#gb a.gb_D:hover, #gb#gb a.gb_D:focus {
        color: #000
    }

    .gb_kb.gb_La .gb_ja, .gb_kb.gb_La .gb_ka, .gb_kb.gb_La .gb_H {
        display: block
    }

    .gb_ba .gb_ja, .gb_ba .gb_ka, .gb_ba .gb_H {
        margin-top: -10px
    }

    .gb_8:not(.gb_e) .gb_7::before, .gb_8:not(.gb_e) .gb_9::before {
        content: none
    }

    .gb_ba .gb_aa, .gb_ba .gb_ca {
        line-height: 26px
    }

    #gb#gb.gb_ba a.gb_aa, .gb_ba .gb_ca {
        color: #666;
        font-size: 11px;
        height: auto
    }

    #gb#gb.gb_ba a.gb_aa:hover, #gb#gb.gb_ba a.gb_aa:focus {
        color: #000
    }

    .gb_ba .gb_da {
        border-top-color: #999
    }

    .gb_ea:hover .gb_da {
        border-top-color: #000
    }

    .gb_n .gb_aa {
        font-weight: bold;
        text-shadow: 0 1px 1px rgba(255, 255, 255, .9)
    }

    .gb_o .gb_aa {
        font-weight: bold;
        text-shadow: 0 1px 1px rgba(0, 0, 0, .6)
    }

    #gb#gb.gb_o.gb_o a.gb_aa {
        color: #fff
    }

    .gb_o.gb_o .gb_da {
        border-top-color: #fff
    }

    .gb_n .gb_7, .gb_o .gb_7 {
        -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
        box-shadow: 0 1px 2px rgba(0, 0, 0, .2)
    }

    .gb_n .gb_7:hover, .gb_o .gb_7:hover, .gb_n .gb_7:focus, .gb_o .gb_7:focus {
        -moz-box-shadow: 0 1px 0 rgba(0, 0, 0, .15), 0 1px 2px rgba(0, 0, 0, .2);
        box-shadow: 0 1px 0 rgba(0, 0, 0, .15), 0 1px 2px rgba(0, 0, 0, .2)
    }

    .gb_fa .gb_ga, .gb_ha .gb_ga {
        position: absolute;
        right: 1px
    }

    .gb_ga.gb_i, .gb_ia.gb_i, .gb_ea.gb_i {
        flex: 0 1 auto;
        flex: 0 1 main-size
    }

    .gb_8.gb_m .gb_aa {
        width: 30px !important
    }

    .gb_e .gb_C .gb_D::before {
        left: -326px;
        top: -52px
    }

    .gb_e.gb_n .gb_C .gb_D::before {
        left: -97px;
        top: -57px
    }

    .gb_e.gb_o .gb_C .gb_D::before {
        left: -214px;
        top: 0
    }

    .gb_E .gb_F {
        position: relative
    }

    .gb_e .gb_Ra .gb_Ta::before {
        left: 0;
        top: -105px
    }

    .gb_e.gb_o .gb_Ra .gb_Ta::before {
        left: -97px;
        top: -92px
    }

    .gb_e.gb_n .gb_Ra .gb_Ta::before {
        left: -97px;
        top: 0
    }

    .gb_e .gb_Ua {
        background-image: none !important
    }

    .gb_e .gb_Va {
        visibility: visible
    }

    .gb_E .gb_Wa span {
        background: transparent
    }

    .gb_e .gb_0a::before {
        left: -56px;
        top: 0
    }

    .gb_e .gb_1a .gb_0a::before {
        left: -291px;
        top: -103px
    }

    .gb_e.gb_n .gb_D .gb_0a::before {
        left: -167px;
        top: -57px
    }

    .gb_e.gb_n .gb_1a .gb_0a::before {
        left: -132px;
        top: -57px
    }

    .gb_e.gb_o .gb_D .gb_0a::before {
        left: -326px;
        top: -87px
    }

    .gb_e.gb_o .gb_1a .gb_0a::before {
        left: 0;
        top: -70px
    }

    .gb_E .gb_8a {
        border: 1px solid #fff;
        color: #fff
    }

    .gb_E.gb_n .gb_8a {
        border-color: #000;
        color: #000
    }

    .gb_e .gb_8a.gb_9a::before, .gb_E.gb_e.gb_o .gb_8a.gb_9a::before {
        left: -214px;
        top: -117px
    }

    .gb_e .gb_8a.gb_ab::before, .gb_E.gb_e.gb_o .gb_8a.gb_ab::before {
        left: -256px;
        top: -73px
    }

    .gb_e.gb_o .gb_8a.gb_9a::before, .gb_E.gb_e.gb_n .gb_8a.gb_9a::before {
        left: -326px;
        top: -122px
    }

    .gb_e.gb_o .gb_8a.gb_ab::before, .gb_E.gb_e.gb_n .gb_8a.gb_ab::before {
        left: -214px;
        top: -92px
    }

    .gb_fb {
        display: inline-block;
        padding: 16px 16px 16px 0;
        vertical-align: top;
        white-space: normal
    }

    .gb_cb ~ .gb_fb {
        margin-right: 88px
    }

    .gb_fb:first-child {
        padding-left: 16px
    }

    #gb#gb .gb_db .gb_ib {
        color: #427fed;
        text-decoration: none
    }

    #gb#gb .gb_db .gb_ib:hover {
        text-decoration: underline
    }

    .gb_db .gb_eb {
        background-position: -256px 0;
        cursor: pointer;
        opacity: .27;
        outline: none;
        position: absolute;
        right: 4px;
        top: 4px;
        height: 12px;
        width: 12px
    }

    .gb_db .gb_eb:hover {
        opacity: .55
    }

    .gb_lb .gb_H {
        padding: 26px 26px 22px 13px;
        background: #ffffff
    }

    .gb_mb.gb_lb .gb_H {
        background: #4d90fe
    }

    a.gb_nb {
        color: #666666 !important;
        font-size: 22px;
        height: 9px;
        opacity: .8;
        position: absolute;
        right: 14px;
        top: 4px;
        text-decoration: none !important;
        width: 9px
    }

    .gb_mb a.gb_nb {
        color: #c1d1f4 !important
    }

    a.gb_nb:hover, a.gb_nb:active {
        opacity: 1
    }

    .gb_mb .gb_ob {
        width: 200px
    }

    .gb_mb .gb_pb {
        color: #ffffff
    }

    .gb_mb .gb_qb {
        color: #ffffff
    }

    #gb .gb_lb {
        margin: 0
    }

    .gb_lb .gb_Z {
        background: #4d90fe;
        border-color: #3079ed;
        margin-top: 15px
    }

    #gb .gb_lb a.gb_Z.gb_Z {
        color: #ffffff
    }

    .gb_lb .gb_Z:hover {
        background: #357ae8;
        border-color: #2f5bb7
    }

    .gb_sb .gb_Za .gb_ja {
        border-bottom-color: #ffffff;
        display: block
    }

    .gb_tb .gb_Za .gb_ja {
        border-bottom-color: #4d90fe;
        display: block
    }

    .gb_sb .gb_Za .gb_ka, .gb_tb .gb_Za .gb_ka {
        display: block
    }

    .gb_wb .gb_xb {
        margin-right: 5px
    }

    .gb_wb .gb_yb {
        color: red
    }


    .gb_zb .gb_eb {
        color: #ffffff;
        cursor: default;
        font-size: 22px;
        font-weight: normal;
        position: absolute;
        right: 12px;
        top: 5px
    }

    .gb_zb .gb_ib, .gb_zb .gb_Ab {
        color: #ffffff;
        display: inline-block;
        font-size: 11px;
        margin-left: 16px;
        padding: 0 8px;
        white-space: nowrap
    }

    .gb_e .gb_cb::before {
        display: inline-block;
        -moz-transform: scale(.5);
        transform: scale(.5);
        -moz-transform-origin: 0 0;
        transform-origin: 0 0
    }

    .gb_e .gb_db .gb_eb {
        position: absolute
    }

    .gb_e .gb_db .gb_eb::before {
        left: -256px;
        top: 0
    }

    .gb_e .gb_Tb .gb_D::before {
        left: -326px;
        top: -17px
    }

    .gb_e.gb_n .gb_Tb .gb_D::before {
        left: -256px;
        top: -103px
    }

    .gb_e.gb_o .gb_Tb .gb_D::before {
        left: 0;
        top: -35px
    }

    .gb_E .gb_ka {
        border: 0;
        border-left: 1px solid rgba(0, 0, 0, .2);
        border-top: 1px solid rgba(0, 0, 0, .2);
        height: 14px;
        width: 14px;
        -moz-transform: rotate(45deg);
        transform: rotate(45deg)
    }

    .gb_E .gb_ja {
        border: 0;
        border-left: 1px solid rgba(0, 0, 0, .2);
        border-top: 1px solid rgba(0, 0, 0, .2);
        height: 14px;
        width: 14px;
        -moz-transform: rotate(45deg);
        transform: rotate(45deg);
        border-color: #fff;
        background: #fff
    }

    .gb_e .gb_Lc::before {
        clip: rect(0 51px 16px 35px);
        left: -13px;
        top: 22px
    }


    .gb_e .gb_Ta.gb_Mc {
        position: absolute
    }

    .gb_e .gb_Mc::before {
        clip: rect(17px 307px 33px 291px);
        left: -261px;
        top: 5px
    }

    .gb_e .gb_fa .gb_Lc::before {
        left: -5px
    }

    .gb_e .gb_Mc::before {
        clip: rect(34px 614px 66px 582px)
    }

    }

    .gb_e .gb_Ta, .gb_e .gbii, .gb_e .gbip {
        background-image: none;
        overflow: hidden;
        position: relative
    }

    .gb_e .gb_Ta::before {
        content: url('//ssl.gstatic.com/gb/images/i1_71651352.png');
        position: absolute
    }

    @media (min-resolution: 1.25dppx),(-webkit-min-device-pixel-ratio: 1.25),(min-device-pixel-ratio: 1.25) {
        .gb_e .gb_Ta::before {
            content: url('//ssl.gstatic.com/gb/images/i2_9ef0f6fa.png');
            -moz-transform: scale(.5);
            transform: scale(.5);
            -moz-transform-origin: 0 0;
            transform-origin: 0 0
        }
    }

    .gb_E a:focus {
        outline: 1px dotted #fff !important
    }

    </style>

    <script>
        $(document).ready(function() {

            $('#searchbar').autocomplete({
                serviceUrl: '${pageContext.request.contextPath}/getTags',
                paramName: "tagName",
                delimiter: ",",
                transformResult: function(response) {

                    return {
                        //must convert json to javascript object before process
                        suggestions: $.map($.parseJSON(response), function(item) {
                            return { value: item.tagName, data: item.id };
                        })
                    };
                }
            });
        });
    </script>

</div>
</body>
</html>