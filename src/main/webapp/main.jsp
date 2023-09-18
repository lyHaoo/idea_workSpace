<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023/9/15/015
  Time: 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>保险业务管理系统</title>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css" />
    <link rel="stylesheet" type="text/css" href="Styles/base.css" />
    <link rel="stylesheet" type="text/css" href="Styles/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css" />
    <script type="text/javascript" src="Scripts/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui-1.8.22.custom.min.js"></script>
    <script type="text/javascript" src="Scripts/index.js"></script>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>
<body>
<div class="warp">
    <!--左边菜单开始-->
    <!--管理员-->
    <h1 style="text-align:center;">保险业务管理系统</h1>
    <div class="left_c left">
        <h1 align="center">欢迎您！&nbsp;&nbsp;&nbsp;&nbsp;<a href="UserExit!userLogout" dir="rtl" style="font-size: 10px;" >退出</a></h1>
        <div class="acc">
            <div>
                <a class="one">保险信息管理</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="selproductlist.jsp">保险111列表</a></li>
                </ul>
            </div>
            <div>
                <a class="one">订单信息管理</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="SelOrderList!selOrderList">订单列表</a></li>
                </ul>
            </div>
            <div>
                <a class="one">赔偿信息管理</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="SelCompensateList!selCompensateList">赔偿申请列表</a></li>
                </ul>
            </div>
            <div>
                <a class="one">用户管理</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="SelUserList!selUserList">用户列表</a></li>
                </ul>
            </div>
        </div>
    </div>

    <!--左边菜单结束-->
    <!--右边框架开始-->
    <div class="right_c">
        <div class="nav-tip" onclick="javascript:void(0)">&nbsp;</div>

    </div>
    <div class="Conframe">
        <%--<iframe name="Conframe" id="Conframe" src="SelUserList!selUserList"></iframe>--%>
    </div>
    <!--右边框架结束-->

    <!--底部开始-->
    <div class="bottom_c">保险业务管理系统</div>
    <!--底部结束-->
</div>
<div class="warp">
    <!--左边菜单开始-->
    <!--用户-->
    <h1 style="text-align:center;">保险业务管理系统</h1>
    <div class="left_c left">
        <h1 align="center">欢迎您！${u.username} &nbsp;&nbsp;&nbsp;&nbsp;<a href="UserExit!userLogout" dir="rtl" style="font-size: 10px;" >退出</a></h1>
        <div class="acc">
            <div>
                <a class="one">保险信息</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="selproductlist.jsp">保险列表</a></li>
                </ul>
            </div>
            <div>
                <a class="one">订单信息</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="SelOrderListByMe!selOrderListByMe">个人订单列表</a></li>
                </ul>
            </div><div>
            <a class="one">赔偿信息</a>
            <ul class="kid">
                <li><b class="tip"></b><a target="Conframe" href="SelCompensateListByMe!selCompensateListByMe">个人申请赔偿列表</a></li>
            </ul>
        </div>
            <div>
                <a class="one">个人信息管理</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="SelUserByMe!selUserByMe">修改个人信息</a></li>
                </ul>
            </div>
        </div>
    </div>

    <!--左边菜单结束-->
    <!--右边框架开始-->
    <div class="right_c">
        <div class="nav-tip" onclick="javascript:void(0)">&nbsp;</div>

    </div>
    <div class="Conframe">
        <iframe name="Conframe" id="Conframe" src="SelProductListByMe!selProductList"></iframe>
    </div>
    <!--右边框架结束-->

    <!--底部开始-->
    <div class="bottom_c">保险业务管理系统</div>
    <!--底部结束-->
</div>
</body>
</html>