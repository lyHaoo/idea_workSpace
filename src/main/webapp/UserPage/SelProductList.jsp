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
	
  </head>
  <%
	List<ProductList> plist = (List<ProductList>)session.getAttribute("plist");
  %>
  <body>
    <div class="alert alert-info" style="width:100%;">当前位置<b class="tip"></b>保险列表</div>
    <%if(plist != null){
            		if(!plist.isEmpty()){
            			for(ProductList pl : plist){ %>
	<table class="tbform list">
        <tbody>
        	<tr>
            	<td>保险名称：<%=pl.getProduct_name() %></td>
            	<td>保险费用：<%=pl.getProduct_cost() %>元</td>
            </tr>
            <tr>
            	<td colspan="2">发布时间：<%=pl.getProduct_time() %></td>
            </tr>
            <tr>
            	<td colspan="2">保险内容：</td>
            </tr>
            <table class="tbform list">
            <tr>
            	<textarea disabled="disabled" style="width:100%;height:111px;padding-left:10px;word-break:break-all;" id="di" name="crowdfundinglist.crowdfunding_content"><%=pl.getProduct_desc() %></textarea>
            </tr>
            <tr>
            	<td>
                	<a href="AddOrder!addOrder?pid=<%=pl.getProduct_id() %>&pname=<%=pl.getProduct_name() %>&pcost=<%=pl.getProduct_cost() %>" class="btn btn-mini btn-danger" >购买</a>
            	</td>
            </tr>
            </table>
        </tbody>
    </table>
    <br/>
	<%		}
              		}
              	}
            	%>
  </body>
</html>
