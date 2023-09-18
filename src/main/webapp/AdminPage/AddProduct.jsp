<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="com.InsuranceBusiness.model.*"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
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
	<script language="javascript">
	$(function(){
		$("#audit").click(function(){
			if($("#na").val() =="" ||$("#na").val() ==null){
				alert("请填写保险名称！")
				return false
			} else if($("#de").val() =="" ||$("#de").val() ==null){
				alert("请填写保险内容！")
				return false
			} else if($("#co").val() =="" ||$("#co").val() ==null){
				alert("请填写保险费用！")
				return false
			} else{
				alert("新增成功！")
			}
	    })
	})
	</script>
  </head>
  <body>
    <div class="alert alert-info" style="width:100%;">当前位置<b class="tip"></b>新增保险</div>
    <form action="AddProduct" method="post" name="myForm">
	<table class="tbform list">
        <tbody>
        	<tr>
            	<td>保险名称：<input type="text" id="na" name="productlist.product_name"/></td>
            	<td>保险费用：<input type="text" id="co" name="productlist.product_cost"/>元</td>
            </tr>
            <tr>
            	<td colspan="2">保险内容：</td>
            </tr>
            <table class="tbform list">
            <tr>
            	<textarea style="width:100%;height:111px;padding-left:10px;word-break:break-all;" id="de" name="productlist.product_desc"></textarea>
            </tr>
            <tr>
            	<td>
					<input id="audit" type="submit" class="btn btn-mini btn-danger" value="新增"/>
            	</td>
            </tr>
            </table>
        </tbody>
    </table>
    </form>
	</body>
</html>
