<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023/9/15/015
  Time: 8:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="Styles/base.css" />
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css" />
    <link rel="stylesheet" type="text/css" href="Styles/bootstrap.min.css" />
    <script type="text/javascript" src="Scripts/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="Scripts/jquery.spritely-0.6.js"></script>
    <!-- <script type="text/javascript" src="Scripts/chur.min.js"></script> -->
    <link rel="stylesheet" type="text/css" href="Styles/login.css" />
</head>
<script type="text/javascript">
    $(function () {
        $('.login').click(function () {
            if ($('#uid').val() == "" || $('#pwd').val() == "" || $('#code').val() == "") {
                $('.tip').html('用户名或密码不可为空！')
                return false;
            }
        })
    })
</script>
<script type="text/javascript">
    function reg(){
        var url="register.jsp";
        window.open(url,"用户注册","height=500,width=1000");
    }
</script>
<body>
<form action="/login.do" method="post">
    <div class="row-fluid">
        <h1>保险业务管理系统</h1>
        <p>
            <label>帐&nbsp;&nbsp;&nbsp;号：<input name="username" type="text" id="uid" value="admin" /></label>
        </p>
        <p>
            <label>密&nbsp;&nbsp;&nbsp;码：<input name="password" type="password" id="pwd" value="admin" /></label>
        </p>
        <hr />
        <input type="submit" value=" 登 录 " class="btn btn-primary btn-large login" />
        &nbsp;&nbsp;&nbsp;<input type="button" onclick="reg()" value=" 注 册 " class="btn btn-large" />
        <br/>
    </div>
</form>
</body>
</html>
