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
			if($("#up").val() =="" ||$("#up").val() ==null){
				alert("请填写密码！")
				return false
			} else if($("#ua").val() =="" ||$("#ua").val() ==null){
				alert("请填写姓名！")
				return false
			} else{
				alert("修改成功！")
			}
	    })
	})
	</script>
  </head>
  <body>
    <div class="alert alert-info" style="width:100%;">当前位置<b class="tip"></b>修改个人信息</div>
    <form action="UpdateUserByMe" method="post" name="myForm">
    <table class="tb" id="list">
        <tbody>
            <tr>
                <th>帐号</th>
                <th>密码</th>
                <th>姓名</th>
                <th>性别</th>
                <th>年龄</th>
                <th>电话</th>
                <th>联系地址</th>
                <th>操作</th>
            </tr>
           		<tr class="demo">	
           		<td>
           			<%=user.getUsername() %>
           			<input type="hidden" id="updd" name="userlist.username" value="<%=user.getUsername() %>"/>
           		</td>
           		<td>
           			<input type="text" id="up" name="userlist.password" value="<%=user.getPassword() %>"/>
               	</td>
           		<td>
           			<input type="text" id="ua" name="userlist.name" value="<%=user.getName() %>"/>
               	</td>
               	<td>
              		<select name="userlist.sex">
              			<%if("男".equals(user.getSex())){ %>
              			<option value="男" selected="selected">男</option>
              			<option value="女">女</option>
              			<%}else{ %>
              			<option value="男">男</option>
              			<option value="女" selected="selected">女</option>
              			<%} %>
              		</select>
               	</td>
               	<td>
              		<input name="userlist.age" type="text" value="<%=user.getAge() %>"/>
               	</td>
               	<td>
              		<input name="userlist.phone" type="text" value="<%=user.getPhone() %>"/>
               	</td>
               	<td>
              		<input name="userlist.address" type="text" value="<%=user.getAddress() %>"/>
               	</td>
               	<td>
               		<input type="hidden" name="userlist.user_id" value="<%=user.getUser_id() %>">
               		<input type="hidden" name="userlist.type" value="<%=user.getType() %>">
               		<input id="audit" type="submit" class="btn btn-mini btn-danger" value="确认"/>
               	</td>
               	</tr>
        </tbody>
    </table>
    </form>
  </body>
</html>
