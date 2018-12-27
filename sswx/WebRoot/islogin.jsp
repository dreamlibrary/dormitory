<%@page import="user.UserTable" %>
<%@page import="service.UserService" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
UserTable user=(UserTable)session.getAttribute("user");
if(user==null){
	%>
	<jsp:forward page="index.jsp"></jsp:forward>
	<%
}
%>

