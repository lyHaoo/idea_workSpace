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
  	List<OrderList> olist = (List<OrderList>)session.getAttribute("olist");
  	int i = 1;
  %>
  <body>
    <div class="alert alert-info" style="width:100%;">当前位置<b class="tip"></b>个人订单列表</div>
    <table class="tb" id="list">
        <tbody>
            <tr>
                <th>订单名称</th>
                <th>订单金额</th>
                <th>订单时间</th>
                <th>订单人</th>
                <th>订单状态</th>
                <th>操作</th>
            </tr>
            	<%if(olist != null){
            		if(!olist.isEmpty()){
            			for(OrderList ol : olist){ 
            				i++;
            			%>
            		<tr class="demo">	
            		<td>
            			<%=ol.getOrder_name() %>
            		</td>
            		<td>
               			<%=ol.getOrder_cost() %>
                	</td>
                	<td>
               			<%=ol.getOrder_time() %>
                	</td>
                	<td>
               			<%=ol.getOrder_uname() %>
                	</td>
                	<td>
                	<%if("0".equals(ol.getOrder_state())){ %>
                		订单未确认
                	<%}else{ %>
                		订单已完成
                	<%} %>	
                	</td>
                	<td>
                	<%if("0".equals(ol.getOrder_state())){ %>
                		<a href="QrOrder!qrOrder?oid=<%=ol.getOrder_id() %>&pid=<%="" %>" class="btn btn-mini btn-danger" >确认支付</a>/
                		<a href="DelOrder!delOrder?oid=<%=ol.getOrder_id() %>&pid=<%="" %>" class="btn btn-mini btn-danger" >取消订单</a>
                	<%}else{ %>
                		订单已完成
                	<%} %>	
                	</td>
                	</tr>
            	<%		}
              		}
              	}
            	%>	
        </tbody>
    </table>
  </body>
</html>
