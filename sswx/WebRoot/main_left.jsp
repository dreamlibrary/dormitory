<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main_left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	

  </head>
  
  <body>
    	<a href="page/wxsq.jsp" target="main_right">维修申请</a> <br>
    	<a href="RepairQuery" target="main_right">维修查询</a> <br>
    	<a href="page/wxcl.jsp" target="main_right">维修处理</a> <br>
    	<a href="page/announcement.jsp" target="main_right">发布公告</a> <br>
    	<a href="exit.jsp" target="_top">退出</a> <br>
    	
  </body>
</html>
