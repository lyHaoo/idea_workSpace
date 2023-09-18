<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023/9/15/015
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css" />
    <link rel="stylesheet" type="text/css" href="Styles/base.css"/>
    <script type="text/javascript" src="Scripts/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui-1.8.22.custom.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css" />
    <link rel="stylesheet" type="text/css" href="Styles/formui.css"/>
    <script type="text/javascript" src="Scripts/tb.js"></script>
    <script type="text/javascript" src="laydate/laydate.js"></script>
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

</head>

<body>
<div class="alert alert-info" style="width:100%;">当前位置<b class="tip"></b>保险列表</div>
<form action="addProduct.jsp" method="post" name="myForm">
    <input type="submit" class="btn btn-mini btn-danger" value="新增保险" style="height:30px;font-size: 15px"/><br/><br/>
</form>
<table class="tbform list">
    <tbody>
    <tr>
        <td>保险名称：</td>
        <td>保险费用：元</td>
    </tr>
    <tr>
        <td colspan="2">发布时间：</td>
    </tr>
    <tr>
        <td colspan="2">保险内容：</td>
    </tr>
    <table class="tbform list">
        <tr>
            <textarea disabled="disabled" style="width:100%;height:111px;padding-left:10px;word-break:break-all;" id="di" name="crowdfundinglist.crowdfunding_content"></textarea>
        </tr>
        <tr>
            <td>
                <a href="DelProduct!delProduct?pid=" class="btn btn-mini btn-danger" >删除</a>
            </td>
        </tr>
    </table>
    </tbody>
</table>
<br/>
</body>
</html>
