<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<jsp:include page="islogin.jsp"></jsp:include>
    	<frameset rows="15%,*" frameborder="yes" border="1" framespacing="1">
    		<frame src="top.jsp">
    		<frameset cols="15%,*">
    			<frame src="main_left.jsp">
    			<frame src="main_right.jsp" name ="main_right">
    		</frameset>
    	</frameset>
  </head>
  
  <body>

    	
  </body>
</html>
