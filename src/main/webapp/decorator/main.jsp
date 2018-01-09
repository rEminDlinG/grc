<%@ page language="java" pageEncoding="UTF-8" %>
<c:set var="serverUrl" value="${pageContext.request.scheme}${'://'}${pageContext.request.serverName}${':'}${pageContext.request.serverPort}${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <!-- Standard Meta -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <!-- Site Properties -->
    <title><sitemesh:write property='title'/></title>

    <link rel="icon" href="./images/favicon.ico" mce_href="./images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="./css/semantic.css">
    <link rel="stylesheet" type="text/css" href="./css/app.css">

    <script src="./js/jquery-3.2.1.min.js" ></script>
    <script src="./js/semantic.js" ></script>
    <script src="./js/docs.js" ></script>

    <style type="text/css">
        body {
            background-color: #FFFFFF;
        }
        .ui.menu .item img.logo {
            margin-right: 1.5em;
        }
        .main.container {
            margin-top: 7em;
        }
        .wireframe {
            margin-top: 2em;
        }
        .ui.footer.segment {
            margin: 5em 0em 0em;
            padding: 5em 0em;
        }

        .app_left_menu {
            width: 17rem;
            display: inline;
        }

        .app_content{
            width: calc(100% - 18rem);
        }

        .ui.vertical.menu {
            width: 15rem;
            margin-left: 1.0rem;
            margin-right: 1.0rem;
        }
    </style>
    <sitemesh:write property='head'/>
</head>
<body>
<div class="ui fixed inverted menu">
    <div class="ui container">
        <a href="#" class="header item">
            <img class="logo" src="./images/CG_logo_120.png">
            长光卫星 - 地面资源中心
        </a>
        <a href="today" class="item">今日计划</a>
        <a href="userRequest-list" class="item">用户需求</a>
        <a href="#" class="item">观测任务</a>
        <a href="#" class="item">数传计划</a>
        <a href="#" class="item">遥测计划</a>
        <a href="user-list" class="item">用户列表</a>
        <div class="ui simple dropdown item">
            Dropdown <i class="dropdown icon"></i>
            <div class="menu">
                <a class="item" href="#">Link Item</a>
                <a class="item" href="#">Link Item</a>
                <div class="divider"></div>
                <div class="header">Header Item</div>
                <div class="item">
                    <i class="dropdown icon"></i>
                    Sub Menu
                    <div class="menu">
                        <a class="item" href="#">Link Item</a>
                        <a class="item" href="#">Link Item</a>
                    </div>
                </div>
                <a class="item" href="#">Link Item</a>
            </div>
        </div>
    </div>
</div>
<div class="ui main container" style="min-height: 680px">
    <div class="ui grid">
        <div class="app_left_menu">
            <div class="ui vertical menu">
                <div class="item">
                    <div class="header">User Requirements</div>
                    <div class="menu">
                        <a class="item" href="userRequest-list" >全部需求</a>
                        <a class="item">我的需求</a>
                        <a class="item" href="userRequest-submit">新建需求</a>
                    </div>
                </div>
                <div class="item">
                    <div class="header">Imaging Tasks</div>
                    <div class="menu">
                        <a class="item">拍摄任务</a>
                        <a class="item">More</a>
                    </div>
                </div>
                <div class="item">
                    <div class="header">Receiving Plan</div>
                    <div class="menu">
                        <a class="item">跟踪接收计划</a>
                        <a class="item">More</a>
                    </div>
                </div>
                <div class="item">
                    <div class="header">Telemetry Plan</div>
                    <div class="menu">
                        <a class="item">遥测计划</a>
                        <a class="item">More</a>
                    </div>
                </div>
                <div class="item">
                    <div class="header">User List</div>
                    <div class="menu">
                        <a class="item" href="user-list">用户列表</a>
                        <a class="item">More</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="app_content">
            <sitemesh:write property='body'/>
        </div>
    </div>
</div>

</body>
</html>
