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
		
		<script language="javascript">
            function closeOpen()
		    {
		       window.returnValue=false;
		       window.close();
		    }
        </script>
        <script language="javascript">
		$(function(){
			$("#audit").click(function(){
				if($("#uu").val() =="" ||$("#uu").val() ==null){
					alert("请填写用户名！")
					return false
				} else if($("#up").val() =="" ||$("#up").val() ==null){
					alert("请填写密码！")
					return false
				} else if($("#un").val() =="" ||$("#un").val() ==null){
					alert("请填写姓名！")
					return false
				} else if($("#age").val() =="" ||$("#age").val() ==null){
					alert("请填写年龄！")
					return false
				} else if($("#uph").val() =="" ||$("#uph").val() ==null){
					alert("请填写电话！")
					return false
				} else if($("#add").val() =="" ||$("#add").val() ==null){
					alert("请填写地址！")
					return false
				}
		    })
		})
		</script>
	</head>
	<body>
		<form action="Regist" name="form1" method="post">
			<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
				<tr>
					<th height="40" colspan="2" bgcolor="#FFFFFF" class="f12b-red" style="font-size: 11px;">
						用 户 注 册
					</th>
				</tr>
				<tr>
					<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
						用户名：
					</td>
					<td width="80%" bgcolor="#FFFFFF">
						&nbsp;
						<input id="uu" type="text" name="userlist.username" id="userName"/>
					</td>
				</tr>
				<tr>
					<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
						密 码：
					</td>
					<td bgcolor="#FFFFFF">
						&nbsp;
						<input id="up" type="password" name="userlist.password"/>
					</td>
				</tr>
				<tr>
					<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
						姓名：
					</td>
					<td bgcolor="#FFFFFF">
						&nbsp;
						<input id="un" type="text" name="userlist.name"/>
					</td>
				</tr>
				<tr>
					<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
						性别：
					</td>
					<td bgcolor="#FFFFFF">
						&nbsp;
						<input id="us" type="radio" name="userlist.sex" value="男" checked="checked"/>男
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input id="us" type="radio" name="userlist.sex" value="女"/>女
					</td>
				</tr>
				<tr>
					<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
						年龄：
					</td>
					<td bgcolor="#FFFFFF">
						&nbsp;
						<input id="age" type="text" name="userlist.age"/>
					</td>
				</tr>
				<tr>
					<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
						电话：
					</td>
					<td bgcolor="#FFFFFF">
						&nbsp;
						<input id="uph" type="text" name="userlist.phone"/>
					</td>
				</tr>
				<tr>
					<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
						联系地址：
					</td>
					<td bgcolor="#FFFFFF">
						&nbsp;
						<input id="add" type="text" name="userlist.address"/>
					</td>
				</tr>
				<tr>
					<td height="30" align="right" bgcolor="#F9F9F9">
						&nbsp;
					</td>
					<td bgcolor="#FFFFFF">
						&nbsp;
						<input type="submit" id="audit" value="确定" />
						<input type="button" value="取消" onclick="closeOpen()"/>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
