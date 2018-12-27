<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'validate.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<jsp:include page="islogin.jsp"></jsp:include>

  </head>
  
  <body>
    <jsp:useBean id="user" class="user.UserTable"></jsp:useBean>
    <jsp:useBean id="UserService" class="service.UserService"></jsp:useBean>
    
    <jsp:setProperty property="*" name="user"/>
    
    
    <%
    	if(UserService.valiUser(user)){
    		session.setAttribute("user", user);
    		
    		%>
    		<jsp:forward page="main.jsp"></jsp:forward>
    		<%
    	}else{
    		%>
    		<jsp:forward page="index.jsp"></jsp:forward>
    		<%
    	}
     %>
    <br>
    
  </body>
</html>
